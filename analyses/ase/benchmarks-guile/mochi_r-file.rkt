(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7407 #t)) g7407)))
    (meta (lambda (v) (letrec* ((g7408 v)) g7408)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7409
          (letrec*
           ((g7410
             (letrec*
              ((x-e7411 lst))
              (letrec*
               ((v1742 x-e7411))
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
                   ((x-cnd7412
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7412
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
           g7410)))
        g7409)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7413 (lambda (v) (letrec* ((g7414 v)) g7414)))) g7413)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7415
          (letrec*
           ((x7416 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7416)))))
        g7415))))
   (letrec*
    ((g7417
      (letrec*
       ((g7418
         (letrec*
          ((>=
            (lambda (x y)
              (letrec*
               ((g7419
                 (letrec*
                  ((x7421
                    (begin
                      (write '(funapp 47 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 47 55))
                    (display "\n")
                    (assert x7421))))
                (g7420
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 50 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7422
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 56 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7423 (if val7244 val7244 #f))) g7423)))))
                   g7422))))
               g7420)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7424
                 (letrec*
                  ((x7426
                    (begin
                      (write '(funapp 63 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 63 55))
                    (display "\n")
                    (assert x7426))))
                (g7425
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 66 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7427
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 72 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7428 (if val7246 val7246 #f))) g7428)))))
                   g7427))))
               g7425)))
           (>
            (lambda (x y)
              (letrec*
               ((g7429
                 (letrec*
                  ((x7431
                    (begin
                      (write '(funapp 79 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 79 55))
                    (display "\n")
                    (assert x7431))))
                (g7430
                 (letrec*
                  ((x7432
                    (begin (write '(funapp 80 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 80 52)) (display "\n") (not x7432)))))
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
           ((g7433 (begin (write '(funapp 96 19)) (display "\n") '()))
            (g7434
             (letrec*
              ((empty (begin (write '(funapp 99 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7435
                     (lambda (k j lst)
                       (letrec*
                        ((g7436
                          (begin
                            (write '(funapp 107 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7437
                                  (begin
                                    (write '(funapp 109 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7437))
                             lst))))
                        g7436))))
                   g7435)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7438
                     (letrec*
                      ((x-cnd7439
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7439
                        g7263
                        (begin
                          (write '(blame g7261 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7438)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7440
                     (letrec*
                      ((x-cnd7441
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7441
                        g7266
                        (begin
                          (write '(blame g7264 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7440)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x-cnd7443
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7443
                        g7269
                        (begin
                          (write '(blame g7267 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7442)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7444
                     (letrec*
                      ((x-cnd7445
                        (begin
                          (write '(funapp 143 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7446 #t)) g7446)) g7272))))
                      (if x-cnd7445
                        g7272
                        (begin
                          (write '(blame g7270 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7444)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7447
                     (letrec*
                      ((x-cnd7448
                        (begin
                          (write '(funapp 152 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7449 #t)) g7449)) g7275))))
                      (if x-cnd7448
                        g7275
                        (begin
                          (write '(blame g7273 153 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7447)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x-cnd7451
                        (begin
                          (write '(funapp 160 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7451
                        g7278
                        (begin
                          (write '(blame g7276 161 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7450)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 169 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7453
                        g7281
                        (begin
                          (write '(blame g7279 170 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7452)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 177 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7455
                        g7284
                        (begin
                          (write '(blame g7282 178 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7454)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 185 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7457
                        g7287
                        (begin
                          (write '(blame g7285 186 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7456)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7458
                     (lambda (k j v)
                       (letrec*
                        ((g7459
                          (letrec*
                           ((x-cnd7460
                             (begin
                               (write '(funapp 196 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7460
                             (begin
                               (write '(funapp 197 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7459))))
                   g7458)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7461
                     (lambda (k j v)
                       (letrec*
                        ((g7462
                          (letrec*
                           ((x-cnd7463
                             (begin
                               (write '(funapp 208 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7463
                             (begin
                               (write '(funapp 210 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7467
                                (letrec*
                                 ((x7468
                                   (begin
                                     (write '(funapp 214 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 215 34))
                                   (display "\n")
                                   (contract k j x7468))))
                               (x7464
                                (letrec*
                                 ((x7466
                                   (begin
                                     (write '(funapp 218 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7465
                                   (begin
                                     (write '(funapp 218 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 219 34))
                                   (display "\n")
                                   (x7466 k j x7465)))))
                              (begin
                                (write '(funapp 220 31))
                                (display "\n")
                                (orig-cons x7467 x7464)))))))
                        g7462))))
                   g7461)))
               (any? (lambda (v) (letrec* ((g7469 #t)) g7469)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7470
                     (letrec*
                      ((x7471
                        (begin
                          (write '(funapp 227 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 227 55))
                        (display "\n")
                        (not x7471)))))
                   g7470)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7472
                     (letrec*
                      ((x-cnd7473
                        (begin
                          (write '(funapp 235 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7474
                                (letrec*
                                 ((x7475
                                   (begin
                                     (write '(funapp 237 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 237 64))
                                   (display "\n")
                                   (not x7475)))))
                              g7474))
                           g7290))))
                      (if x-cnd7473
                        g7290
                        (begin
                          (write '(blame g7288 242 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7472)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7476
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7477
                          (letrec*
                           ((x-cnd7478
                             (begin
                               (write '(funapp 253 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7479
                                     (begin
                                       (write '(funapp 254 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7479))
                                g7293))))
                           (if x-cnd7478
                             g7293
                             (begin
                               (write '(blame g7291 258 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7477))))
                   g7476)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7480
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7481
                          (letrec*
                           ((x-cnd7482
                             (begin
                               (write '(funapp 270 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7483
                                     (begin
                                       (write '(funapp 271 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7483))
                                g7296))))
                           (if x-cnd7482
                             g7296
                             (begin
                               (write '(blame g7294 275 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7481))))
                   g7480)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7484
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7485
                          (letrec*
                           ((x-cnd7486
                             (begin
                               (write '(funapp 287 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7487
                                     (begin
                                       (write '(funapp 288 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7487))
                                g7299))))
                           (if x-cnd7486
                             g7299
                             (begin
                               (write '(blame g7297 292 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7485))))
                   g7484)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7488
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7489
                          (letrec*
                           ((x-cnd7490
                             (begin
                               (write '(funapp 304 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7491
                                     (begin
                                       (write '(funapp 305 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7491))
                                g7302))))
                           (if x-cnd7490
                             g7302
                             (begin
                               (write '(blame g7300 309 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7489))))
                   g7488)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7492
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7493
                          (letrec*
                           ((x-cnd7494
                             (begin
                               (write '(funapp 321 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7495
                                     (begin
                                       (write '(funapp 322 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7495))
                                g7305))))
                           (if x-cnd7494
                             g7305
                             (begin
                               (write '(blame g7303 326 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7493))))
                   g7492)))
               (meta (lambda (v) (letrec* ((g7496 v)) g7496)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 332 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 332 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7497
                    (begin
                      (write '(funapp 335 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7499
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7500
                                 (letrec*
                                  ((x7501
                                    (letrec*
                                     ((x7503
                                       (begin
                                         (write '(funapp 344 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7502
                                       (begin
                                         (write '(funapp 345 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 346 36))
                                       (display "\n")
                                       (f7312 x7503 x7502)))))
                                  (begin
                                    (write '(funapp 347 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7501)))))
                               g7500))))
                          g7499))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7498
                            (begin
                              (write '(funapp 352 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7498))))))
                  g7497)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 356 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 356 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7504
                    (begin
                      (write '(funapp 359 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7506
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7507
                                 (letrec*
                                  ((x7508
                                    (letrec*
                                     ((x7510
                                       (begin
                                         (write '(funapp 368 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7509
                                       (begin
                                         (write '(funapp 369 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 370 36))
                                       (display "\n")
                                       (f7319 x7510 x7509)))))
                                  (begin
                                    (write '(funapp 371 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7508)))))
                               g7507))))
                          g7506))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7505
                            (begin
                              (write '(funapp 376 53))
                              (display "\n")
                              (orig-- a b))))
                          g7505))))))
                  g7504)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 380 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 380 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7511
                    (begin
                      (write '(funapp 383 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7513
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7514
                                 (letrec*
                                  ((x7515
                                    (letrec*
                                     ((x7517
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7516
                                       (begin
                                         (write '(funapp 393 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 394 36))
                                       (display "\n")
                                       (f7326 x7517 x7516)))))
                                  (begin
                                    (write '(funapp 395 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7515)))))
                               g7514))))
                          g7513))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7512
                            (begin
                              (write '(funapp 400 53))
                              (display "\n")
                              (orig-* a b))))
                          g7512))))))
                  g7511)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 404 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 404 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7518
                    (begin
                      (write '(funapp 407 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7520
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7521
                                 (letrec*
                                  ((x7522
                                    (letrec*
                                     ((x7524
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7523
                                       (begin
                                         (write '(funapp 417 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 418 36))
                                       (display "\n")
                                       (f7333 x7524 x7523)))))
                                  (begin
                                    (write '(funapp 419 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7522)))))
                               g7521))))
                          g7520))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7519
                            (begin
                              (write '(funapp 424 53))
                              (display "\n")
                              (orig-< a b))))
                          g7519))))))
                  g7518)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 428 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 428 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7525
                    (begin
                      (write '(funapp 431 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7527
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7528
                                 (letrec*
                                  ((x7529
                                    (letrec*
                                     ((x7531
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7530
                                       (begin
                                         (write '(funapp 441 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 442 36))
                                       (display "\n")
                                       (f7340 x7531 x7530)))))
                                  (begin
                                    (write '(funapp 443 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7529)))))
                               g7528))))
                          g7527))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7526
                            (begin
                              (write '(funapp 448 53))
                              (display "\n")
                              (orig-> a b))))
                          g7526))))))
                  g7525)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 452 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 452 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7532
                    (begin
                      (write '(funapp 455 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7534
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7535
                                 (letrec*
                                  ((x7536
                                    (letrec*
                                     ((x7538
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7537
                                       (begin
                                         (write '(funapp 465 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 466 36))
                                       (display "\n")
                                       (f7347 x7538 x7537)))))
                                  (begin
                                    (write '(funapp 467 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7536)))))
                               g7535))))
                          g7534))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7533
                            (begin
                              (write '(funapp 472 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7533))))))
                  g7532)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 476 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 476 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7539
                    (begin
                      (write '(funapp 479 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7541
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7542
                                 (letrec*
                                  ((x7543
                                    (letrec*
                                     ((x7545
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7544
                                       (begin
                                         (write '(funapp 489 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 490 36))
                                       (display "\n")
                                       (f7354 x7545 x7544)))))
                                  (begin
                                    (write '(funapp 491 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7543)))))
                               g7542))))
                          g7541))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7540
                            (begin
                              (write '(funapp 496 53))
                              (display "\n")
                              (orig->= a b))))
                          g7540))))))
                  g7539)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 500 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 500 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7546
                    (begin
                      (write '(funapp 503 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7548
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7549
                                 (letrec*
                                  ((x7550
                                    (letrec*
                                     ((x7552
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7551
                                       (begin
                                         (write '(funapp 513 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 514 36))
                                       (display "\n")
                                       (f7361 x7552 x7551)))))
                                  (begin
                                    (write '(funapp 515 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7550)))))
                               g7549))))
                          g7548))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7547
                            (begin
                              (write '(funapp 520 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7547))))))
                  g7546)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 524 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 524 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7553
                    (begin
                      (write '(funapp 527 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7555
                            (lambda (g7364)
                              (letrec*
                               ((g7556
                                 (letrec*
                                  ((x7557
                                    (letrec*
                                     ((x7558
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7367 x7558)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7557)))))
                               g7556))))
                          g7555))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7554
                            (begin
                              (write '(funapp 543 51))
                              (display "\n")
                              (orig-car p))))
                          g7554))))))
                  g7553)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7559
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7561
                            (lambda (g7370)
                              (letrec*
                               ((g7562
                                 (letrec*
                                  ((x7563
                                    (letrec*
                                     ((x7564
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 560 36))
                                       (display "\n")
                                       (f7373 x7564)))))
                                  (begin
                                    (write '(funapp 561 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7563)))))
                               g7562))))
                          g7561))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7560
                            (begin
                              (write '(funapp 566 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7560))))))
                  g7559)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 570 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 570 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7565
                    (begin
                      (write '(funapp 573 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7567
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7568
                                 (letrec*
                                  ((x7569
                                    (letrec*
                                     ((x7571
                                       (begin
                                         (write '(funapp 582 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7570
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7380 x7571 x7570)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7569)))))
                               g7568))))
                          g7567))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7566
                            (begin
                              (write '(funapp 591 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7566))))))
                  g7565)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7572
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7574
                            (lambda (g7383)
                              (letrec*
                               ((g7575
                                 (letrec*
                                  ((x7576
                                    (letrec*
                                     ((x7577
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7386 x7577)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7576)))))
                               g7575))))
                          g7574))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7573
                            (begin
                              (write '(funapp 615 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7573))))))
                  g7572)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7578
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7580
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7581
                                 (letrec*
                                  ((x7582
                                    (letrec*
                                     ((x7584
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7583
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7393 x7584 x7583)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7582)))))
                               g7581))))
                          g7580))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7579
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7579))))))
                  g7578)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7585
                     (if cnd
                       (begin (write '(funapp 645 35)) (display "\n") '())
                       (begin
                         (write '(funapp 645 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7585)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7586
                     (letrec*
                      ((x7587
                        (letrec*
                         ((x7588
                           (begin
                             (write '(funapp 652 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 652 58))
                           (display "\n")
                           (cdr x7588)))))
                      (begin
                        (write '(funapp 653 23))
                        (display "\n")
                        (cdr x7587)))))
                   g7586)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7589
                     (letrec*
                      ((x7592
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 659 62))
                        (display "\n")
                        (assert x7592))))
                    (g7590
                     (letrec*
                      ((x7593
                        (begin
                          (write '(funapp 660 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 660 57))
                        (display "\n")
                        (assert x7593))))
                    (g7591
                     (letrec*
                      ((x-cnd7594
                        (begin
                          (write '(funapp 663 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7594
                        (begin (write '(funapp 665 24)) (display "\n") '())
                        (letrec*
                         ((x7597
                           (letrec*
                            ((x7598
                              (begin
                                (write '(funapp 667 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 667 61))
                              (display "\n")
                              (f x7598))))
                          (x7595
                           (letrec*
                            ((x7596
                              (begin
                                (write '(funapp 668 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 668 61))
                              (display "\n")
                              (map f x7596)))))
                         (begin
                           (write '(funapp 669 26))
                           (display "\n")
                           (cons x7597 x7595)))))))
                   g7591)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x7600
                        (begin
                          (write '(funapp 674 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 674 55))
                        (display "\n")
                        (cdr x7600)))))
                   g7599)))
               (cadadr
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
                                (write '(funapp 683 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 683 61))
                              (display "\n")
                              (car x7604)))))
                         (begin
                           (write '(funapp 684 26))
                           (display "\n")
                           (cdr x7603)))))
                      (begin
                        (write '(funapp 685 23))
                        (display "\n")
                        (car x7602)))))
                   g7601)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7606
                        (letrec*
                         ((x7607
                           (letrec*
                            ((x7608
                              (begin
                                (write '(funapp 694 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 694 61))
                              (display "\n")
                              (cdr x7608)))))
                         (begin
                           (write '(funapp 695 26))
                           (display "\n")
                           (car x7607)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7606)))))
                   g7605)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7612
                        (begin
                          (write '(funapp 702 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 702 60))
                        (display "\n")
                        (assert x7612))))
                    (g7610
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 704 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 704 59))
                        (display "\n")
                        (assert x7613))))
                    (g7611
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
                       ((g7614
                         (begin
                           (write '(funapp 710 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7615 res))
                       g7615))))
                   g7611)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (letrec*
                         ((x7618
                           (begin
                             (write '(funapp 718 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 718 58))
                           (display "\n")
                           (cdr x7618)))))
                      (begin
                        (write '(funapp 719 23))
                        (display "\n")
                        (car x7617)))))
                   g7616)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7620
                        (letrec*
                         ((x7621
                           (letrec*
                            ((x7622
                              (begin
                                (write '(funapp 728 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 728 61))
                              (display "\n")
                              (car x7622)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (car x7621)))))
                      (begin
                        (write '(funapp 730 23))
                        (display "\n")
                        (cdr x7620)))))
                   g7619)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 735 57))
                        (display "\n")
                        (assert x7625))))
                    (g7624
                     (letrec*
                      ((x-cnd7626
                        (begin
                          (write '(funapp 738 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7626
                        #f
                        (letrec*
                         ((x-cnd7627
                           (letrec*
                            ((x7628
                              (begin
                                (write '(funapp 743 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 743 56))
                              (display "\n")
                              (eq? x7628 k)))))
                         (if x-cnd7627
                           (begin
                             (write '(funapp 745 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7629
                              (begin
                                (write '(funapp 746 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 746 55))
                              (display "\n")
                              (assq k x7629)))))))))
                   g7624)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 751 60))
                        (display "\n")
                        (= 0 x7631)))))
                   g7630)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 756 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 756 57))
                        (display "\n")
                        (assert x7634))))
                    (g7633
                     (letrec*
                      ((x-cnd7635
                        (begin
                          (write '(funapp 759 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7635
                        ""
                        (letrec*
                         ((x7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 764 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 764 55))
                              (display "\n")
                              (char->string x7639))))
                          (x7636
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 766 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 766 55))
                              (display "\n")
                              (list->string x7637)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (string-append x7638 x7636)))))))
                   g7633)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7643
                        (begin
                          (write '(funapp 772 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 772 58))
                        (display "\n")
                        (assert x7643))))
                    (g7641
                     (letrec*
                      ((x7644
                        (begin
                          (write '(funapp 773 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 773 58))
                        (display "\n")
                        (assert x7644))))
                    (g7642
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 776 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7645
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 778 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7645))))
                   g7642)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7647
                        (letrec*
                         ((x7648
                           (letrec*
                            ((x7649
                              (begin
                                (write '(funapp 788 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 788 61))
                              (display "\n")
                              (cdr x7649)))))
                         (begin
                           (write '(funapp 789 26))
                           (display "\n")
                           (cdr x7648)))))
                      (begin
                        (write '(funapp 790 23))
                        (display "\n")
                        (cdr x7647)))))
                   g7646)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 795 57))
                        (display "\n")
                        (assert x7653))))
                    (g7651
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 796 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 796 57))
                        (display "\n")
                        (assert x7654))))
                    (g7652
                     (letrec*
                      ((x-cnd7655
                        (begin
                          (write '(funapp 799 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7655
                        x
                        (letrec*
                         ((x7657
                           (begin
                             (write '(funapp 803 34))
                             (display "\n")
                             (cdr x)))
                          (x7656
                           (begin
                             (write '(funapp 803 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (list-tail x7657 x7656)))))))
                   g7652)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7658
                     (begin (write '(funapp 806 49)) (display "\n") '())))
                   g7658)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x-cnd7660
                        (letrec*
                         ((x7661 #\a))
                         (begin
                           (write '(funapp 813 48))
                           (display "\n")
                           (char-ci>=? c x7661)))))
                      (if x-cnd7660
                        (letrec*
                         ((x7662 #\z))
                         (begin
                           (write '(funapp 815 48))
                           (display "\n")
                           (char-ci<=? c x7662)))
                        #f))))
                   g7659)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7664
                           (begin
                             (write '(funapp 824 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 824 62))
                           (display "\n")
                           (= x7664 9)))))
                      (letrec*
                       ((g7665
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7666
                                 (begin
                                   (write '(funapp 832 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 833 32))
                                 (display "\n")
                                 (= x7666 10)))))
                            (letrec*
                             ((g7667
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7668
                                    (begin
                                      (write '(funapp 839 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 840 35))
                                    (display "\n")
                                    (= x7668 32))))))
                             g7667)))))
                       g7665))))
                   g7663)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x7670
                        (letrec*
                         ((x7671
                           (begin
                             (write '(funapp 849 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 849 58))
                           (display "\n")
                           (cdr x7671)))))
                      (begin
                        (write '(funapp 850 23))
                        (display "\n")
                        (cdr x7670)))))
                   g7669)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7672
                     (letrec*
                      ((x7674
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 855 59))
                        (display "\n")
                        (assert x7674))))
                    (g7673
                     (begin (write '(funapp 856 28)) (display "\n") (> x 0))))
                   g7673)))
               ($pc (begin (write '(funapp 858 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7675 #f)) g7675)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7676
                     (letrec*
                      ((x7677
                        (begin
                          (write '(funapp 864 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 864 55))
                        (display "\n")
                        (cdr x7677)))))
                   g7676)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((x7680
                        (begin
                          (write '(funapp 869 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 869 59))
                        (display "\n")
                        (assert x7680))))
                    (g7679
                     (letrec*
                      ((x-cnd7681
                        (begin
                          (write '(funapp 872 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7681
                        (begin
                          (write '(funapp 873 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 873 49))
                          (display "\n")
                          (floor x))))))
                   g7679)))
               ($cmp (begin (write '(funapp 875 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7682
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 881 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7683
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7684
                                 (begin
                                   (write '(funapp 889 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7684
                                 (begin
                                   (write '(funapp 890 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7685
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7686
                                       (begin
                                         (write '(funapp 898 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7686
                                       (letrec*
                                        ((x-cnd7687
                                          (begin
                                            (write '(funapp 901 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7687
                                          (begin
                                            (write '(funapp 902 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7688
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7689
                                             (begin
                                               (write '(funapp 911 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7689
                                             (letrec*
                                              ((x-cnd7690
                                                (begin
                                                  (write '(funapp 914 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7690
                                                (letrec*
                                                 ((x-cnd7691
                                                   (letrec*
                                                    ((x7693
                                                      (begin
                                                        (write
                                                         '(funapp 919 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7692
                                                      (begin
                                                        (write
                                                         '(funapp 920 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 921 53))
                                                      (display "\n")
                                                      (equal? x7693 x7692)))))
                                                 (if x-cnd7691
                                                   (letrec*
                                                    ((x7695
                                                      (begin
                                                        (write
                                                         '(funapp 924 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7694
                                                      (begin
                                                        (write
                                                         '(funapp 925 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 926 53))
                                                      (display "\n")
                                                      (equal? x7695 x7694)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7696
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7697
                                                (begin
                                                  (write '(funapp 935 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7697
                                                (letrec*
                                                 ((x-cnd7698
                                                   (begin
                                                     (write '(funapp 938 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7698
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 941 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7699
                                                       (letrec*
                                                        ((x-cnd7700
                                                          (letrec*
                                                           ((x7701
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
                                                             (= x7701 n)))))
                                                        (if x-cnd7700
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7702
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
                                                                    ((g7703
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7704
                                                                           (letrec*
                                                                            ((x7706
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
                                                                             (x7705
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
                                                                               x7706
                                                                               x7705)))))
                                                                         (if x-cnd7704
                                                                           (letrec*
                                                                            ((x7707
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
                                                                               x7707)))
                                                                           #f)))))
                                                                    g7703))))
                                                                g7702))))
                                                           (letrec*
                                                            ((g7708
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   990
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7708))
                                                          #f))))
                                                     g7699))
                                                   #f))
                                                #f)))))
                                         g7696)))))
                                   g7688)))))
                             g7685)))))
                       g7683))))
                   g7682)))
               (cdaaar
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
                                (write '(funapp 1008 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1008 61))
                              (display "\n")
                              (car x7712)))))
                         (begin
                           (write '(funapp 1009 26))
                           (display "\n")
                           (car x7711)))))
                      (begin
                        (write '(funapp 1010 23))
                        (display "\n")
                        (cdr x7710)))))
                   g7709)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7713
                     (letrec*
                      ((x7714
                        (letrec*
                         ((x7715
                           (letrec*
                            ((x7716
                              (begin
                                (write '(funapp 1019 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1019 61))
                              (display "\n")
                              (cdr x7716)))))
                         (begin
                           (write '(funapp 1020 26))
                           (display "\n")
                           (car x7715)))))
                      (begin
                        (write '(funapp 1021 23))
                        (display "\n")
                        (car x7714)))))
                   g7713)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7717
                     (begin
                       (write '(funapp 1023 53))
                       (display "\n")
                       (eq? x y))))
                   g7717)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7718
                     (letrec*
                      ((x7721
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1028 60))
                        (display "\n")
                        (assert x7721))))
                    (g7719
                     (letrec*
                      ((x7722
                        (begin
                          (write '(funapp 1030 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1030 59))
                        (display "\n")
                        (assert x7722))))
                    (g7720
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
                       ((g7723
                         (begin
                           (write '(funapp 1036 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7724 res))
                       g7724))))
                   g7720)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7725
                     (begin
                       (write '(funapp 1039 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1039 57))
                          (display "\n")
                          '())))))
                   g7725)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7726
                     (letrec*
                      ((x7729
                        (begin
                          (write '(funapp 1043 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1043 58))
                        (display "\n")
                        (assert x7729))))
                    (g7727
                     (letrec*
                      ((x7730
                        (begin
                          (write '(funapp 1044 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1044 58))
                        (display "\n")
                        (assert x7730))))
                    (g7728
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1047 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7731
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1049 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7731))))
                   g7728)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7732
                     (letrec*
                      ((x7733
                        (letrec*
                         ((x7734
                           (begin
                             (write '(funapp 1057 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1057 58))
                           (display "\n")
                           (car x7734)))))
                      (begin
                        (write '(funapp 1058 23))
                        (display "\n")
                        (cdr x7733)))))
                   g7732)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((x7736
                        (letrec*
                         ((x7737
                           (letrec*
                            ((x7738
                              (begin
                                (write '(funapp 1067 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1067 61))
                              (display "\n")
                              (cdr x7738)))))
                         (begin
                           (write '(funapp 1068 26))
                           (display "\n")
                           (car x7737)))))
                      (begin
                        (write '(funapp 1069 23))
                        (display "\n")
                        (cdr x7736)))))
                   g7735)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((x7740
                        (letrec*
                         ((x7741
                           (begin
                             (write '(funapp 1077 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1077 58))
                           (display "\n")
                           (cdr x7741)))))
                      (begin
                        (write '(funapp 1078 23))
                        (display "\n")
                        (car x7740)))))
                   g7739)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7743
                        (letrec*
                         ((x7744
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (car x7744)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7743)))))
                   g7742)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1091 58))
                        (display "\n")
                        (assert x7748))))
                    (g7746
                     (letrec*
                      ((x7749
                        (begin
                          (write '(funapp 1092 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1092 58))
                        (display "\n")
                        (assert x7749))))
                    (g7747
                     (letrec*
                      ((x7750
                        (begin
                          (write '(funapp 1093 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1093 66))
                        (display "\n")
                        (not x7750)))))
                   g7747)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7752
                        (letrec*
                         ((x7753
                           (letrec*
                            ((x7754
                              (begin
                                (write '(funapp 1103 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1103 61))
                              (display "\n")
                              (car x7754)))))
                         (begin
                           (write '(funapp 1104 26))
                           (display "\n")
                           (car x7753)))))
                      (begin
                        (write '(funapp 1105 23))
                        (display "\n")
                        (car x7752)))))
                   g7751)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 1110 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1110 59))
                        (display "\n")
                        (assert x7757))))
                    (g7756
                     (begin (write '(funapp 1111 28)) (display "\n") (< x 0))))
                   g7756)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7758
                     (begin
                       (write '(funapp 1113 53))
                       (display "\n")
                       (memq e l))))
                   g7758)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7760
                        (letrec*
                         ((x7761
                           (begin
                             (write '(funapp 1119 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1119 58))
                           (display "\n")
                           (car x7761)))))
                      (begin
                        (write '(funapp 1120 23))
                        (display "\n")
                        (car x7760)))))
                   g7759)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7762
                     (begin (write '(funapp 1122 51)) (display "\n") '())))
                   g7762)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1126 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1126 57))
                        (display "\n")
                        (assert x7765))))
                    (g7764
                     (letrec*
                      ((x-cnd7766
                        (begin
                          (write '(funapp 1129 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7766
                        (begin (write '(funapp 1131 24)) (display "\n") '())
                        (letrec*
                         ((x7769
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1133 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1133 61))
                              (display "\n")
                              (reverse x7770))))
                          (x7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (list x7768)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (append x7769 x7767)))))))
                   g7764)))
               (caaadr
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
                                (write '(funapp 1144 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1144 61))
                              (display "\n")
                              (car x7774)))))
                         (begin
                           (write '(funapp 1145 26))
                           (display "\n")
                           (car x7773)))))
                      (begin
                        (write '(funapp 1146 23))
                        (display "\n")
                        (car x7772)))))
                   g7771)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7776
                        (letrec*
                         ((x7777
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 1155 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1155 61))
                              (display "\n")
                              (car x7778)))))
                         (begin
                           (write '(funapp 1156 26))
                           (display "\n")
                           (cdr x7777)))))
                      (begin
                        (write '(funapp 1157 23))
                        (display "\n")
                        (cdr x7776)))))
                   g7775)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 1162 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1162 59))
                        (display "\n")
                        (assert x7781))))
                    (g7780
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1163 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1163 60))
                        (display "\n")
                        (= 1 x7782)))))
                   g7780)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7784
                        (letrec*
                         ((x7785
                           (letrec*
                            ((x7786
                              (begin
                                (write '(funapp 1172 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1172 61))
                              (display "\n")
                              (cdr x7786)))))
                         (begin
                           (write '(funapp 1173 26))
                           (display "\n")
                           (car x7785)))))
                      (begin
                        (write '(funapp 1174 23))
                        (display "\n")
                        (car x7784)))))
                   g7783)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 1180 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1180 59))
                        (display "\n")
                        (assert x7790))))
                    (g7788
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1181 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1181 60))
                        (display "\n")
                        (assert x7791))))
                    (g7789
                     (letrec*
                      ((x-cnd7792
                        (begin
                          (write '(funapp 1184 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7792
                        (letrec*
                         ((g7793
                           (begin
                             (write '(funapp 1186 42))
                             (display "\n")
                             (proc))))
                         g7793)
                        (letrec*
                         ((x-cnd7794
                           (letrec*
                            ((x7795
                              (begin
                                (write '(funapp 1189 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1189 58))
                              (display "\n")
                              (null? x7795)))))
                         (if x-cnd7794
                           (letrec*
                            ((g7796
                              (letrec*
                               ((x7797
                                 (begin
                                   (write '(funapp 1193 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1193 61))
                                 (display "\n")
                                 (proc x7797)))))
                            g7796)
                           (letrec*
                            ((x-cnd7798
                              (letrec*
                               ((x7799
                                 (begin
                                   (write '(funapp 1197 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1197 62))
                                 (display "\n")
                                 (null? x7799)))))
                            (if x-cnd7798
                              (letrec*
                               ((g7800
                                 (letrec*
                                  ((x7802
                                    (begin
                                      (write '(funapp 1202 43))
                                      (display "\n")
                                      (car args)))
                                   (x7801
                                    (begin
                                      (write '(funapp 1202 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1203 35))
                                    (display "\n")
                                    (proc x7802 x7801)))))
                               g7800)
                              (letrec*
                               ((x-cnd7803
                                 (letrec*
                                  ((x7804
                                    (begin
                                      (write '(funapp 1208 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1209 35))
                                    (display "\n")
                                    (null? x7804)))))
                               (if x-cnd7803
                                 (letrec*
                                  ((g7805
                                    (letrec*
                                     ((x7808
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (car args)))
                                      (x7807
                                       (begin
                                         (write '(funapp 1215 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7806
                                       (begin
                                         (write '(funapp 1216 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1217 38))
                                       (display "\n")
                                       (proc x7808 x7807 x7806)))))
                                  g7805)
                                 (letrec*
                                  ((x-cnd7809
                                    (letrec*
                                     ((x7810
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1223 38))
                                       (display "\n")
                                       (null? x7810)))))
                                  (if x-cnd7809
                                    (letrec*
                                     ((g7811
                                       (letrec*
                                        ((x7815
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (car args)))
                                         (x7814
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7813
                                          (begin
                                            (write '(funapp 1230 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7812
                                          (begin
                                            (write '(funapp 1231 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1232 41))
                                          (display "\n")
                                          (proc x7815 x7814 x7813 x7812)))))
                                     g7811)
                                    (letrec*
                                     ((x-cnd7816
                                       (letrec*
                                        ((x7817
                                          (letrec*
                                           ((x7818
                                             (begin
                                               (write '(funapp 1239 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1240 44))
                                             (display "\n")
                                             (cdr x7818)))))
                                        (begin
                                          (write '(funapp 1241 41))
                                          (display "\n")
                                          (null? x7817)))))
                                     (if x-cnd7816
                                       (letrec*
                                        ((g7819
                                          (letrec*
                                           ((x7825
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (car args)))
                                            (x7824
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7823
                                             (begin
                                               (write '(funapp 1248 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7822
                                             (begin
                                               (write '(funapp 1249 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7820
                                             (letrec*
                                              ((x7821
                                                (begin
                                                  (write '(funapp 1252 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1253 47))
                                                (display "\n")
                                                (car x7821)))))
                                           (begin
                                             (write '(funapp 1254 44))
                                             (display "\n")
                                             (proc
                                              x7825
                                              x7824
                                              x7823
                                              x7822
                                              x7820)))))
                                        g7819)
                                       (letrec*
                                        ((x-cnd7826
                                          (letrec*
                                           ((x7827
                                             (letrec*
                                              ((x7828
                                                (begin
                                                  (write '(funapp 1266 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1267 47))
                                                (display "\n")
                                                (cddr x7828)))))
                                           (begin
                                             (write '(funapp 1268 44))
                                             (display "\n")
                                             (null? x7827)))))
                                        (if x-cnd7826
                                          (letrec*
                                           ((g7829
                                             (letrec*
                                              ((x7837
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7836
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7835
                                                (begin
                                                  (write '(funapp 1275 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7834
                                                (begin
                                                  (write '(funapp 1276 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7832
                                                (letrec*
                                                 ((x7833
                                                   (begin
                                                     (write '(funapp 1279 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1280 50))
                                                   (display "\n")
                                                   (car x7833))))
                                               (x7830
                                                (letrec*
                                                 ((x7831
                                                   (begin
                                                     (write '(funapp 1283 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1284 50))
                                                   (display "\n")
                                                   (cadr x7831)))))
                                              (begin
                                                (write '(funapp 1285 47))
                                                (display "\n")
                                                (proc
                                                 x7837
                                                 x7836
                                                 x7835
                                                 x7834
                                                 x7832
                                                 x7830)))))
                                           g7829)
                                          (letrec*
                                           ((x-cnd7838
                                             (letrec*
                                              ((x7839
                                                (letrec*
                                                 ((x7840
                                                   (begin
                                                     (write '(funapp 1298 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1299 50))
                                                   (display "\n")
                                                   (cdddr x7840)))))
                                              (begin
                                                (write '(funapp 1300 47))
                                                (display "\n")
                                                (null? x7839)))))
                                           (if x-cnd7838
                                             (letrec*
                                              ((g7841
                                                (letrec*
                                                 ((x7851
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7850
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7849
                                                   (begin
                                                     (write '(funapp 1307 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7848
                                                   (begin
                                                     (write '(funapp 1308 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7846
                                                   (letrec*
                                                    ((x7847
                                                      (begin
                                                        (write
                                                         '(funapp 1311 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1312 53))
                                                      (display "\n")
                                                      (car x7847))))
                                                  (x7844
                                                   (letrec*
                                                    ((x7845
                                                      (begin
                                                        (write
                                                         '(funapp 1315 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1316 53))
                                                      (display "\n")
                                                      (cadr x7845))))
                                                  (x7842
                                                   (letrec*
                                                    ((x7843
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (caddr x7843)))))
                                                 (begin
                                                   (write '(funapp 1321 50))
                                                   (display "\n")
                                                   (proc
                                                    x7851
                                                    x7850
                                                    x7849
                                                    x7848
                                                    x7846
                                                    x7844
                                                    x7842)))))
                                              g7841)
                                             (letrec*
                                              ((g7852
                                                (begin
                                                  (write '(funapp 1332 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7852)))))))))))))))))))
                   g7789)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((x7855
                        (begin
                          (write '(funapp 1338 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1338 57))
                        (display "\n")
                        (assert x7855))))
                    (g7854
                     (letrec*
                      ((x-cnd7856
                        (begin
                          (write '(funapp 1341 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7856
                        #f
                        (letrec*
                         ((x-cnd7857
                           (letrec*
                            ((x7858
                              (begin
                                (write '(funapp 1346 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1346 55))
                              (display "\n")
                              (equal? x7858 e)))))
                         (if x-cnd7857
                           l
                           (letrec*
                            ((x7859
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1349 55))
                              (display "\n")
                              (member e x7859)))))))))
                   g7854)))
               (cddddr
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
                                (write '(funapp 1358 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1358 61))
                              (display "\n")
                              (cdr x7863)))))
                         (begin
                           (write '(funapp 1359 26))
                           (display "\n")
                           (cdr x7862)))))
                      (begin
                        (write '(funapp 1360 23))
                        (display "\n")
                        (cdr x7861)))))
                   g7860)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x7865
                        (letrec*
                         ((x7866
                           (letrec*
                            ((x7867
                              (begin
                                (write '(funapp 1369 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1369 61))
                              (display "\n")
                              (cdr x7867)))))
                         (begin
                           (write '(funapp 1370 26))
                           (display "\n")
                           (cdr x7866)))))
                      (begin
                        (write '(funapp 1371 23))
                        (display "\n")
                        (car x7865)))))
                   g7864)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7868
                     (begin
                       (write '(funapp 1373 53))
                       (display "\n")
                       (random 42))))
                   g7868)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x7871
                        (begin
                          (write '(funapp 1377 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1377 59))
                        (display "\n")
                        (assert x7871))))
                    (g7870
                     (begin (write '(funapp 1378 28)) (display "\n") (= x 0))))
                   g7870)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1385 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7873
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1387 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7873))))
                   g7872)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x7875
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1393 55))
                        (display "\n")
                        (car x7875)))))
                   g7874)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7877
                           (begin
                             (write '(funapp 1403 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7877
                           (letrec*
                            ((x7878
                              (begin
                                (write '(funapp 1405 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1405 55))
                              (display "\n")
                              (list? x7878)))
                           #f))))
                      (letrec*
                       ((g7879
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1408 52))
                             (display "\n")
                             (null? l)))))
                       g7879))))
                   g7876)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7881
                        (letrec*
                         ((x7882
                           (letrec*
                            ((x7883
                              (begin
                                (write '(funapp 1418 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1418 61))
                              (display "\n")
                              (car x7883)))))
                         (begin
                           (write '(funapp 1419 26))
                           (display "\n")
                           (cdr x7882)))))
                      (begin
                        (write '(funapp 1420 23))
                        (display "\n")
                        (cdr x7881)))))
                   g7880)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x-cnd7885
                        (letrec*
                         ((x7886 #\0))
                         (begin
                           (write '(funapp 1427 58))
                           (display "\n")
                           (char<=? x7886 c)))))
                      (if x-cnd7885
                        (letrec*
                         ((x7887 #\9))
                         (begin
                           (write '(funapp 1429 48))
                           (display "\n")
                           (char<=? c x7887)))
                        #f))))
                   g7884)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7890
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1436 57))
                        (display "\n")
                        (assert x7890))))
                    (g7889
                     (letrec*
                      ((x-cnd7891
                        (begin
                          (write '(funapp 1439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7891
                        #f
                        (letrec*
                         ((x-cnd7892
                           (letrec*
                            ((x7893
                              (begin
                                (write '(funapp 1444 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1444 56))
                              (display "\n")
                              (eqv? x7893 k)))))
                         (if x-cnd7892
                           (begin
                             (write '(funapp 1446 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7894
                              (begin
                                (write '(funapp 1447 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1447 55))
                              (display "\n")
                              (assq k x7894)))))))))
                   g7889)))
               (not (lambda (x) (letrec* ((g7895 (if x #f #t))) g7895)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7896
                     (begin
                       (write '(funapp 1451 50))
                       (display "\n")
                       (append l1 l2))))
                   g7896)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((x7899
                        (begin
                          (write '(funapp 1455 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1455 57))
                        (display "\n")
                        (assert x7899))))
                    (g7898
                     (letrec*
                      ((x-cnd7900
                        (begin
                          (write '(funapp 1458 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7900
                        #f
                        (letrec*
                         ((x-cnd7901
                           (letrec*
                            ((x7902
                              (begin
                                (write '(funapp 1463 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1463 55))
                              (display "\n")
                              (eq? x7902 e)))))
                         (if x-cnd7901
                           l
                           (letrec*
                            ((x7903
                              (begin
                                (write '(funapp 1466 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1466 55))
                              (display "\n")
                              (memq e x7903)))))))))
                   g7898)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7905
                        (letrec*
                         ((x7906
                           (letrec*
                            ((x7907
                              (begin
                                (write '(funapp 1475 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1475 61))
                              (display "\n")
                              (car x7907)))))
                         (begin
                           (write '(funapp 1476 26))
                           (display "\n")
                           (cdr x7906)))))
                      (begin
                        (write '(funapp 1477 23))
                        (display "\n")
                        (car x7905)))))
                   g7904)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7910
                        (begin
                          (write '(funapp 1482 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1482 57))
                        (display "\n")
                        (assert x7910))))
                    (g7909
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7911
                             (letrec*
                              ((x-cnd7912
                                (begin
                                  (write '(funapp 1490 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7912
                                0
                                (letrec*
                                 ((x7913
                                   (letrec*
                                    ((x7914
                                      (begin
                                        (write '(funapp 1495 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1495 63))
                                      (display "\n")
                                      (rec x7914)))))
                                 (begin
                                   (write '(funapp 1496 34))
                                   (display "\n")
                                   (+ 1 x7913)))))))
                           g7911))))
                      (letrec*
                       ((g7915
                         (begin
                           (write '(funapp 1498 40))
                           (display "\n")
                           (rec l))))
                       g7915))))
                   g7909)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7919
                        (begin
                          (write '(funapp 1503 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1503 58))
                        (display "\n")
                        (assert x7919))))
                    (g7917
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 1504 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1504 58))
                        (display "\n")
                        (assert x7920))))
                    (g7918
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1507 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7921
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1509 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7921))))
                   g7918)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((x7923
                        (begin
                          (write '(funapp 1515 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1515 65))
                        (display "\n")
                        (not x7923)))))
                   g7922)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7925
                        (letrec*
                         ((x7926
                           (begin
                             (write '(funapp 1522 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1522 58))
                           (display "\n")
                           (car x7926)))))
                      (begin
                        (write '(funapp 1523 23))
                        (display "\n")
                        (cdr x7925)))))
                   g7924)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7929
                        (begin
                          (write '(funapp 1528 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1528 57))
                        (display "\n")
                        (assert x7929))))
                    (g7928
                     (letrec*
                      ((x-cnd7930
                        (begin
                          (write '(funapp 1531 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7930
                        #f
                        (letrec*
                         ((x-cnd7931
                           (letrec*
                            ((x7932
                              (begin
                                (write '(funapp 1536 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1536 56))
                              (display "\n")
                              (equal? x7932 k)))))
                         (if x-cnd7931
                           (begin
                             (write '(funapp 1538 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7933
                              (begin
                                (write '(funapp 1539 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1539 55))
                              (display "\n")
                              (assoc k x7933)))))))))
                   g7928)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1544 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1544 55))
                        (display "\n")
                        (car x7935)))))
                   g7934)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7939))))
                    (g7937
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1550 58))
                        (display "\n")
                        (assert x7940))))
                    (g7938
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 1551 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1551 63))
                        (display "\n")
                        (not x7941)))))
                   g7938)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1558 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7943
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1560 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7943))))
                   g7942)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1566 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1566 62))
                        (display "\n")
                        (assert x7947))))
                    (g7945
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1567 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1567 57))
                        (display "\n")
                        (assert x7948))))
                    (g7946
                     (letrec*
                      ((x-cnd7949
                        (begin
                          (write '(funapp 1570 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7949
                        #t
                        (letrec*
                         ((x-cnd7950
                           (begin
                             (write '(funapp 1574 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7950
                           (letrec*
                            ((g7951
                              (letrec*
                               ((x7953
                                 (begin
                                   (write '(funapp 1577 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1577 64))
                                 (display "\n")
                                 (f x7953))))
                             (g7952
                              (letrec*
                               ((x7954
                                 (begin
                                   (write '(funapp 1579 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1579 58))
                                 (display "\n")
                                 (for-each f x7954)))))
                            g7952)
                           (begin
                             (write '(funapp 1581 27))
                             (display "\n")
                             '())))))))
                   g7946)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 1586 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1586 59))
                        (display "\n")
                        (assert x7957))))
                    (g7956
                     (letrec*
                      ((x-cnd7958
                        (begin
                          (write '(funapp 1588 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7958
                        (begin
                          (write '(funapp 1588 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7956)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7962))))
                    (g7960
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7963))))
                    (g7961
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1597 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7964
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1599 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7964))))
                   g7961)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7965
                     (letrec*
                      ((x7966
                        (letrec*
                         ((x7967
                           (letrec*
                            ((x7968
                              (begin
                                (write '(funapp 1609 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1609 61))
                              (display "\n")
                              (cdr x7968)))))
                         (begin
                           (write '(funapp 1610 26))
                           (display "\n")
                           (cdr x7967)))))
                      (begin
                        (write '(funapp 1611 23))
                        (display "\n")
                        (car x7966)))))
                   g7965)))
               (newline (lambda () (letrec* ((g7969 #f)) g7969)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7972
                        (letrec*
                         ((x7973
                           (begin
                             (write '(funapp 1619 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1619 58))
                           (display "\n")
                           (abs x7973))))
                       (x7971
                        (begin
                          (write '(funapp 1620 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1621 23))
                        (display "\n")
                        (/ x7972 x7971)))))
                   g7970)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7974
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 1627 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1627 57))
                        (display "\n")
                        (assert x7978))))
                    (g7975
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 1628 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1628 63))
                        (display "\n")
                        (assert x7979))))
                    (g7976
                     (letrec*
                      ((x7980
                        (letrec*
                         ((x7981
                           (begin
                             (write '(funapp 1631 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1631 61))
                           (display "\n")
                           (< index x7981)))))
                      (begin
                        (write '(funapp 1632 23))
                        (display "\n")
                        (assert x7980))))
                    (g7977
                     (letrec*
                      ((x-cnd7982
                        (begin
                          (write '(funapp 1635 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7982
                        (begin
                          (write '(funapp 1637 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7984
                           (begin
                             (write '(funapp 1639 34))
                             (display "\n")
                             (cdr l)))
                          (x7983
                           (begin
                             (write '(funapp 1639 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1640 26))
                           (display "\n")
                           (list-ref x7984 x7983)))))))
                   g7977)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7985
                     (letrec*
                      ((x-cnd7986
                        (begin
                          (write '(funapp 1647 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7986
                        a
                        (letrec*
                         ((x7987
                           (begin
                             (write '(funapp 1650 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1650 57))
                           (display "\n")
                           (gcd b x7987)))))))
                   g7985)))
               (STATE/C
                (lambda (g7397 g7398 g7399)
                  (letrec*
                   ((g7988
                     (letrec*
                      ((x-cnd7989
                        (begin
                          (write '(funapp 1658 25))
                          (display "\n")
                          ((lambda (v7396)
                             (letrec*
                              ((g7990
                                (letrec*
                                 ((x-cnd7991
                                   (begin
                                     (write '(funapp 1662 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1662 48))
                                        (display "\n")
                                        'init)
                                      v7396))))
                                 (if x-cnd7991
                                   #t
                                   (letrec*
                                    ((x-cnd7992
                                      (begin
                                        (write '(funapp 1666 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1666 51))
                                           (display "\n")
                                           'opened)
                                         v7396))))
                                    (if x-cnd7992
                                      #t
                                      (letrec*
                                       ((x-cnd7993
                                         (begin
                                           (write '(funapp 1670 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1670 54))
                                              (display "\n")
                                              'closed)
                                            v7396))))
                                       (if x-cnd7993
                                         #t
                                         (begin
                                           (write '(funapp 1673 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1673 44))
                                              (display "\n")
                                              'ignore)
                                            v7396))))))))))
                              g7990))
                           g7399))))
                      (if x-cnd7989
                        g7399
                        (begin
                          (write '(blame g7397 1678 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7397)))))))
                   g7988)))
               (loop
                (lambda ()
                  (letrec*
                   ((g7994
                     (begin (write '(funapp 1689 50)) (display "\n") (loop))))
                   g7994)))
               (readit
                (lambda (st)
                  (letrec*
                   ((g7995
                     (letrec*
                      ((x-cnd7996
                        (begin
                          (write '(funapp 1695 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1695 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd7996
                        (begin
                          (write '(funapp 1696 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1696 44))
                          (display "\n")
                          'ignore)))))
                   g7995)))
               (read_
                (lambda (x st)
                  (letrec*
                   ((g7997
                     (if x
                       (begin
                         (write '(funapp 1700 42))
                         (display "\n")
                         (readit st))
                       st)))
                   g7997)))
               (closeit
                (lambda (st)
                  (letrec*
                   ((g7998
                     (letrec*
                      ((x-cnd7999
                        (begin
                          (write '(funapp 1706 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1706 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd7999
                        (letrec*
                         ((g8000
                           (begin
                             (write '(funapp 1708 41))
                             (display "\n")
                             'closed)))
                         g8000)
                        (letrec*
                         ((x-cnd8001
                           (begin
                             (write '(funapp 1710 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 1710 45))
                                (display "\n")
                                'ignore)
                              st))))
                         (if x-cnd8001
                           (letrec*
                            ((g8002
                              (begin
                                (write '(funapp 1712 44))
                                (display "\n")
                                'ignore)))
                            g8002)
                           (letrec*
                            ((g8003
                              (begin
                                (write '(funapp 1713 45))
                                (display "\n")
                                (loop)))
                             (g8004 0))
                            g8004)))))))
                   g7998)))
               (close_
                (lambda (x st)
                  (letrec*
                   ((g8005
                     (if x
                       (begin
                         (write '(funapp 1717 42))
                         (display "\n")
                         (closeit st))
                       st)))
                   g8005)))
               (f
                (lambda (x y st)
                  (letrec*
                   ((g8006
                     (letrec*
                      ((x8008
                        (begin
                          (write '(funapp 1721 45))
                          (display "\n")
                          (close_ x st))))
                      (begin
                        (write '(funapp 1721 61))
                        (display "\n")
                        (close_ y x8008))))
                    (g8007
                     (letrec*
                      ((x8009
                        (letrec*
                         ((x8010
                           (begin
                             (write '(funapp 1725 42))
                             (display "\n")
                             (read_ x st))))
                         (begin
                           (write '(funapp 1725 57))
                           (display "\n")
                           (read_ y x8010)))))
                      (begin
                        (write '(funapp 1726 23))
                        (display "\n")
                        (f x y x8009)))))
                   g8007)))
               (next
                (lambda (st)
                  (letrec*
                   ((g8011
                     (letrec*
                      ((x-cnd8012
                        (begin
                          (write '(funapp 1733 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1733 42))
                             (display "\n")
                             'init)
                           st))))
                      (if x-cnd8012
                        (begin
                          (write '(funapp 1734 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1734 44))
                          (display "\n")
                          'ignore)))))
                   g8011)))
               (g
                (lambda (b3 x st)
                  (letrec*
                   ((g8013
                     (letrec*
                      ((x-cnd8014
                        (begin
                          (write '(funapp 1741 35))
                          (display "\n")
                          (> b3 0))))
                      (if x-cnd8014
                        (letrec*
                         ((x8015
                           (begin
                             (write '(funapp 1743 42))
                             (display "\n")
                             (next st))))
                         (begin
                           (write '(funapp 1743 54))
                           (display "\n")
                           (f x #t x8015)))
                        (begin
                          (write '(funapp 1744 25))
                          (display "\n")
                          (f x #f st))))))
                   g8013)))
               (main
                (lambda (b2 b3)
                  (letrec*
                   ((g8016
                     (letrec*
                      ((x-cnd8018
                        (begin
                          (write '(funapp 1751 35))
                          (display "\n")
                          (> b2 0))))
                      (if x-cnd8018
                        (begin
                          (write '(funapp 1752 37))
                          (display "\n")
                          (g
                           b3
                           #t
                           (begin
                             (write '(funapp 1752 45))
                             (display "\n")
                             'opened)))
                        (begin
                          (write '(funapp 1752 55))
                          (display "\n")
                          (g
                           b3
                           #f
                           (begin
                             (write '(funapp 1752 63))
                             (display "\n")
                             'init))))))
                    (g8017
                     (begin (write '(funapp 1753 27)) (display "\n") 'unit)))
                   g8017))))
              (letrec*
               ((g8019
                 (begin
                   (write '(funapp 1757 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1758 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8022
                          (letrec*
                           ((xj7400
                             (begin
                               (write '(funapp 1762 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1762 37))
                                  (display "\n")
                                  'module))))
                            (xk7401
                             (begin
                               (write '(funapp 1762 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1762 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8023
                              (begin
                                (write '(funapp 1765 27))
                                (display "\n")
                                ((lambda (j7404 k7405 f7406)
                                   (letrec*
                                    ((g8024
                                      (lambda (g7402 g7403)
                                        (letrec*
                                         ((g8025
                                           (letrec*
                                            ((x8026
                                              (letrec*
                                               ((x8028
                                                 (begin
                                                   (write '(funapp 1775 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7404
                                                    k7405
                                                    g7402)))
                                                (x8027
                                                 (begin
                                                   (write '(funapp 1777 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7404
                                                    k7405
                                                    g7403))))
                                               (begin
                                                 (write '(funapp 1778 42))
                                                 (display "\n")
                                                 (f7406 x8028 x8027)))))
                                            (begin
                                              (write '(funapp 1779 39))
                                              (display "\n")
                                              (any/c j7404 k7405 x8026)))))
                                         g8025))))
                                    g8024))
                                 xj7400
                                 xk7401
                                 main))))
                            g8023)))
                         (x8021 (input))
                         (x8020 (input)))
                        (begin
                          (write '(funapp 1788 21))
                          (display "\n")
                          (x8022 x8021 x8020)))))))))
               g8019))))
           g7434))))
       g7418)))
    g7417)))
