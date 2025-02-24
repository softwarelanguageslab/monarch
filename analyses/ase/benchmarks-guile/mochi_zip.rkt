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
          ((>=
            (lambda (x y)
              (letrec*
               ((g7418
                 (letrec*
                  ((x7420
                    (begin
                      (write '(funapp 47 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 47 55))
                    (display "\n")
                    (assert x7420))))
                (g7419
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 50 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7421
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 56 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7422 (if val7244 val7244 #f))) g7422)))))
                   g7421))))
               g7419)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7423
                 (letrec*
                  ((x7425
                    (begin
                      (write '(funapp 63 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 63 55))
                    (display "\n")
                    (assert x7425))))
                (g7424
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 66 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7426
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 72 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7427 (if val7246 val7246 #f))) g7427)))))
                   g7426))))
               g7424)))
           (>
            (lambda (x y)
              (letrec*
               ((g7428
                 (letrec*
                  ((x7430
                    (begin
                      (write '(funapp 79 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 79 55))
                    (display "\n")
                    (assert x7430))))
                (g7429
                 (letrec*
                  ((x7431
                    (begin (write '(funapp 80 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 80 52)) (display "\n") (not x7431)))))
               g7429)))
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
           ((g7432 (begin (write '(funapp 96 19)) (display "\n") '()))
            (g7433
             (letrec*
              ((empty (begin (write '(funapp 99 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7434
                     (lambda (k j lst)
                       (letrec*
                        ((g7435
                          (begin
                            (write '(funapp 107 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7436
                                  (begin
                                    (write '(funapp 109 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7436))
                             lst))))
                        g7435))))
                   g7434)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7437
                     (letrec*
                      ((x-cnd7438
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7438
                        g7263
                        (begin
                          (write '(blame g7261 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7437)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7439
                     (letrec*
                      ((x-cnd7440
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7440
                        g7266
                        (begin
                          (write '(blame g7264 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7439)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7441
                     (letrec*
                      ((x-cnd7442
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7442
                        g7269
                        (begin
                          (write '(blame g7267 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7441)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7443
                     (letrec*
                      ((x-cnd7444
                        (begin
                          (write '(funapp 143 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7445 #t)) g7445)) g7272))))
                      (if x-cnd7444
                        g7272
                        (begin
                          (write '(blame g7270 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7443)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 152 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7448 #t)) g7448)) g7275))))
                      (if x-cnd7447
                        g7275
                        (begin
                          (write '(blame g7273 153 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7446)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 160 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7450
                        g7278
                        (begin
                          (write '(blame g7276 161 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7449)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 169 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7452
                        g7281
                        (begin
                          (write '(blame g7279 170 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7451)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 177 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7454
                        g7284
                        (begin
                          (write '(blame g7282 178 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7453)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 185 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7456
                        g7287
                        (begin
                          (write '(blame g7285 186 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
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
                               (write '(funapp 196 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7459
                             (begin
                               (write '(funapp 197 42))
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
                               (write '(funapp 208 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7462
                             (begin
                               (write '(funapp 210 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7466
                                (letrec*
                                 ((x7467
                                   (begin
                                     (write '(funapp 214 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 215 34))
                                   (display "\n")
                                   (contract k j x7467))))
                               (x7463
                                (letrec*
                                 ((x7465
                                   (begin
                                     (write '(funapp 218 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7464
                                   (begin
                                     (write '(funapp 218 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 219 34))
                                   (display "\n")
                                   (x7465 k j x7464)))))
                              (begin
                                (write '(funapp 220 31))
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
                          (write '(funapp 227 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 227 55))
                        (display "\n")
                        (not x7470)))))
                   g7469)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7471
                     (letrec*
                      ((x-cnd7472
                        (begin
                          (write '(funapp 235 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7473
                                (letrec*
                                 ((x7474
                                   (begin
                                     (write '(funapp 237 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 237 64))
                                   (display "\n")
                                   (not x7474)))))
                              g7473))
                           g7290))))
                      (if x-cnd7472
                        g7290
                        (begin
                          (write '(blame g7288 242 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7471)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7475
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7476
                          (letrec*
                           ((x-cnd7477
                             (begin
                               (write '(funapp 253 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7478
                                     (begin
                                       (write '(funapp 254 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7478))
                                g7293))))
                           (if x-cnd7477
                             g7293
                             (begin
                               (write '(blame g7291 258 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7476))))
                   g7475)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7479
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7480
                          (letrec*
                           ((x-cnd7481
                             (begin
                               (write '(funapp 270 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7482
                                     (begin
                                       (write '(funapp 271 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7482))
                                g7296))))
                           (if x-cnd7481
                             g7296
                             (begin
                               (write '(blame g7294 275 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7480))))
                   g7479)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7483
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7484
                          (letrec*
                           ((x-cnd7485
                             (begin
                               (write '(funapp 287 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7486
                                     (begin
                                       (write '(funapp 288 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7486))
                                g7299))))
                           (if x-cnd7485
                             g7299
                             (begin
                               (write '(blame g7297 292 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7484))))
                   g7483)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7487
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7488
                          (letrec*
                           ((x-cnd7489
                             (begin
                               (write '(funapp 304 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7490
                                     (begin
                                       (write '(funapp 305 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7490))
                                g7302))))
                           (if x-cnd7489
                             g7302
                             (begin
                               (write '(blame g7300 309 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7488))))
                   g7487)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7491
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7492
                          (letrec*
                           ((x-cnd7493
                             (begin
                               (write '(funapp 321 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7494
                                     (begin
                                       (write '(funapp 322 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7494))
                                g7305))))
                           (if x-cnd7493
                             g7305
                             (begin
                               (write '(blame g7303 326 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7492))))
                   g7491)))
               (meta (lambda (v) (letrec* ((g7495 v)) g7495)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 332 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 332 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7496
                    (begin
                      (write '(funapp 335 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7498
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7499
                                 (letrec*
                                  ((x7500
                                    (letrec*
                                     ((x7502
                                       (begin
                                         (write '(funapp 344 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7501
                                       (begin
                                         (write '(funapp 345 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 346 36))
                                       (display "\n")
                                       (f7312 x7502 x7501)))))
                                  (begin
                                    (write '(funapp 347 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7500)))))
                               g7499))))
                          g7498))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7497
                            (begin
                              (write '(funapp 352 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7497))))))
                  g7496)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 356 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 356 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7503
                    (begin
                      (write '(funapp 359 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7505
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7506
                                 (letrec*
                                  ((x7507
                                    (letrec*
                                     ((x7509
                                       (begin
                                         (write '(funapp 368 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7508
                                       (begin
                                         (write '(funapp 369 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 370 36))
                                       (display "\n")
                                       (f7319 x7509 x7508)))))
                                  (begin
                                    (write '(funapp 371 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7507)))))
                               g7506))))
                          g7505))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7504
                            (begin
                              (write '(funapp 376 53))
                              (display "\n")
                              (orig-- a b))))
                          g7504))))))
                  g7503)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 380 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 380 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7510
                    (begin
                      (write '(funapp 383 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7512
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7513
                                 (letrec*
                                  ((x7514
                                    (letrec*
                                     ((x7516
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7515
                                       (begin
                                         (write '(funapp 393 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 394 36))
                                       (display "\n")
                                       (f7326 x7516 x7515)))))
                                  (begin
                                    (write '(funapp 395 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7514)))))
                               g7513))))
                          g7512))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7511
                            (begin
                              (write '(funapp 400 53))
                              (display "\n")
                              (orig-* a b))))
                          g7511))))))
                  g7510)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 404 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 404 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7517
                    (begin
                      (write '(funapp 407 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7519
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7520
                                 (letrec*
                                  ((x7521
                                    (letrec*
                                     ((x7523
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7522
                                       (begin
                                         (write '(funapp 417 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 418 36))
                                       (display "\n")
                                       (f7333 x7523 x7522)))))
                                  (begin
                                    (write '(funapp 419 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7521)))))
                               g7520))))
                          g7519))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7518
                            (begin
                              (write '(funapp 424 53))
                              (display "\n")
                              (orig-< a b))))
                          g7518))))))
                  g7517)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 428 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 428 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7524
                    (begin
                      (write '(funapp 431 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7526
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7527
                                 (letrec*
                                  ((x7528
                                    (letrec*
                                     ((x7530
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7529
                                       (begin
                                         (write '(funapp 441 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 442 36))
                                       (display "\n")
                                       (f7340 x7530 x7529)))))
                                  (begin
                                    (write '(funapp 443 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7528)))))
                               g7527))))
                          g7526))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7525
                            (begin
                              (write '(funapp 448 53))
                              (display "\n")
                              (orig-> a b))))
                          g7525))))))
                  g7524)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 452 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 452 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7531
                    (begin
                      (write '(funapp 455 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7533
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7534
                                 (letrec*
                                  ((x7535
                                    (letrec*
                                     ((x7537
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7536
                                       (begin
                                         (write '(funapp 465 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 466 36))
                                       (display "\n")
                                       (f7347 x7537 x7536)))))
                                  (begin
                                    (write '(funapp 467 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7535)))))
                               g7534))))
                          g7533))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7532
                            (begin
                              (write '(funapp 472 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7532))))))
                  g7531)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 476 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 476 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7538
                    (begin
                      (write '(funapp 479 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7540
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7541
                                 (letrec*
                                  ((x7542
                                    (letrec*
                                     ((x7544
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7543
                                       (begin
                                         (write '(funapp 489 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 490 36))
                                       (display "\n")
                                       (f7354 x7544 x7543)))))
                                  (begin
                                    (write '(funapp 491 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7542)))))
                               g7541))))
                          g7540))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7539
                            (begin
                              (write '(funapp 496 53))
                              (display "\n")
                              (orig->= a b))))
                          g7539))))))
                  g7538)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 500 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 500 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7545
                    (begin
                      (write '(funapp 503 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7547
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7548
                                 (letrec*
                                  ((x7549
                                    (letrec*
                                     ((x7551
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7550
                                       (begin
                                         (write '(funapp 513 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 514 36))
                                       (display "\n")
                                       (f7361 x7551 x7550)))))
                                  (begin
                                    (write '(funapp 515 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7549)))))
                               g7548))))
                          g7547))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7546
                            (begin
                              (write '(funapp 520 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7546))))))
                  g7545)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 524 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 524 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7552
                    (begin
                      (write '(funapp 527 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7554
                            (lambda (g7364)
                              (letrec*
                               ((g7555
                                 (letrec*
                                  ((x7556
                                    (letrec*
                                     ((x7557
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7367 x7557)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7556)))))
                               g7555))))
                          g7554))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7553
                            (begin
                              (write '(funapp 543 51))
                              (display "\n")
                              (orig-car p))))
                          g7553))))))
                  g7552)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7558
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7560
                            (lambda (g7370)
                              (letrec*
                               ((g7561
                                 (letrec*
                                  ((x7562
                                    (letrec*
                                     ((x7563
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 560 36))
                                       (display "\n")
                                       (f7373 x7563)))))
                                  (begin
                                    (write '(funapp 561 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7562)))))
                               g7561))))
                          g7560))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7559
                            (begin
                              (write '(funapp 566 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7559))))))
                  g7558)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 570 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 570 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7564
                    (begin
                      (write '(funapp 573 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7566
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7567
                                 (letrec*
                                  ((x7568
                                    (letrec*
                                     ((x7570
                                       (begin
                                         (write '(funapp 582 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7569
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7380 x7570 x7569)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7568)))))
                               g7567))))
                          g7566))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7565
                            (begin
                              (write '(funapp 591 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7565))))))
                  g7564)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7571
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7573
                            (lambda (g7383)
                              (letrec*
                               ((g7574
                                 (letrec*
                                  ((x7575
                                    (letrec*
                                     ((x7576
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7386 x7576)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7575)))))
                               g7574))))
                          g7573))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7572
                            (begin
                              (write '(funapp 615 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7572))))))
                  g7571)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7577
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7579
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7580
                                 (letrec*
                                  ((x7581
                                    (letrec*
                                     ((x7583
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7582
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7393 x7583 x7582)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7581)))))
                               g7580))))
                          g7579))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7578
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7578))))))
                  g7577)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7584
                     (if cnd
                       (begin (write '(funapp 645 35)) (display "\n") '())
                       (begin
                         (write '(funapp 645 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7584)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7585
                     (letrec*
                      ((x7586
                        (letrec*
                         ((x7587
                           (begin
                             (write '(funapp 652 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 652 58))
                           (display "\n")
                           (cdr x7587)))))
                      (begin
                        (write '(funapp 653 23))
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
                          (write '(funapp 659 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 659 62))
                        (display "\n")
                        (assert x7591))))
                    (g7589
                     (letrec*
                      ((x7592
                        (begin
                          (write '(funapp 660 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 660 57))
                        (display "\n")
                        (assert x7592))))
                    (g7590
                     (letrec*
                      ((x-cnd7593
                        (begin
                          (write '(funapp 663 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7593
                        (begin (write '(funapp 665 24)) (display "\n") '())
                        (letrec*
                         ((x7596
                           (letrec*
                            ((x7597
                              (begin
                                (write '(funapp 667 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 667 61))
                              (display "\n")
                              (f x7597))))
                          (x7594
                           (letrec*
                            ((x7595
                              (begin
                                (write '(funapp 668 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 668 61))
                              (display "\n")
                              (map f x7595)))))
                         (begin
                           (write '(funapp 669 26))
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
                          (write '(funapp 674 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 674 55))
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
                                (write '(funapp 683 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 683 61))
                              (display "\n")
                              (car x7603)))))
                         (begin
                           (write '(funapp 684 26))
                           (display "\n")
                           (cdr x7602)))))
                      (begin
                        (write '(funapp 685 23))
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
                                (write '(funapp 694 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 694 61))
                              (display "\n")
                              (cdr x7607)))))
                         (begin
                           (write '(funapp 695 26))
                           (display "\n")
                           (car x7606)))))
                      (begin
                        (write '(funapp 696 23))
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
                          (write '(funapp 702 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 702 60))
                        (display "\n")
                        (assert x7611))))
                    (g7609
                     (letrec*
                      ((x7612
                        (begin
                          (write '(funapp 704 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 704 59))
                        (display "\n")
                        (assert x7612))))
                    (g7610
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
                       ((g7613
                         (begin
                           (write '(funapp 710 32))
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
                             (write '(funapp 718 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 718 58))
                           (display "\n")
                           (cdr x7617)))))
                      (begin
                        (write '(funapp 719 23))
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
                                (write '(funapp 728 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 728 61))
                              (display "\n")
                              (car x7621)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (car x7620)))))
                      (begin
                        (write '(funapp 730 23))
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
                          (write '(funapp 735 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 735 57))
                        (display "\n")
                        (assert x7624))))
                    (g7623
                     (letrec*
                      ((x-cnd7625
                        (begin
                          (write '(funapp 738 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7625
                        #f
                        (letrec*
                         ((x-cnd7626
                           (letrec*
                            ((x7627
                              (begin
                                (write '(funapp 743 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 743 56))
                              (display "\n")
                              (eq? x7627 k)))))
                         (if x-cnd7626
                           (begin
                             (write '(funapp 745 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7628
                              (begin
                                (write '(funapp 746 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 746 55))
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
                          (write '(funapp 751 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 751 60))
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
                          (write '(funapp 756 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 756 57))
                        (display "\n")
                        (assert x7633))))
                    (g7632
                     (letrec*
                      ((x-cnd7634
                        (begin
                          (write '(funapp 759 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7634
                        ""
                        (letrec*
                         ((x7637
                           (letrec*
                            ((x7638
                              (begin
                                (write '(funapp 764 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 764 55))
                              (display "\n")
                              (char->string x7638))))
                          (x7635
                           (letrec*
                            ((x7636
                              (begin
                                (write '(funapp 766 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 766 55))
                              (display "\n")
                              (list->string x7636)))))
                         (begin
                           (write '(funapp 767 26))
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
                          (write '(funapp 772 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 772 58))
                        (display "\n")
                        (assert x7642))))
                    (g7640
                     (letrec*
                      ((x7643
                        (begin
                          (write '(funapp 773 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 773 58))
                        (display "\n")
                        (assert x7643))))
                    (g7641
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 776 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7644
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 778 52))
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
                                (write '(funapp 788 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 788 61))
                              (display "\n")
                              (cdr x7648)))))
                         (begin
                           (write '(funapp 789 26))
                           (display "\n")
                           (cdr x7647)))))
                      (begin
                        (write '(funapp 790 23))
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
                          (write '(funapp 795 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 795 57))
                        (display "\n")
                        (assert x7652))))
                    (g7650
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 796 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 796 57))
                        (display "\n")
                        (assert x7653))))
                    (g7651
                     (letrec*
                      ((x-cnd7654
                        (begin
                          (write '(funapp 799 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7654
                        x
                        (letrec*
                         ((x7656
                           (begin
                             (write '(funapp 803 34))
                             (display "\n")
                             (cdr x)))
                          (x7655
                           (begin
                             (write '(funapp 803 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (list-tail x7656 x7655)))))))
                   g7651)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7657
                     (begin (write '(funapp 806 49)) (display "\n") '())))
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
                           (write '(funapp 813 48))
                           (display "\n")
                           (char-ci>=? c x7660)))))
                      (if x-cnd7659
                        (letrec*
                         ((x7661 #\z))
                         (begin
                           (write '(funapp 815 48))
                           (display "\n")
                           (char-ci<=? c x7661)))
                        #f))))
                   g7658)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7663
                           (begin
                             (write '(funapp 824 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 824 62))
                           (display "\n")
                           (= x7663 9)))))
                      (letrec*
                       ((g7664
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7665
                                 (begin
                                   (write '(funapp 832 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 833 32))
                                 (display "\n")
                                 (= x7665 10)))))
                            (letrec*
                             ((g7666
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7667
                                    (begin
                                      (write '(funapp 839 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 840 35))
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
                             (write '(funapp 849 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 849 58))
                           (display "\n")
                           (cdr x7670)))))
                      (begin
                        (write '(funapp 850 23))
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
                          (write '(funapp 855 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 855 59))
                        (display "\n")
                        (assert x7673))))
                    (g7672
                     (begin (write '(funapp 856 28)) (display "\n") (> x 0))))
                   g7672)))
               ($pc (begin (write '(funapp 858 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7674 #f)) g7674)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7675
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 864 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 864 55))
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
                          (write '(funapp 869 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 869 59))
                        (display "\n")
                        (assert x7679))))
                    (g7678
                     (letrec*
                      ((x-cnd7680
                        (begin
                          (write '(funapp 872 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7680
                        (begin
                          (write '(funapp 873 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 873 49))
                          (display "\n")
                          (floor x))))))
                   g7678)))
               ($cmp (begin (write '(funapp 875 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7681
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 881 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7682
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7683
                                 (begin
                                   (write '(funapp 889 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7683
                                 (begin
                                   (write '(funapp 890 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7684
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7685
                                       (begin
                                         (write '(funapp 898 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7685
                                       (letrec*
                                        ((x-cnd7686
                                          (begin
                                            (write '(funapp 901 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7686
                                          (begin
                                            (write '(funapp 902 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7687
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7688
                                             (begin
                                               (write '(funapp 911 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7688
                                             (letrec*
                                              ((x-cnd7689
                                                (begin
                                                  (write '(funapp 914 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7689
                                                (letrec*
                                                 ((x-cnd7690
                                                   (letrec*
                                                    ((x7692
                                                      (begin
                                                        (write
                                                         '(funapp 919 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7691
                                                      (begin
                                                        (write
                                                         '(funapp 920 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 921 53))
                                                      (display "\n")
                                                      (equal? x7692 x7691)))))
                                                 (if x-cnd7690
                                                   (letrec*
                                                    ((x7694
                                                      (begin
                                                        (write
                                                         '(funapp 924 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7693
                                                      (begin
                                                        (write
                                                         '(funapp 925 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 926 53))
                                                      (display "\n")
                                                      (equal? x7694 x7693)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7695
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7696
                                                (begin
                                                  (write '(funapp 935 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7696
                                                (letrec*
                                                 ((x-cnd7697
                                                   (begin
                                                     (write '(funapp 938 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7697
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 941 57))
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
                                                                  948
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 950 60))
                                                             (display "\n")
                                                             (= x7700 n)))))
                                                        (if x-cnd7699
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7701
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
                                                                    ((g7702
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7703
                                                                           (letrec*
                                                                            ((x7705
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
                                                                             (x7704
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
                                                                               x7705
                                                                               x7704)))))
                                                                         (if x-cnd7703
                                                                           (letrec*
                                                                            ((x7706
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
                                                                               x7706)))
                                                                           #f)))))
                                                                    g7702))))
                                                                g7701))))
                                                           (letrec*
                                                            ((g7707
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   990
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
                                (write '(funapp 1008 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1008 61))
                              (display "\n")
                              (car x7711)))))
                         (begin
                           (write '(funapp 1009 26))
                           (display "\n")
                           (car x7710)))))
                      (begin
                        (write '(funapp 1010 23))
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
                                (write '(funapp 1019 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1019 61))
                              (display "\n")
                              (cdr x7715)))))
                         (begin
                           (write '(funapp 1020 26))
                           (display "\n")
                           (car x7714)))))
                      (begin
                        (write '(funapp 1021 23))
                        (display "\n")
                        (car x7713)))))
                   g7712)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7716
                     (begin
                       (write '(funapp 1023 53))
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
                          (write '(funapp 1028 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1028 60))
                        (display "\n")
                        (assert x7720))))
                    (g7718
                     (letrec*
                      ((x7721
                        (begin
                          (write '(funapp 1030 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1030 59))
                        (display "\n")
                        (assert x7721))))
                    (g7719
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
                       ((g7722
                         (begin
                           (write '(funapp 1036 32))
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
                       (write '(funapp 1039 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1039 57))
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
                          (write '(funapp 1043 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1043 58))
                        (display "\n")
                        (assert x7728))))
                    (g7726
                     (letrec*
                      ((x7729
                        (begin
                          (write '(funapp 1044 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1044 58))
                        (display "\n")
                        (assert x7729))))
                    (g7727
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1047 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7730
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1049 52))
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
                             (write '(funapp 1057 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1057 58))
                           (display "\n")
                           (car x7733)))))
                      (begin
                        (write '(funapp 1058 23))
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
                                (write '(funapp 1067 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1067 61))
                              (display "\n")
                              (cdr x7737)))))
                         (begin
                           (write '(funapp 1068 26))
                           (display "\n")
                           (car x7736)))))
                      (begin
                        (write '(funapp 1069 23))
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
                             (write '(funapp 1077 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1077 58))
                           (display "\n")
                           (cdr x7740)))))
                      (begin
                        (write '(funapp 1078 23))
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
                             (write '(funapp 1085 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (car x7743)))))
                      (begin
                        (write '(funapp 1086 23))
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
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1091 58))
                        (display "\n")
                        (assert x7747))))
                    (g7745
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1092 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1092 58))
                        (display "\n")
                        (assert x7748))))
                    (g7746
                     (letrec*
                      ((x7749
                        (begin
                          (write '(funapp 1093 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1093 66))
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
                                (write '(funapp 1103 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1103 61))
                              (display "\n")
                              (car x7753)))))
                         (begin
                           (write '(funapp 1104 26))
                           (display "\n")
                           (car x7752)))))
                      (begin
                        (write '(funapp 1105 23))
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
                          (write '(funapp 1110 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1110 59))
                        (display "\n")
                        (assert x7756))))
                    (g7755
                     (begin (write '(funapp 1111 28)) (display "\n") (< x 0))))
                   g7755)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7757
                     (begin
                       (write '(funapp 1113 53))
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
                             (write '(funapp 1119 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1119 58))
                           (display "\n")
                           (car x7760)))))
                      (begin
                        (write '(funapp 1120 23))
                        (display "\n")
                        (car x7759)))))
                   g7758)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7761
                     (begin (write '(funapp 1122 51)) (display "\n") '())))
                   g7761)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7764
                        (begin
                          (write '(funapp 1126 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1126 57))
                        (display "\n")
                        (assert x7764))))
                    (g7763
                     (letrec*
                      ((x-cnd7765
                        (begin
                          (write '(funapp 1129 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7765
                        (begin (write '(funapp 1131 24)) (display "\n") '())
                        (letrec*
                         ((x7768
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1133 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1133 61))
                              (display "\n")
                              (reverse x7769))))
                          (x7766
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (list x7767)))))
                         (begin
                           (write '(funapp 1135 26))
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
                                (write '(funapp 1144 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1144 61))
                              (display "\n")
                              (car x7773)))))
                         (begin
                           (write '(funapp 1145 26))
                           (display "\n")
                           (car x7772)))))
                      (begin
                        (write '(funapp 1146 23))
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
                                (write '(funapp 1155 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1155 61))
                              (display "\n")
                              (car x7777)))))
                         (begin
                           (write '(funapp 1156 26))
                           (display "\n")
                           (cdr x7776)))))
                      (begin
                        (write '(funapp 1157 23))
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
                          (write '(funapp 1162 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1162 59))
                        (display "\n")
                        (assert x7780))))
                    (g7779
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 1163 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1163 60))
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
                                (write '(funapp 1172 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1172 61))
                              (display "\n")
                              (cdr x7785)))))
                         (begin
                           (write '(funapp 1173 26))
                           (display "\n")
                           (car x7784)))))
                      (begin
                        (write '(funapp 1174 23))
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
                          (write '(funapp 1180 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1180 59))
                        (display "\n")
                        (assert x7789))))
                    (g7787
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 1181 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1181 60))
                        (display "\n")
                        (assert x7790))))
                    (g7788
                     (letrec*
                      ((x-cnd7791
                        (begin
                          (write '(funapp 1184 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7791
                        (letrec*
                         ((g7792
                           (begin
                             (write '(funapp 1186 42))
                             (display "\n")
                             (proc))))
                         g7792)
                        (letrec*
                         ((x-cnd7793
                           (letrec*
                            ((x7794
                              (begin
                                (write '(funapp 1189 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1189 58))
                              (display "\n")
                              (null? x7794)))))
                         (if x-cnd7793
                           (letrec*
                            ((g7795
                              (letrec*
                               ((x7796
                                 (begin
                                   (write '(funapp 1193 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1193 61))
                                 (display "\n")
                                 (proc x7796)))))
                            g7795)
                           (letrec*
                            ((x-cnd7797
                              (letrec*
                               ((x7798
                                 (begin
                                   (write '(funapp 1197 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1197 62))
                                 (display "\n")
                                 (null? x7798)))))
                            (if x-cnd7797
                              (letrec*
                               ((g7799
                                 (letrec*
                                  ((x7801
                                    (begin
                                      (write '(funapp 1202 43))
                                      (display "\n")
                                      (car args)))
                                   (x7800
                                    (begin
                                      (write '(funapp 1202 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1203 35))
                                    (display "\n")
                                    (proc x7801 x7800)))))
                               g7799)
                              (letrec*
                               ((x-cnd7802
                                 (letrec*
                                  ((x7803
                                    (begin
                                      (write '(funapp 1208 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1209 35))
                                    (display "\n")
                                    (null? x7803)))))
                               (if x-cnd7802
                                 (letrec*
                                  ((g7804
                                    (letrec*
                                     ((x7807
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (car args)))
                                      (x7806
                                       (begin
                                         (write '(funapp 1215 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7805
                                       (begin
                                         (write '(funapp 1216 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1217 38))
                                       (display "\n")
                                       (proc x7807 x7806 x7805)))))
                                  g7804)
                                 (letrec*
                                  ((x-cnd7808
                                    (letrec*
                                     ((x7809
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1223 38))
                                       (display "\n")
                                       (null? x7809)))))
                                  (if x-cnd7808
                                    (letrec*
                                     ((g7810
                                       (letrec*
                                        ((x7814
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (car args)))
                                         (x7813
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7812
                                          (begin
                                            (write '(funapp 1230 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7811
                                          (begin
                                            (write '(funapp 1231 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1232 41))
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
                                               (write '(funapp 1239 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1240 44))
                                             (display "\n")
                                             (cdr x7817)))))
                                        (begin
                                          (write '(funapp 1241 41))
                                          (display "\n")
                                          (null? x7816)))))
                                     (if x-cnd7815
                                       (letrec*
                                        ((g7818
                                          (letrec*
                                           ((x7824
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (car args)))
                                            (x7823
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7822
                                             (begin
                                               (write '(funapp 1248 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7821
                                             (begin
                                               (write '(funapp 1249 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7819
                                             (letrec*
                                              ((x7820
                                                (begin
                                                  (write '(funapp 1252 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1253 47))
                                                (display "\n")
                                                (car x7820)))))
                                           (begin
                                             (write '(funapp 1254 44))
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
                                                  (write '(funapp 1266 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1267 47))
                                                (display "\n")
                                                (cddr x7827)))))
                                           (begin
                                             (write '(funapp 1268 44))
                                             (display "\n")
                                             (null? x7826)))))
                                        (if x-cnd7825
                                          (letrec*
                                           ((g7828
                                             (letrec*
                                              ((x7836
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7835
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7834
                                                (begin
                                                  (write '(funapp 1275 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7833
                                                (begin
                                                  (write '(funapp 1276 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7831
                                                (letrec*
                                                 ((x7832
                                                   (begin
                                                     (write '(funapp 1279 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1280 50))
                                                   (display "\n")
                                                   (car x7832))))
                                               (x7829
                                                (letrec*
                                                 ((x7830
                                                   (begin
                                                     (write '(funapp 1283 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1284 50))
                                                   (display "\n")
                                                   (cadr x7830)))))
                                              (begin
                                                (write '(funapp 1285 47))
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
                                                     (write '(funapp 1298 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1299 50))
                                                   (display "\n")
                                                   (cdddr x7839)))))
                                              (begin
                                                (write '(funapp 1300 47))
                                                (display "\n")
                                                (null? x7838)))))
                                           (if x-cnd7837
                                             (letrec*
                                              ((g7840
                                                (letrec*
                                                 ((x7850
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7849
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7848
                                                   (begin
                                                     (write '(funapp 1307 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7847
                                                   (begin
                                                     (write '(funapp 1308 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7845
                                                   (letrec*
                                                    ((x7846
                                                      (begin
                                                        (write
                                                         '(funapp 1311 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1312 53))
                                                      (display "\n")
                                                      (car x7846))))
                                                  (x7843
                                                   (letrec*
                                                    ((x7844
                                                      (begin
                                                        (write
                                                         '(funapp 1315 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1316 53))
                                                      (display "\n")
                                                      (cadr x7844))))
                                                  (x7841
                                                   (letrec*
                                                    ((x7842
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (caddr x7842)))))
                                                 (begin
                                                   (write '(funapp 1321 50))
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
                                                  (write '(funapp 1332 49))
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
                          (write '(funapp 1338 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1338 57))
                        (display "\n")
                        (assert x7854))))
                    (g7853
                     (letrec*
                      ((x-cnd7855
                        (begin
                          (write '(funapp 1341 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7855
                        #f
                        (letrec*
                         ((x-cnd7856
                           (letrec*
                            ((x7857
                              (begin
                                (write '(funapp 1346 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1346 55))
                              (display "\n")
                              (equal? x7857 e)))))
                         (if x-cnd7856
                           l
                           (letrec*
                            ((x7858
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1349 55))
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
                                (write '(funapp 1358 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1358 61))
                              (display "\n")
                              (cdr x7862)))))
                         (begin
                           (write '(funapp 1359 26))
                           (display "\n")
                           (cdr x7861)))))
                      (begin
                        (write '(funapp 1360 23))
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
                                (write '(funapp 1369 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1369 61))
                              (display "\n")
                              (cdr x7866)))))
                         (begin
                           (write '(funapp 1370 26))
                           (display "\n")
                           (cdr x7865)))))
                      (begin
                        (write '(funapp 1371 23))
                        (display "\n")
                        (car x7864)))))
                   g7863)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7867
                     (begin
                       (write '(funapp 1373 53))
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
                          (write '(funapp 1377 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1377 59))
                        (display "\n")
                        (assert x7870))))
                    (g7869
                     (begin (write '(funapp 1378 28)) (display "\n") (= x 0))))
                   g7869)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1385 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7872
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1387 52))
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
                          (write '(funapp 1393 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1393 55))
                        (display "\n")
                        (car x7874)))))
                   g7873)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7876
                           (begin
                             (write '(funapp 1403 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7876
                           (letrec*
                            ((x7877
                              (begin
                                (write '(funapp 1405 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1405 55))
                              (display "\n")
                              (list? x7877)))
                           #f))))
                      (letrec*
                       ((g7878
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1408 52))
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
                                (write '(funapp 1418 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1418 61))
                              (display "\n")
                              (car x7882)))))
                         (begin
                           (write '(funapp 1419 26))
                           (display "\n")
                           (cdr x7881)))))
                      (begin
                        (write '(funapp 1420 23))
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
                           (write '(funapp 1427 58))
                           (display "\n")
                           (char<=? x7885 c)))))
                      (if x-cnd7884
                        (letrec*
                         ((x7886 #\9))
                         (begin
                           (write '(funapp 1429 48))
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
                          (write '(funapp 1436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1436 57))
                        (display "\n")
                        (assert x7889))))
                    (g7888
                     (letrec*
                      ((x-cnd7890
                        (begin
                          (write '(funapp 1439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7890
                        #f
                        (letrec*
                         ((x-cnd7891
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 1444 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1444 56))
                              (display "\n")
                              (eqv? x7892 k)))))
                         (if x-cnd7891
                           (begin
                             (write '(funapp 1446 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7893
                              (begin
                                (write '(funapp 1447 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1447 55))
                              (display "\n")
                              (assq k x7893)))))))))
                   g7888)))
               (not (lambda (x) (letrec* ((g7894 (if x #f #t))) g7894)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7895
                     (begin
                       (write '(funapp 1451 50))
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
                          (write '(funapp 1455 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1455 57))
                        (display "\n")
                        (assert x7898))))
                    (g7897
                     (letrec*
                      ((x-cnd7899
                        (begin
                          (write '(funapp 1458 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7899
                        #f
                        (letrec*
                         ((x-cnd7900
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 1463 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1463 55))
                              (display "\n")
                              (eq? x7901 e)))))
                         (if x-cnd7900
                           l
                           (letrec*
                            ((x7902
                              (begin
                                (write '(funapp 1466 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1466 55))
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
                                (write '(funapp 1475 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1475 61))
                              (display "\n")
                              (car x7906)))))
                         (begin
                           (write '(funapp 1476 26))
                           (display "\n")
                           (cdr x7905)))))
                      (begin
                        (write '(funapp 1477 23))
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
                          (write '(funapp 1482 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1482 57))
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
                                  (write '(funapp 1490 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7911
                                0
                                (letrec*
                                 ((x7912
                                   (letrec*
                                    ((x7913
                                      (begin
                                        (write '(funapp 1495 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1495 63))
                                      (display "\n")
                                      (rec x7913)))))
                                 (begin
                                   (write '(funapp 1496 34))
                                   (display "\n")
                                   (+ 1 x7912)))))))
                           g7910))))
                      (letrec*
                       ((g7914
                         (begin
                           (write '(funapp 1498 40))
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
                          (write '(funapp 1503 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1503 58))
                        (display "\n")
                        (assert x7918))))
                    (g7916
                     (letrec*
                      ((x7919
                        (begin
                          (write '(funapp 1504 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1504 58))
                        (display "\n")
                        (assert x7919))))
                    (g7917
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1507 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7920
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1509 52))
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
                          (write '(funapp 1515 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1515 65))
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
                             (write '(funapp 1522 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1522 58))
                           (display "\n")
                           (car x7925)))))
                      (begin
                        (write '(funapp 1523 23))
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
                          (write '(funapp 1528 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1528 57))
                        (display "\n")
                        (assert x7928))))
                    (g7927
                     (letrec*
                      ((x-cnd7929
                        (begin
                          (write '(funapp 1531 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7929
                        #f
                        (letrec*
                         ((x-cnd7930
                           (letrec*
                            ((x7931
                              (begin
                                (write '(funapp 1536 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1536 56))
                              (display "\n")
                              (equal? x7931 k)))))
                         (if x-cnd7930
                           (begin
                             (write '(funapp 1538 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7932
                              (begin
                                (write '(funapp 1539 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1539 55))
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
                          (write '(funapp 1544 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1544 55))
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
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7938))))
                    (g7936
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1550 58))
                        (display "\n")
                        (assert x7939))))
                    (g7937
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1551 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1551 63))
                        (display "\n")
                        (not x7940)))))
                   g7937)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1558 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7942
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1560 52))
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
                          (write '(funapp 1566 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1566 62))
                        (display "\n")
                        (assert x7946))))
                    (g7944
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1567 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1567 57))
                        (display "\n")
                        (assert x7947))))
                    (g7945
                     (letrec*
                      ((x-cnd7948
                        (begin
                          (write '(funapp 1570 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7948
                        #t
                        (letrec*
                         ((x-cnd7949
                           (begin
                             (write '(funapp 1574 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7949
                           (letrec*
                            ((g7950
                              (letrec*
                               ((x7952
                                 (begin
                                   (write '(funapp 1577 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1577 64))
                                 (display "\n")
                                 (f x7952))))
                             (g7951
                              (letrec*
                               ((x7953
                                 (begin
                                   (write '(funapp 1579 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1579 58))
                                 (display "\n")
                                 (for-each f x7953)))))
                            g7951)
                           (begin
                             (write '(funapp 1581 27))
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
                          (write '(funapp 1586 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1586 59))
                        (display "\n")
                        (assert x7956))))
                    (g7955
                     (letrec*
                      ((x-cnd7957
                        (begin
                          (write '(funapp 1588 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7957
                        (begin
                          (write '(funapp 1588 67))
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
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7961))))
                    (g7959
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7962))))
                    (g7960
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1597 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7963
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1599 52))
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
                                (write '(funapp 1609 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1609 61))
                              (display "\n")
                              (cdr x7967)))))
                         (begin
                           (write '(funapp 1610 26))
                           (display "\n")
                           (cdr x7966)))))
                      (begin
                        (write '(funapp 1611 23))
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
                             (write '(funapp 1619 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1619 58))
                           (display "\n")
                           (abs x7972))))
                       (x7970
                        (begin
                          (write '(funapp 1620 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1621 23))
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
                          (write '(funapp 1627 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1627 57))
                        (display "\n")
                        (assert x7977))))
                    (g7974
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 1628 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1628 63))
                        (display "\n")
                        (assert x7978))))
                    (g7975
                     (letrec*
                      ((x7979
                        (letrec*
                         ((x7980
                           (begin
                             (write '(funapp 1631 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1631 61))
                           (display "\n")
                           (< index x7980)))))
                      (begin
                        (write '(funapp 1632 23))
                        (display "\n")
                        (assert x7979))))
                    (g7976
                     (letrec*
                      ((x-cnd7981
                        (begin
                          (write '(funapp 1635 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7981
                        (begin
                          (write '(funapp 1637 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7983
                           (begin
                             (write '(funapp 1639 34))
                             (display "\n")
                             (cdr l)))
                          (x7982
                           (begin
                             (write '(funapp 1639 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1640 26))
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
                          (write '(funapp 1647 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7985
                        a
                        (letrec*
                         ((x7986
                           (begin
                             (write '(funapp 1650 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1650 57))
                           (display "\n")
                           (gcd b x7986)))))))
                   g7984)))
               (zip
                (lambda (xs ys)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x-cnd7988
                        (letrec*
                         ((x7990
                           (begin
                             (write '(funapp 1659 34))
                             (display "\n")
                             (empty? xs)))
                          (x7989
                           (begin
                             (write '(funapp 1659 54))
                             (display "\n")
                             (empty? ys))))
                         (begin
                           (write '(funapp 1660 26))
                           (display "\n")
                           (and x7990 x7989)))))
                      (if x-cnd7988
                        (letrec* ((g7991 empty)) g7991)
                        (letrec*
                         ((x-cnd7992
                           (letrec*
                            ((x7994
                              (begin
                                (write '(funapp 1666 37))
                                (display "\n")
                                (cons? xs)))
                             (x7993
                              (begin
                                (write '(funapp 1666 56))
                                (display "\n")
                                (cons? ys))))
                            (begin
                              (write '(funapp 1667 29))
                              (display "\n")
                              (and x7994 x7993)))))
                         (if x-cnd7992
                           (letrec*
                            ((g7995
                              (letrec*
                               ((x7999
                                 (letrec*
                                  ((x8001
                                    (begin
                                      (write '(funapp 1674 43))
                                      (display "\n")
                                      (car xs)))
                                   (x8000
                                    (begin
                                      (write '(funapp 1674 60))
                                      (display "\n")
                                      (car ys))))
                                  (begin
                                    (write '(funapp 1675 35))
                                    (display "\n")
                                    (cons x8001 x8000))))
                                (x7996
                                 (letrec*
                                  ((x7998
                                    (begin
                                      (write '(funapp 1678 43))
                                      (display "\n")
                                      (cdr xs)))
                                   (x7997
                                    (begin
                                      (write '(funapp 1678 60))
                                      (display "\n")
                                      (cdr ys))))
                                  (begin
                                    (write '(funapp 1679 35))
                                    (display "\n")
                                    (zip x7998 x7997)))))
                               (begin
                                 (write '(funapp 1680 32))
                                 (display "\n")
                                 (cons x7999 x7996)))))
                            g7995)
                           (letrec*
                            ((g8002
                              (begin
                                (write '(funapp 1682 44))
                                (display "\n")
                                'fail)))
                            g8002)))))))
                   g7987)))
               (mk-list
                (lambda (n)
                  (letrec*
                   ((g8003
                     (letrec*
                      ((x-cnd8004
                        (begin
                          (write '(funapp 1689 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd8004
                        empty
                        (letrec*
                         ((x8005
                           (letrec*
                            ((x8006
                              (begin
                                (write '(funapp 1693 51))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1693 61))
                              (display "\n")
                              (mk-list x8006)))))
                         (begin
                           (write '(funapp 1694 26))
                           (display "\n")
                           (cons n x8005)))))))
                   g8003)))
               (main
                (lambda (n)
                  (letrec*
                   ((g8007
                     (letrec*
                      ((xs
                        (begin
                          (write '(funapp 1701 28))
                          (display "\n")
                          (mk-list n))))
                      (letrec*
                       ((g8008
                         (begin
                           (write '(funapp 1702 40))
                           (display "\n")
                           (zip xs xs))))
                       g8008))))
                   g8007))))
              (letrec*
               ((g8009
                 (begin
                   (write '(funapp 1706 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1707 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8011
                          (letrec*
                           ((xj7394
                             (begin
                               (write '(funapp 1711 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1711 37))
                                  (display "\n")
                                  'module))))
                            (xk7395
                             (begin
                               (write '(funapp 1711 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1711 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8012
                              (begin
                                (write '(funapp 1714 27))
                                (display "\n")
                                ((lambda (j7397 k7398 f7399)
                                   (letrec*
                                    ((g8013
                                      (lambda (g7396)
                                        (letrec*
                                         ((g8014
                                           (letrec*
                                            ((x8017
                                              (begin
                                                (write '(funapp 1721 47))
                                                (display "\n")
                                                (listof integer?/c)))
                                             (x8015
                                              (letrec*
                                               ((x8016
                                                 (begin
                                                   (write '(funapp 1725 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7397
                                                    k7398
                                                    g7396))))
                                               (begin
                                                 (write '(funapp 1726 42))
                                                 (display "\n")
                                                 (f7399 x8016)))))
                                            (begin
                                              (write '(funapp 1727 39))
                                              (display "\n")
                                              (x8017 j7397 k7398 x8015)))))
                                         g8014))))
                                    g8013))
                                 xj7394
                                 xk7395
                                 mk-list))))
                            g8012)))
                         (x8010 (input)))
                        (begin
                          (write '(funapp 1735 21))
                          (display "\n")
                          (x8011 x8010)))
                       (letrec*
                        ((x8019
                          (letrec*
                           ((xj7400
                             (begin
                               (write '(funapp 1739 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1739 37))
                                  (display "\n")
                                  'module))))
                            (xk7401
                             (begin
                               (write '(funapp 1739 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1739 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8020
                              (begin
                                (write '(funapp 1742 27))
                                (display "\n")
                                ((lambda (j7403 k7404 f7405)
                                   (letrec*
                                    ((g8021
                                      (lambda (g7402)
                                        (letrec*
                                         ((g8022
                                           (letrec*
                                            ((x8025
                                              (letrec*
                                               ((x8026
                                                 (begin
                                                   (write '(funapp 1752 44))
                                                   (display "\n")
                                                   (cons/c
                                                    integer?/c
                                                    integer?/c))))
                                               (begin
                                                 (write '(funapp 1753 42))
                                                 (display "\n")
                                                 (listof x8026))))
                                             (x8023
                                              (letrec*
                                               ((x8024
                                                 (begin
                                                   (write '(funapp 1757 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7403
                                                    k7404
                                                    g7402))))
                                               (begin
                                                 (write '(funapp 1758 42))
                                                 (display "\n")
                                                 (f7405 x8024)))))
                                            (begin
                                              (write '(funapp 1759 39))
                                              (display "\n")
                                              (x8025 j7403 k7404 x8023)))))
                                         g8022))))
                                    g8021))
                                 xj7400
                                 xk7401
                                 main))))
                            g8020)))
                         (x8018 (input)))
                        (begin
                          (write '(funapp 1767 21))
                          (display "\n")
                          (x8019 x8018)))))))))
               g8009))))
           g7433))))
       g7417)))
    g7416)))
