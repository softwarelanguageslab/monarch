(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7402 #t)) g7402)))
    (meta (lambda (v) (letrec* ((g7403 v)) g7403)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7404
          (letrec*
           ((g7405
             (letrec*
              ((x-e7406 lst))
              (letrec*
               ((v1742 x-e7406))
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
                   ((x-cnd7407
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7407
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
           g7405)))
        g7404)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7408 (lambda (v) (letrec* ((g7409 v)) g7409)))) g7408)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7410
          (letrec*
           ((x7411 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7411)))))
        g7410))))
   (letrec*
    ((g7412
      (letrec*
       ((g7413
         (letrec*
          ((>=
            (lambda (x y)
              (letrec*
               ((g7414
                 (letrec*
                  ((x7416
                    (begin
                      (write '(funapp 47 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 47 55))
                    (display "\n")
                    (assert x7416))))
                (g7415
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 50 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7417
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 56 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7418 (if val7244 val7244 #f))) g7418)))))
                   g7417))))
               g7415)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7419
                 (letrec*
                  ((x7421
                    (begin
                      (write '(funapp 63 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 63 55))
                    (display "\n")
                    (assert x7421))))
                (g7420
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 66 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7422
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 72 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7423 (if val7246 val7246 #f))) g7423)))))
                   g7422))))
               g7420)))
           (>
            (lambda (x y)
              (letrec*
               ((g7424
                 (letrec*
                  ((x7426
                    (begin
                      (write '(funapp 79 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 79 55))
                    (display "\n")
                    (assert x7426))))
                (g7425
                 (letrec*
                  ((x7427
                    (begin (write '(funapp 80 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 80 52)) (display "\n") (not x7427)))))
               g7425)))
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
           ((g7428 (begin (write '(funapp 96 19)) (display "\n") '()))
            (g7429
             (letrec*
              ((empty (begin (write '(funapp 99 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7430
                     (lambda (k j lst)
                       (letrec*
                        ((g7431
                          (begin
                            (write '(funapp 107 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7432
                                  (begin
                                    (write '(funapp 109 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7432))
                             lst))))
                        g7431))))
                   g7430)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7433
                     (letrec*
                      ((x-cnd7434
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7434
                        g7263
                        (begin
                          (write '(blame g7261 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7433)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7435
                     (letrec*
                      ((x-cnd7436
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7436
                        g7266
                        (begin
                          (write '(blame g7264 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7435)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7437
                     (letrec*
                      ((x-cnd7438
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7438
                        g7269
                        (begin
                          (write '(blame g7267 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7437)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7439
                     (letrec*
                      ((x-cnd7440
                        (begin
                          (write '(funapp 143 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7441 #t)) g7441)) g7272))))
                      (if x-cnd7440
                        g7272
                        (begin
                          (write '(blame g7270 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7439)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x-cnd7443
                        (begin
                          (write '(funapp 152 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7444 #t)) g7444)) g7275))))
                      (if x-cnd7443
                        g7275
                        (begin
                          (write '(blame g7273 153 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7442)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7445
                     (letrec*
                      ((x-cnd7446
                        (begin
                          (write '(funapp 160 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7446
                        g7278
                        (begin
                          (write '(blame g7276 161 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7445)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7447
                     (letrec*
                      ((x-cnd7448
                        (begin
                          (write '(funapp 169 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7448
                        g7281
                        (begin
                          (write '(blame g7279 170 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7447)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 177 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7450
                        g7284
                        (begin
                          (write '(blame g7282 178 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7449)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 185 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7452
                        g7287
                        (begin
                          (write '(blame g7285 186 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7451)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7453
                     (lambda (k j v)
                       (letrec*
                        ((g7454
                          (letrec*
                           ((x-cnd7455
                             (begin
                               (write '(funapp 196 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7455
                             (begin
                               (write '(funapp 197 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7454))))
                   g7453)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7456
                     (lambda (k j v)
                       (letrec*
                        ((g7457
                          (letrec*
                           ((x-cnd7458
                             (begin
                               (write '(funapp 208 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7458
                             (begin
                               (write '(funapp 210 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7462
                                (letrec*
                                 ((x7463
                                   (begin
                                     (write '(funapp 214 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 215 34))
                                   (display "\n")
                                   (contract k j x7463))))
                               (x7459
                                (letrec*
                                 ((x7461
                                   (begin
                                     (write '(funapp 218 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7460
                                   (begin
                                     (write '(funapp 218 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 219 34))
                                   (display "\n")
                                   (x7461 k j x7460)))))
                              (begin
                                (write '(funapp 220 31))
                                (display "\n")
                                (orig-cons x7462 x7459)))))))
                        g7457))))
                   g7456)))
               (any? (lambda (v) (letrec* ((g7464 #t)) g7464)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7465
                     (letrec*
                      ((x7466
                        (begin
                          (write '(funapp 227 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 227 55))
                        (display "\n")
                        (not x7466)))))
                   g7465)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x-cnd7468
                        (begin
                          (write '(funapp 235 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7469
                                (letrec*
                                 ((x7470
                                   (begin
                                     (write '(funapp 237 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 237 64))
                                   (display "\n")
                                   (not x7470)))))
                              g7469))
                           g7290))))
                      (if x-cnd7468
                        g7290
                        (begin
                          (write '(blame g7288 242 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7467)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7471
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7472
                          (letrec*
                           ((x-cnd7473
                             (begin
                               (write '(funapp 253 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7474
                                     (begin
                                       (write '(funapp 254 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7474))
                                g7293))))
                           (if x-cnd7473
                             g7293
                             (begin
                               (write '(blame g7291 258 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7472))))
                   g7471)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7475
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7476
                          (letrec*
                           ((x-cnd7477
                             (begin
                               (write '(funapp 270 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7478
                                     (begin
                                       (write '(funapp 271 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7478))
                                g7296))))
                           (if x-cnd7477
                             g7296
                             (begin
                               (write '(blame g7294 275 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7476))))
                   g7475)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7479
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7480
                          (letrec*
                           ((x-cnd7481
                             (begin
                               (write '(funapp 287 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7482
                                     (begin
                                       (write '(funapp 288 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7482))
                                g7299))))
                           (if x-cnd7481
                             g7299
                             (begin
                               (write '(blame g7297 292 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7480))))
                   g7479)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7483
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7484
                          (letrec*
                           ((x-cnd7485
                             (begin
                               (write '(funapp 304 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7486
                                     (begin
                                       (write '(funapp 305 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7486))
                                g7302))))
                           (if x-cnd7485
                             g7302
                             (begin
                               (write '(blame g7300 309 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7484))))
                   g7483)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7487
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7488
                          (letrec*
                           ((x-cnd7489
                             (begin
                               (write '(funapp 321 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7490
                                     (begin
                                       (write '(funapp 322 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7490))
                                g7305))))
                           (if x-cnd7489
                             g7305
                             (begin
                               (write '(blame g7303 326 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7488))))
                   g7487)))
               (meta (lambda (v) (letrec* ((g7491 v)) g7491)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 332 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 332 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7492
                    (begin
                      (write '(funapp 335 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7494
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7495
                                 (letrec*
                                  ((x7496
                                    (letrec*
                                     ((x7498
                                       (begin
                                         (write '(funapp 344 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7497
                                       (begin
                                         (write '(funapp 345 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 346 36))
                                       (display "\n")
                                       (f7312 x7498 x7497)))))
                                  (begin
                                    (write '(funapp 347 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7496)))))
                               g7495))))
                          g7494))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7493
                            (begin
                              (write '(funapp 352 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7493))))))
                  g7492)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 356 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 356 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7499
                    (begin
                      (write '(funapp 359 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7501
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7502
                                 (letrec*
                                  ((x7503
                                    (letrec*
                                     ((x7505
                                       (begin
                                         (write '(funapp 368 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7504
                                       (begin
                                         (write '(funapp 369 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 370 36))
                                       (display "\n")
                                       (f7319 x7505 x7504)))))
                                  (begin
                                    (write '(funapp 371 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7503)))))
                               g7502))))
                          g7501))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7500
                            (begin
                              (write '(funapp 376 53))
                              (display "\n")
                              (orig-- a b))))
                          g7500))))))
                  g7499)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 380 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 380 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7506
                    (begin
                      (write '(funapp 383 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7508
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7509
                                 (letrec*
                                  ((x7510
                                    (letrec*
                                     ((x7512
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7511
                                       (begin
                                         (write '(funapp 393 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 394 36))
                                       (display "\n")
                                       (f7326 x7512 x7511)))))
                                  (begin
                                    (write '(funapp 395 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7510)))))
                               g7509))))
                          g7508))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7507
                            (begin
                              (write '(funapp 400 53))
                              (display "\n")
                              (orig-* a b))))
                          g7507))))))
                  g7506)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 404 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 404 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7513
                    (begin
                      (write '(funapp 407 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7515
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7516
                                 (letrec*
                                  ((x7517
                                    (letrec*
                                     ((x7519
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7518
                                       (begin
                                         (write '(funapp 417 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 418 36))
                                       (display "\n")
                                       (f7333 x7519 x7518)))))
                                  (begin
                                    (write '(funapp 419 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7517)))))
                               g7516))))
                          g7515))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7514
                            (begin
                              (write '(funapp 424 53))
                              (display "\n")
                              (orig-< a b))))
                          g7514))))))
                  g7513)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 428 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 428 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7520
                    (begin
                      (write '(funapp 431 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7522
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7523
                                 (letrec*
                                  ((x7524
                                    (letrec*
                                     ((x7526
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7525
                                       (begin
                                         (write '(funapp 441 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 442 36))
                                       (display "\n")
                                       (f7340 x7526 x7525)))))
                                  (begin
                                    (write '(funapp 443 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7524)))))
                               g7523))))
                          g7522))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7521
                            (begin
                              (write '(funapp 448 53))
                              (display "\n")
                              (orig-> a b))))
                          g7521))))))
                  g7520)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 452 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 452 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7527
                    (begin
                      (write '(funapp 455 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7529
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7530
                                 (letrec*
                                  ((x7531
                                    (letrec*
                                     ((x7533
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7532
                                       (begin
                                         (write '(funapp 465 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 466 36))
                                       (display "\n")
                                       (f7347 x7533 x7532)))))
                                  (begin
                                    (write '(funapp 467 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7531)))))
                               g7530))))
                          g7529))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7528
                            (begin
                              (write '(funapp 472 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7528))))))
                  g7527)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 476 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 476 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7534
                    (begin
                      (write '(funapp 479 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7536
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7537
                                 (letrec*
                                  ((x7538
                                    (letrec*
                                     ((x7540
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7539
                                       (begin
                                         (write '(funapp 489 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 490 36))
                                       (display "\n")
                                       (f7354 x7540 x7539)))))
                                  (begin
                                    (write '(funapp 491 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7538)))))
                               g7537))))
                          g7536))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7535
                            (begin
                              (write '(funapp 496 53))
                              (display "\n")
                              (orig->= a b))))
                          g7535))))))
                  g7534)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 500 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 500 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7541
                    (begin
                      (write '(funapp 503 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7543
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7544
                                 (letrec*
                                  ((x7545
                                    (letrec*
                                     ((x7547
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7546
                                       (begin
                                         (write '(funapp 513 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 514 36))
                                       (display "\n")
                                       (f7361 x7547 x7546)))))
                                  (begin
                                    (write '(funapp 515 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7545)))))
                               g7544))))
                          g7543))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7542
                            (begin
                              (write '(funapp 520 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7542))))))
                  g7541)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 524 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 524 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7548
                    (begin
                      (write '(funapp 527 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7550
                            (lambda (g7364)
                              (letrec*
                               ((g7551
                                 (letrec*
                                  ((x7552
                                    (letrec*
                                     ((x7553
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7367 x7553)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7552)))))
                               g7551))))
                          g7550))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7549
                            (begin
                              (write '(funapp 543 51))
                              (display "\n")
                              (orig-car p))))
                          g7549))))))
                  g7548)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7554
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7556
                            (lambda (g7370)
                              (letrec*
                               ((g7557
                                 (letrec*
                                  ((x7558
                                    (letrec*
                                     ((x7559
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 560 36))
                                       (display "\n")
                                       (f7373 x7559)))))
                                  (begin
                                    (write '(funapp 561 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7558)))))
                               g7557))))
                          g7556))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7555
                            (begin
                              (write '(funapp 566 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7555))))))
                  g7554)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 570 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 570 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7560
                    (begin
                      (write '(funapp 573 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7562
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7563
                                 (letrec*
                                  ((x7564
                                    (letrec*
                                     ((x7566
                                       (begin
                                         (write '(funapp 582 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7565
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7380 x7566 x7565)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7564)))))
                               g7563))))
                          g7562))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7561
                            (begin
                              (write '(funapp 591 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7561))))))
                  g7560)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7567
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7569
                            (lambda (g7383)
                              (letrec*
                               ((g7570
                                 (letrec*
                                  ((x7571
                                    (letrec*
                                     ((x7572
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7386 x7572)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7571)))))
                               g7570))))
                          g7569))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7568
                            (begin
                              (write '(funapp 615 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7568))))))
                  g7567)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7573
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7575
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7576
                                 (letrec*
                                  ((x7577
                                    (letrec*
                                     ((x7579
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7578
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7393 x7579 x7578)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7577)))))
                               g7576))))
                          g7575))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7574
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7574))))))
                  g7573)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7580
                     (if cnd
                       (begin (write '(funapp 645 35)) (display "\n") '())
                       (begin
                         (write '(funapp 645 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7580)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7581
                     (letrec*
                      ((x7582
                        (letrec*
                         ((x7583
                           (begin
                             (write '(funapp 652 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 652 58))
                           (display "\n")
                           (cdr x7583)))))
                      (begin
                        (write '(funapp 653 23))
                        (display "\n")
                        (cdr x7582)))))
                   g7581)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7584
                     (letrec*
                      ((x7587
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 659 62))
                        (display "\n")
                        (assert x7587))))
                    (g7585
                     (letrec*
                      ((x7588
                        (begin
                          (write '(funapp 660 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 660 57))
                        (display "\n")
                        (assert x7588))))
                    (g7586
                     (letrec*
                      ((x-cnd7589
                        (begin
                          (write '(funapp 663 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7589
                        (begin (write '(funapp 665 24)) (display "\n") '())
                        (letrec*
                         ((x7592
                           (letrec*
                            ((x7593
                              (begin
                                (write '(funapp 667 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 667 61))
                              (display "\n")
                              (f x7593))))
                          (x7590
                           (letrec*
                            ((x7591
                              (begin
                                (write '(funapp 668 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 668 61))
                              (display "\n")
                              (map f x7591)))))
                         (begin
                           (write '(funapp 669 26))
                           (display "\n")
                           (cons x7592 x7590)))))))
                   g7586)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7594
                     (letrec*
                      ((x7595
                        (begin
                          (write '(funapp 674 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 674 55))
                        (display "\n")
                        (cdr x7595)))))
                   g7594)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7596
                     (letrec*
                      ((x7597
                        (letrec*
                         ((x7598
                           (letrec*
                            ((x7599
                              (begin
                                (write '(funapp 683 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 683 61))
                              (display "\n")
                              (car x7599)))))
                         (begin
                           (write '(funapp 684 26))
                           (display "\n")
                           (cdr x7598)))))
                      (begin
                        (write '(funapp 685 23))
                        (display "\n")
                        (car x7597)))))
                   g7596)))
               (cdadar
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
                                (write '(funapp 694 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 694 61))
                              (display "\n")
                              (cdr x7603)))))
                         (begin
                           (write '(funapp 695 26))
                           (display "\n")
                           (car x7602)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7601)))))
                   g7600)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7607
                        (begin
                          (write '(funapp 702 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 702 60))
                        (display "\n")
                        (assert x7607))))
                    (g7605
                     (letrec*
                      ((x7608
                        (begin
                          (write '(funapp 704 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 704 59))
                        (display "\n")
                        (assert x7608))))
                    (g7606
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
                       ((g7609
                         (begin
                           (write '(funapp 710 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7610 res))
                       g7610))))
                   g7606)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7612
                        (letrec*
                         ((x7613
                           (begin
                             (write '(funapp 718 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 718 58))
                           (display "\n")
                           (cdr x7613)))))
                      (begin
                        (write '(funapp 719 23))
                        (display "\n")
                        (car x7612)))))
                   g7611)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7615
                        (letrec*
                         ((x7616
                           (letrec*
                            ((x7617
                              (begin
                                (write '(funapp 728 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 728 61))
                              (display "\n")
                              (car x7617)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (car x7616)))))
                      (begin
                        (write '(funapp 730 23))
                        (display "\n")
                        (cdr x7615)))))
                   g7614)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 735 57))
                        (display "\n")
                        (assert x7620))))
                    (g7619
                     (letrec*
                      ((x-cnd7621
                        (begin
                          (write '(funapp 738 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7621
                        #f
                        (letrec*
                         ((x-cnd7622
                           (letrec*
                            ((x7623
                              (begin
                                (write '(funapp 743 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 743 56))
                              (display "\n")
                              (eq? x7623 k)))))
                         (if x-cnd7622
                           (begin
                             (write '(funapp 745 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7624
                              (begin
                                (write '(funapp 746 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 746 55))
                              (display "\n")
                              (assq k x7624)))))))))
                   g7619)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 751 60))
                        (display "\n")
                        (= 0 x7626)))))
                   g7625)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 756 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 756 57))
                        (display "\n")
                        (assert x7629))))
                    (g7628
                     (letrec*
                      ((x-cnd7630
                        (begin
                          (write '(funapp 759 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7630
                        ""
                        (letrec*
                         ((x7633
                           (letrec*
                            ((x7634
                              (begin
                                (write '(funapp 764 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 764 55))
                              (display "\n")
                              (char->string x7634))))
                          (x7631
                           (letrec*
                            ((x7632
                              (begin
                                (write '(funapp 766 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 766 55))
                              (display "\n")
                              (list->string x7632)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (string-append x7633 x7631)))))))
                   g7628)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 772 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 772 58))
                        (display "\n")
                        (assert x7638))))
                    (g7636
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 773 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 773 58))
                        (display "\n")
                        (assert x7639))))
                    (g7637
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 776 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7640
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 778 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7640))))
                   g7637)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7642
                        (letrec*
                         ((x7643
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 788 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 788 61))
                              (display "\n")
                              (cdr x7644)))))
                         (begin
                           (write '(funapp 789 26))
                           (display "\n")
                           (cdr x7643)))))
                      (begin
                        (write '(funapp 790 23))
                        (display "\n")
                        (cdr x7642)))))
                   g7641)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 795 57))
                        (display "\n")
                        (assert x7648))))
                    (g7646
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 796 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 796 57))
                        (display "\n")
                        (assert x7649))))
                    (g7647
                     (letrec*
                      ((x-cnd7650
                        (begin
                          (write '(funapp 799 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7650
                        x
                        (letrec*
                         ((x7652
                           (begin
                             (write '(funapp 803 34))
                             (display "\n")
                             (cdr x)))
                          (x7651
                           (begin
                             (write '(funapp 803 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (list-tail x7652 x7651)))))))
                   g7647)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7653
                     (begin (write '(funapp 806 49)) (display "\n") '())))
                   g7653)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x-cnd7655
                        (letrec*
                         ((x7656 #\a))
                         (begin
                           (write '(funapp 813 48))
                           (display "\n")
                           (char-ci>=? c x7656)))))
                      (if x-cnd7655
                        (letrec*
                         ((x7657 #\z))
                         (begin
                           (write '(funapp 815 48))
                           (display "\n")
                           (char-ci<=? c x7657)))
                        #f))))
                   g7654)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7659
                           (begin
                             (write '(funapp 824 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 824 62))
                           (display "\n")
                           (= x7659 9)))))
                      (letrec*
                       ((g7660
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7661
                                 (begin
                                   (write '(funapp 832 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 833 32))
                                 (display "\n")
                                 (= x7661 10)))))
                            (letrec*
                             ((g7662
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7663
                                    (begin
                                      (write '(funapp 839 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 840 35))
                                    (display "\n")
                                    (= x7663 32))))))
                             g7662)))))
                       g7660))))
                   g7658)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x7665
                        (letrec*
                         ((x7666
                           (begin
                             (write '(funapp 849 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 849 58))
                           (display "\n")
                           (cdr x7666)))))
                      (begin
                        (write '(funapp 850 23))
                        (display "\n")
                        (cdr x7665)))))
                   g7664)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x7669
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 855 59))
                        (display "\n")
                        (assert x7669))))
                    (g7668
                     (begin (write '(funapp 856 28)) (display "\n") (> x 0))))
                   g7668)))
               ($pc (begin (write '(funapp 858 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7670 #f)) g7670)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7672
                        (begin
                          (write '(funapp 864 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 864 55))
                        (display "\n")
                        (cdr x7672)))))
                   g7671)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((x7675
                        (begin
                          (write '(funapp 869 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 869 59))
                        (display "\n")
                        (assert x7675))))
                    (g7674
                     (letrec*
                      ((x-cnd7676
                        (begin
                          (write '(funapp 872 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7676
                        (begin
                          (write '(funapp 873 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 873 49))
                          (display "\n")
                          (floor x))))))
                   g7674)))
               ($cmp (begin (write '(funapp 875 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 881 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7678
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7679
                                 (begin
                                   (write '(funapp 889 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7679
                                 (begin
                                   (write '(funapp 890 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7680
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7681
                                       (begin
                                         (write '(funapp 898 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7681
                                       (letrec*
                                        ((x-cnd7682
                                          (begin
                                            (write '(funapp 901 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7682
                                          (begin
                                            (write '(funapp 902 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7683
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7684
                                             (begin
                                               (write '(funapp 911 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7684
                                             (letrec*
                                              ((x-cnd7685
                                                (begin
                                                  (write '(funapp 914 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7685
                                                (letrec*
                                                 ((x-cnd7686
                                                   (letrec*
                                                    ((x7688
                                                      (begin
                                                        (write
                                                         '(funapp 919 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7687
                                                      (begin
                                                        (write
                                                         '(funapp 920 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 921 53))
                                                      (display "\n")
                                                      (equal? x7688 x7687)))))
                                                 (if x-cnd7686
                                                   (letrec*
                                                    ((x7690
                                                      (begin
                                                        (write
                                                         '(funapp 924 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7689
                                                      (begin
                                                        (write
                                                         '(funapp 925 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 926 53))
                                                      (display "\n")
                                                      (equal? x7690 x7689)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7691
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7692
                                                (begin
                                                  (write '(funapp 935 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7692
                                                (letrec*
                                                 ((x-cnd7693
                                                   (begin
                                                     (write '(funapp 938 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7693
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 941 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7694
                                                       (letrec*
                                                        ((x-cnd7695
                                                          (letrec*
                                                           ((x7696
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
                                                             (= x7696 n)))))
                                                        (if x-cnd7695
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7697
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
                                                                    ((g7698
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7699
                                                                           (letrec*
                                                                            ((x7701
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
                                                                             (x7700
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
                                                                               x7701
                                                                               x7700)))))
                                                                         (if x-cnd7699
                                                                           (letrec*
                                                                            ((x7702
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
                                                                               x7702)))
                                                                           #f)))))
                                                                    g7698))))
                                                                g7697))))
                                                           (letrec*
                                                            ((g7703
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   990
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7703))
                                                          #f))))
                                                     g7694))
                                                   #f))
                                                #f)))))
                                         g7691)))))
                                   g7683)))))
                             g7680)))))
                       g7678))))
                   g7677)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7704
                     (letrec*
                      ((x7705
                        (letrec*
                         ((x7706
                           (letrec*
                            ((x7707
                              (begin
                                (write '(funapp 1008 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1008 61))
                              (display "\n")
                              (car x7707)))))
                         (begin
                           (write '(funapp 1009 26))
                           (display "\n")
                           (car x7706)))))
                      (begin
                        (write '(funapp 1010 23))
                        (display "\n")
                        (cdr x7705)))))
                   g7704)))
               (caaddr
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
                                (write '(funapp 1019 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1019 61))
                              (display "\n")
                              (cdr x7711)))))
                         (begin
                           (write '(funapp 1020 26))
                           (display "\n")
                           (car x7710)))))
                      (begin
                        (write '(funapp 1021 23))
                        (display "\n")
                        (car x7709)))))
                   g7708)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7712
                     (begin
                       (write '(funapp 1023 53))
                       (display "\n")
                       (eq? x y))))
                   g7712)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7713
                     (letrec*
                      ((x7716
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1028 60))
                        (display "\n")
                        (assert x7716))))
                    (g7714
                     (letrec*
                      ((x7717
                        (begin
                          (write '(funapp 1030 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1030 59))
                        (display "\n")
                        (assert x7717))))
                    (g7715
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
                       ((g7718
                         (begin
                           (write '(funapp 1036 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7719 res))
                       g7719))))
                   g7715)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7720
                     (begin
                       (write '(funapp 1039 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1039 57))
                          (display "\n")
                          '())))))
                   g7720)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7721
                     (letrec*
                      ((x7724
                        (begin
                          (write '(funapp 1043 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1043 58))
                        (display "\n")
                        (assert x7724))))
                    (g7722
                     (letrec*
                      ((x7725
                        (begin
                          (write '(funapp 1044 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1044 58))
                        (display "\n")
                        (assert x7725))))
                    (g7723
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1047 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7726
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1049 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7726))))
                   g7723)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7727
                     (letrec*
                      ((x7728
                        (letrec*
                         ((x7729
                           (begin
                             (write '(funapp 1057 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1057 58))
                           (display "\n")
                           (car x7729)))))
                      (begin
                        (write '(funapp 1058 23))
                        (display "\n")
                        (cdr x7728)))))
                   g7727)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7730
                     (letrec*
                      ((x7731
                        (letrec*
                         ((x7732
                           (letrec*
                            ((x7733
                              (begin
                                (write '(funapp 1067 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1067 61))
                              (display "\n")
                              (cdr x7733)))))
                         (begin
                           (write '(funapp 1068 26))
                           (display "\n")
                           (car x7732)))))
                      (begin
                        (write '(funapp 1069 23))
                        (display "\n")
                        (cdr x7731)))))
                   g7730)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7735
                        (letrec*
                         ((x7736
                           (begin
                             (write '(funapp 1077 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1077 58))
                           (display "\n")
                           (cdr x7736)))))
                      (begin
                        (write '(funapp 1078 23))
                        (display "\n")
                        (car x7735)))))
                   g7734)))
               (caadr
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
                             (cdr x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (car x7739)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7738)))))
                   g7737)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7743
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1091 58))
                        (display "\n")
                        (assert x7743))))
                    (g7741
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1092 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1092 58))
                        (display "\n")
                        (assert x7744))))
                    (g7742
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1093 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1093 66))
                        (display "\n")
                        (not x7745)))))
                   g7742)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1103 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1103 61))
                              (display "\n")
                              (car x7749)))))
                         (begin
                           (write '(funapp 1104 26))
                           (display "\n")
                           (car x7748)))))
                      (begin
                        (write '(funapp 1105 23))
                        (display "\n")
                        (car x7747)))))
                   g7746)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1110 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1110 59))
                        (display "\n")
                        (assert x7752))))
                    (g7751
                     (begin (write '(funapp 1111 28)) (display "\n") (< x 0))))
                   g7751)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7753
                     (begin
                       (write '(funapp 1113 53))
                       (display "\n")
                       (memq e l))))
                   g7753)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x7755
                        (letrec*
                         ((x7756
                           (begin
                             (write '(funapp 1119 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1119 58))
                           (display "\n")
                           (car x7756)))))
                      (begin
                        (write '(funapp 1120 23))
                        (display "\n")
                        (car x7755)))))
                   g7754)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7757
                     (begin (write '(funapp 1122 51)) (display "\n") '())))
                   g7757)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7760
                        (begin
                          (write '(funapp 1126 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1126 57))
                        (display "\n")
                        (assert x7760))))
                    (g7759
                     (letrec*
                      ((x-cnd7761
                        (begin
                          (write '(funapp 1129 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7761
                        (begin (write '(funapp 1131 24)) (display "\n") '())
                        (letrec*
                         ((x7764
                           (letrec*
                            ((x7765
                              (begin
                                (write '(funapp 1133 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1133 61))
                              (display "\n")
                              (reverse x7765))))
                          (x7762
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (list x7763)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (append x7764 x7762)))))))
                   g7759)))
               (caaadr
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
                                (write '(funapp 1144 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1144 61))
                              (display "\n")
                              (car x7769)))))
                         (begin
                           (write '(funapp 1145 26))
                           (display "\n")
                           (car x7768)))))
                      (begin
                        (write '(funapp 1146 23))
                        (display "\n")
                        (car x7767)))))
                   g7766)))
               (cddadr
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
                                (write '(funapp 1155 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1155 61))
                              (display "\n")
                              (car x7773)))))
                         (begin
                           (write '(funapp 1156 26))
                           (display "\n")
                           (cdr x7772)))))
                      (begin
                        (write '(funapp 1157 23))
                        (display "\n")
                        (cdr x7771)))))
                   g7770)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 1162 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1162 59))
                        (display "\n")
                        (assert x7776))))
                    (g7775
                     (letrec*
                      ((x7777
                        (begin
                          (write '(funapp 1163 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1163 60))
                        (display "\n")
                        (= 1 x7777)))))
                   g7775)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7779
                        (letrec*
                         ((x7780
                           (letrec*
                            ((x7781
                              (begin
                                (write '(funapp 1172 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1172 61))
                              (display "\n")
                              (cdr x7781)))))
                         (begin
                           (write '(funapp 1173 26))
                           (display "\n")
                           (car x7780)))))
                      (begin
                        (write '(funapp 1174 23))
                        (display "\n")
                        (car x7779)))))
                   g7778)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 1180 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1180 59))
                        (display "\n")
                        (assert x7785))))
                    (g7783
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1181 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1181 60))
                        (display "\n")
                        (assert x7786))))
                    (g7784
                     (letrec*
                      ((x-cnd7787
                        (begin
                          (write '(funapp 1184 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7787
                        (letrec*
                         ((g7788
                           (begin
                             (write '(funapp 1186 42))
                             (display "\n")
                             (proc))))
                         g7788)
                        (letrec*
                         ((x-cnd7789
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 1189 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1189 58))
                              (display "\n")
                              (null? x7790)))))
                         (if x-cnd7789
                           (letrec*
                            ((g7791
                              (letrec*
                               ((x7792
                                 (begin
                                   (write '(funapp 1193 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1193 61))
                                 (display "\n")
                                 (proc x7792)))))
                            g7791)
                           (letrec*
                            ((x-cnd7793
                              (letrec*
                               ((x7794
                                 (begin
                                   (write '(funapp 1197 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1197 62))
                                 (display "\n")
                                 (null? x7794)))))
                            (if x-cnd7793
                              (letrec*
                               ((g7795
                                 (letrec*
                                  ((x7797
                                    (begin
                                      (write '(funapp 1202 43))
                                      (display "\n")
                                      (car args)))
                                   (x7796
                                    (begin
                                      (write '(funapp 1202 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1203 35))
                                    (display "\n")
                                    (proc x7797 x7796)))))
                               g7795)
                              (letrec*
                               ((x-cnd7798
                                 (letrec*
                                  ((x7799
                                    (begin
                                      (write '(funapp 1208 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1209 35))
                                    (display "\n")
                                    (null? x7799)))))
                               (if x-cnd7798
                                 (letrec*
                                  ((g7800
                                    (letrec*
                                     ((x7803
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (car args)))
                                      (x7802
                                       (begin
                                         (write '(funapp 1215 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7801
                                       (begin
                                         (write '(funapp 1216 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1217 38))
                                       (display "\n")
                                       (proc x7803 x7802 x7801)))))
                                  g7800)
                                 (letrec*
                                  ((x-cnd7804
                                    (letrec*
                                     ((x7805
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1223 38))
                                       (display "\n")
                                       (null? x7805)))))
                                  (if x-cnd7804
                                    (letrec*
                                     ((g7806
                                       (letrec*
                                        ((x7810
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (car args)))
                                         (x7809
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7808
                                          (begin
                                            (write '(funapp 1230 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7807
                                          (begin
                                            (write '(funapp 1231 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1232 41))
                                          (display "\n")
                                          (proc x7810 x7809 x7808 x7807)))))
                                     g7806)
                                    (letrec*
                                     ((x-cnd7811
                                       (letrec*
                                        ((x7812
                                          (letrec*
                                           ((x7813
                                             (begin
                                               (write '(funapp 1239 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1240 44))
                                             (display "\n")
                                             (cdr x7813)))))
                                        (begin
                                          (write '(funapp 1241 41))
                                          (display "\n")
                                          (null? x7812)))))
                                     (if x-cnd7811
                                       (letrec*
                                        ((g7814
                                          (letrec*
                                           ((x7820
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (car args)))
                                            (x7819
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7818
                                             (begin
                                               (write '(funapp 1248 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7817
                                             (begin
                                               (write '(funapp 1249 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7815
                                             (letrec*
                                              ((x7816
                                                (begin
                                                  (write '(funapp 1252 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1253 47))
                                                (display "\n")
                                                (car x7816)))))
                                           (begin
                                             (write '(funapp 1254 44))
                                             (display "\n")
                                             (proc
                                              x7820
                                              x7819
                                              x7818
                                              x7817
                                              x7815)))))
                                        g7814)
                                       (letrec*
                                        ((x-cnd7821
                                          (letrec*
                                           ((x7822
                                             (letrec*
                                              ((x7823
                                                (begin
                                                  (write '(funapp 1266 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1267 47))
                                                (display "\n")
                                                (cddr x7823)))))
                                           (begin
                                             (write '(funapp 1268 44))
                                             (display "\n")
                                             (null? x7822)))))
                                        (if x-cnd7821
                                          (letrec*
                                           ((g7824
                                             (letrec*
                                              ((x7832
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7831
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7830
                                                (begin
                                                  (write '(funapp 1275 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7829
                                                (begin
                                                  (write '(funapp 1276 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7827
                                                (letrec*
                                                 ((x7828
                                                   (begin
                                                     (write '(funapp 1279 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1280 50))
                                                   (display "\n")
                                                   (car x7828))))
                                               (x7825
                                                (letrec*
                                                 ((x7826
                                                   (begin
                                                     (write '(funapp 1283 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1284 50))
                                                   (display "\n")
                                                   (cadr x7826)))))
                                              (begin
                                                (write '(funapp 1285 47))
                                                (display "\n")
                                                (proc
                                                 x7832
                                                 x7831
                                                 x7830
                                                 x7829
                                                 x7827
                                                 x7825)))))
                                           g7824)
                                          (letrec*
                                           ((x-cnd7833
                                             (letrec*
                                              ((x7834
                                                (letrec*
                                                 ((x7835
                                                   (begin
                                                     (write '(funapp 1298 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1299 50))
                                                   (display "\n")
                                                   (cdddr x7835)))))
                                              (begin
                                                (write '(funapp 1300 47))
                                                (display "\n")
                                                (null? x7834)))))
                                           (if x-cnd7833
                                             (letrec*
                                              ((g7836
                                                (letrec*
                                                 ((x7846
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7845
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7844
                                                   (begin
                                                     (write '(funapp 1307 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7843
                                                   (begin
                                                     (write '(funapp 1308 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7841
                                                   (letrec*
                                                    ((x7842
                                                      (begin
                                                        (write
                                                         '(funapp 1311 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1312 53))
                                                      (display "\n")
                                                      (car x7842))))
                                                  (x7839
                                                   (letrec*
                                                    ((x7840
                                                      (begin
                                                        (write
                                                         '(funapp 1315 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1316 53))
                                                      (display "\n")
                                                      (cadr x7840))))
                                                  (x7837
                                                   (letrec*
                                                    ((x7838
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (caddr x7838)))))
                                                 (begin
                                                   (write '(funapp 1321 50))
                                                   (display "\n")
                                                   (proc
                                                    x7846
                                                    x7845
                                                    x7844
                                                    x7843
                                                    x7841
                                                    x7839
                                                    x7837)))))
                                              g7836)
                                             (letrec*
                                              ((g7847
                                                (begin
                                                  (write '(funapp 1332 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7847)))))))))))))))))))
                   g7784)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((x7850
                        (begin
                          (write '(funapp 1338 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1338 57))
                        (display "\n")
                        (assert x7850))))
                    (g7849
                     (letrec*
                      ((x-cnd7851
                        (begin
                          (write '(funapp 1341 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7851
                        #f
                        (letrec*
                         ((x-cnd7852
                           (letrec*
                            ((x7853
                              (begin
                                (write '(funapp 1346 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1346 55))
                              (display "\n")
                              (equal? x7853 e)))))
                         (if x-cnd7852
                           l
                           (letrec*
                            ((x7854
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1349 55))
                              (display "\n")
                              (member e x7854)))))))))
                   g7849)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7855
                     (letrec*
                      ((x7856
                        (letrec*
                         ((x7857
                           (letrec*
                            ((x7858
                              (begin
                                (write '(funapp 1358 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1358 61))
                              (display "\n")
                              (cdr x7858)))))
                         (begin
                           (write '(funapp 1359 26))
                           (display "\n")
                           (cdr x7857)))))
                      (begin
                        (write '(funapp 1360 23))
                        (display "\n")
                        (cdr x7856)))))
                   g7855)))
               (cadddr
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
                                (write '(funapp 1369 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1369 61))
                              (display "\n")
                              (cdr x7862)))))
                         (begin
                           (write '(funapp 1370 26))
                           (display "\n")
                           (cdr x7861)))))
                      (begin
                        (write '(funapp 1371 23))
                        (display "\n")
                        (car x7860)))))
                   g7859)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7863
                     (begin
                       (write '(funapp 1373 53))
                       (display "\n")
                       (random 42))))
                   g7863)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x7866
                        (begin
                          (write '(funapp 1377 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1377 59))
                        (display "\n")
                        (assert x7866))))
                    (g7865
                     (begin (write '(funapp 1378 28)) (display "\n") (= x 0))))
                   g7865)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1385 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7868
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1387 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7868))))
                   g7867)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x7870
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1393 55))
                        (display "\n")
                        (car x7870)))))
                   g7869)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7872
                           (begin
                             (write '(funapp 1403 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7872
                           (letrec*
                            ((x7873
                              (begin
                                (write '(funapp 1405 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1405 55))
                              (display "\n")
                              (list? x7873)))
                           #f))))
                      (letrec*
                       ((g7874
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1408 52))
                             (display "\n")
                             (null? l)))))
                       g7874))))
                   g7871)))
               (cddaar
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
                                (write '(funapp 1418 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1418 61))
                              (display "\n")
                              (car x7878)))))
                         (begin
                           (write '(funapp 1419 26))
                           (display "\n")
                           (cdr x7877)))))
                      (begin
                        (write '(funapp 1420 23))
                        (display "\n")
                        (cdr x7876)))))
                   g7875)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x-cnd7880
                        (letrec*
                         ((x7881 #\0))
                         (begin
                           (write '(funapp 1427 58))
                           (display "\n")
                           (char<=? x7881 c)))))
                      (if x-cnd7880
                        (letrec*
                         ((x7882 #\9))
                         (begin
                           (write '(funapp 1429 48))
                           (display "\n")
                           (char<=? c x7882)))
                        #f))))
                   g7879)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7883
                     (letrec*
                      ((x7885
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1436 57))
                        (display "\n")
                        (assert x7885))))
                    (g7884
                     (letrec*
                      ((x-cnd7886
                        (begin
                          (write '(funapp 1439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7886
                        #f
                        (letrec*
                         ((x-cnd7887
                           (letrec*
                            ((x7888
                              (begin
                                (write '(funapp 1444 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1444 56))
                              (display "\n")
                              (eqv? x7888 k)))))
                         (if x-cnd7887
                           (begin
                             (write '(funapp 1446 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 1447 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1447 55))
                              (display "\n")
                              (assq k x7889)))))))))
                   g7884)))
               (not (lambda (x) (letrec* ((g7890 (if x #f #t))) g7890)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7891
                     (begin
                       (write '(funapp 1451 50))
                       (display "\n")
                       (append l1 l2))))
                   g7891)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x7894
                        (begin
                          (write '(funapp 1455 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1455 57))
                        (display "\n")
                        (assert x7894))))
                    (g7893
                     (letrec*
                      ((x-cnd7895
                        (begin
                          (write '(funapp 1458 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7895
                        #f
                        (letrec*
                         ((x-cnd7896
                           (letrec*
                            ((x7897
                              (begin
                                (write '(funapp 1463 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1463 55))
                              (display "\n")
                              (eq? x7897 e)))))
                         (if x-cnd7896
                           l
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 1466 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1466 55))
                              (display "\n")
                              (memq e x7898)))))))))
                   g7893)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7900
                        (letrec*
                         ((x7901
                           (letrec*
                            ((x7902
                              (begin
                                (write '(funapp 1475 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1475 61))
                              (display "\n")
                              (car x7902)))))
                         (begin
                           (write '(funapp 1476 26))
                           (display "\n")
                           (cdr x7901)))))
                      (begin
                        (write '(funapp 1477 23))
                        (display "\n")
                        (car x7900)))))
                   g7899)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x7905
                        (begin
                          (write '(funapp 1482 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1482 57))
                        (display "\n")
                        (assert x7905))))
                    (g7904
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7906
                             (letrec*
                              ((x-cnd7907
                                (begin
                                  (write '(funapp 1490 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7907
                                0
                                (letrec*
                                 ((x7908
                                   (letrec*
                                    ((x7909
                                      (begin
                                        (write '(funapp 1495 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1495 63))
                                      (display "\n")
                                      (rec x7909)))))
                                 (begin
                                   (write '(funapp 1496 34))
                                   (display "\n")
                                   (+ 1 x7908)))))))
                           g7906))))
                      (letrec*
                       ((g7910
                         (begin
                           (write '(funapp 1498 40))
                           (display "\n")
                           (rec l))))
                       g7910))))
                   g7904)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x7914
                        (begin
                          (write '(funapp 1503 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1503 58))
                        (display "\n")
                        (assert x7914))))
                    (g7912
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 1504 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1504 58))
                        (display "\n")
                        (assert x7915))))
                    (g7913
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1507 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7916
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1509 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7916))))
                   g7913)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 1515 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1515 65))
                        (display "\n")
                        (not x7918)))))
                   g7917)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7920
                        (letrec*
                         ((x7921
                           (begin
                             (write '(funapp 1522 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1522 58))
                           (display "\n")
                           (car x7921)))))
                      (begin
                        (write '(funapp 1523 23))
                        (display "\n")
                        (cdr x7920)))))
                   g7919)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 1528 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1528 57))
                        (display "\n")
                        (assert x7924))))
                    (g7923
                     (letrec*
                      ((x-cnd7925
                        (begin
                          (write '(funapp 1531 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7925
                        #f
                        (letrec*
                         ((x-cnd7926
                           (letrec*
                            ((x7927
                              (begin
                                (write '(funapp 1536 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1536 56))
                              (display "\n")
                              (equal? x7927 k)))))
                         (if x-cnd7926
                           (begin
                             (write '(funapp 1538 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7928
                              (begin
                                (write '(funapp 1539 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1539 55))
                              (display "\n")
                              (assoc k x7928)))))))))
                   g7923)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1544 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1544 55))
                        (display "\n")
                        (car x7930)))))
                   g7929)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7931
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7934))))
                    (g7932
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1550 58))
                        (display "\n")
                        (assert x7935))))
                    (g7933
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1551 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1551 63))
                        (display "\n")
                        (not x7936)))))
                   g7933)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1558 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7938
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1560 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7938))))
                   g7937)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1566 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1566 62))
                        (display "\n")
                        (assert x7942))))
                    (g7940
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1567 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1567 57))
                        (display "\n")
                        (assert x7943))))
                    (g7941
                     (letrec*
                      ((x-cnd7944
                        (begin
                          (write '(funapp 1570 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7944
                        #t
                        (letrec*
                         ((x-cnd7945
                           (begin
                             (write '(funapp 1574 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7945
                           (letrec*
                            ((g7946
                              (letrec*
                               ((x7948
                                 (begin
                                   (write '(funapp 1577 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1577 64))
                                 (display "\n")
                                 (f x7948))))
                             (g7947
                              (letrec*
                               ((x7949
                                 (begin
                                   (write '(funapp 1579 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1579 58))
                                 (display "\n")
                                 (for-each f x7949)))))
                            g7947)
                           (begin
                             (write '(funapp 1581 27))
                             (display "\n")
                             '())))))))
                   g7941)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1586 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1586 59))
                        (display "\n")
                        (assert x7952))))
                    (g7951
                     (letrec*
                      ((x-cnd7953
                        (begin
                          (write '(funapp 1588 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7953
                        (begin
                          (write '(funapp 1588 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7951)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7957))))
                    (g7955
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7958))))
                    (g7956
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1597 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7959
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1599 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7959))))
                   g7956)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7961
                        (letrec*
                         ((x7962
                           (letrec*
                            ((x7963
                              (begin
                                (write '(funapp 1609 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1609 61))
                              (display "\n")
                              (cdr x7963)))))
                         (begin
                           (write '(funapp 1610 26))
                           (display "\n")
                           (cdr x7962)))))
                      (begin
                        (write '(funapp 1611 23))
                        (display "\n")
                        (car x7961)))))
                   g7960)))
               (newline (lambda () (letrec* ((g7964 #f)) g7964)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7965
                     (letrec*
                      ((x7967
                        (letrec*
                         ((x7968
                           (begin
                             (write '(funapp 1619 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1619 58))
                           (display "\n")
                           (abs x7968))))
                       (x7966
                        (begin
                          (write '(funapp 1620 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1621 23))
                        (display "\n")
                        (/ x7967 x7966)))))
                   g7965)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1627 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1627 57))
                        (display "\n")
                        (assert x7973))))
                    (g7970
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1628 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1628 63))
                        (display "\n")
                        (assert x7974))))
                    (g7971
                     (letrec*
                      ((x7975
                        (letrec*
                         ((x7976
                           (begin
                             (write '(funapp 1631 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1631 61))
                           (display "\n")
                           (< index x7976)))))
                      (begin
                        (write '(funapp 1632 23))
                        (display "\n")
                        (assert x7975))))
                    (g7972
                     (letrec*
                      ((x-cnd7977
                        (begin
                          (write '(funapp 1635 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7977
                        (begin
                          (write '(funapp 1637 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7979
                           (begin
                             (write '(funapp 1639 34))
                             (display "\n")
                             (cdr l)))
                          (x7978
                           (begin
                             (write '(funapp 1639 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1640 26))
                           (display "\n")
                           (list-ref x7979 x7978)))))))
                   g7972)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7980
                     (letrec*
                      ((x-cnd7981
                        (begin
                          (write '(funapp 1647 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7981
                        a
                        (letrec*
                         ((x7982
                           (begin
                             (write '(funapp 1650 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1650 57))
                           (display "\n")
                           (gcd b x7982)))))))
                   g7980)))
               (subst*
                (lambda (new old t)
                  (letrec*
                   ((g7983
                     (letrec*
                      ((x-cnd7984
                        (begin
                          (write '(funapp 1657 35))
                          (display "\n")
                          (equal? old t))))
                      (if x-cnd7984
                        (letrec* ((g7985 new)) g7985)
                        (letrec*
                         ((x-cnd7986
                           (begin
                             (write '(funapp 1661 38))
                             (display "\n")
                             (pair? t))))
                         (if x-cnd7986
                           (letrec*
                            ((g7987
                              (letrec*
                               ((x7990
                                 (letrec*
                                  ((x7991
                                    (begin
                                      (write '(funapp 1668 43))
                                      (display "\n")
                                      (car t))))
                                  (begin
                                    (write '(funapp 1669 35))
                                    (display "\n")
                                    (subst* new old x7991))))
                                (x7988
                                 (letrec*
                                  ((x7989
                                    (begin
                                      (write '(funapp 1672 43))
                                      (display "\n")
                                      (cdr t))))
                                  (begin
                                    (write '(funapp 1673 35))
                                    (display "\n")
                                    (subst* new old x7989)))))
                               (begin
                                 (write '(funapp 1674 32))
                                 (display "\n")
                                 (cons x7990 x7988)))))
                            g7987)
                           (letrec* ((g7992 t)) g7992)))))))
                   g7983))))
              (letrec*
               ((g7993
                 (begin
                   (write '(funapp 1680 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1681 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x7997
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
                            ((g7998
                              (begin
                                (write '(funapp 1688 27))
                                (display "\n")
                                ((lambda (j7399 k7400 f7401)
                                   (letrec*
                                    ((g7999
                                      (lambda (g7396 g7397 g7398)
                                        (letrec*
                                         ((g8000
                                           (letrec*
                                            ((x8001
                                              (letrec*
                                               ((x8004
                                                 (begin
                                                   (write '(funapp 1697 50))
                                                   (display "\n")
                                                   (any?/c j7399 k7400 g7396)))
                                                (x8003
                                                 (begin
                                                   (write '(funapp 1698 50))
                                                   (display "\n")
                                                   (any?/c j7399 k7400 g7397)))
                                                (x8002
                                                 (begin
                                                   (write '(funapp 1699 50))
                                                   (display "\n")
                                                   (any?/c
                                                    j7399
                                                    k7400
                                                    g7398))))
                                               (begin
                                                 (write '(funapp 1700 42))
                                                 (display "\n")
                                                 (f7401 x8004 x8003 x8002)))))
                                            (begin
                                              (write '(funapp 1701 39))
                                              (display "\n")
                                              (any?/c j7399 k7400 x8001)))))
                                         g8000))))
                                    g7999))
                                 xj7394
                                 xk7395
                                 subst*))))
                            g7998)))
                         (x7996 (input))
                         (x7995 (input))
                         (x7994 (input)))
                        (begin
                          (write '(funapp 1711 21))
                          (display "\n")
                          (x7997 x7996 x7995 x7994)))))))))
               g7993))))
           g7429))))
       g7413)))
    g7412)))
