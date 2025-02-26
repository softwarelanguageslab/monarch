(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7417 #t)) g7417)))
    (meta (lambda (v) (letrec* ((g7418 v)) g7418)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7419
          (letrec*
           ((g7420
             (letrec*
              ((x-e7421 lst))
              (letrec*
               ((v1742 x-e7421))
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
                   ((x-cnd7422
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7422
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
           g7420)))
        g7419)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7423 (lambda (v) (letrec* ((g7424 v)) g7424)))) g7423)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7425
          (letrec*
           ((x7426 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7426)))))
        g7425))))
   (letrec*
    ((g7427
      (letrec*
       ((g7428
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7429
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7429)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7430
                 (letrec*
                  ((x7432
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7432))))
                (g7431
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7433
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7434 (if val7245 val7245 #f))) g7434)))))
                   g7433))))
               g7431)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7435
                 (letrec*
                  ((x7437
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7437))))
                (g7436
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7438
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7439 (if val7247 val7247 #f))) g7439)))))
                   g7438))))
               g7436)))
           (>
            (lambda (x y)
              (letrec*
               ((g7440
                 (letrec*
                  ((x7442
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7442))))
                (g7441
                 (letrec*
                  ((x7443
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7443)))))
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
           ((g7444 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7445
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7446
                     (lambda (k j lst)
                       (letrec*
                        ((g7447
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7448
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7448))
                             lst))))
                        g7447))))
                   g7446)))
               (real?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7266))))
                      (if x-cnd7450
                        g7266
                        (begin
                          (write '(blame g7264 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7449)))
               (boolean?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7269))))
                      (if x-cnd7452
                        g7269
                        (begin
                          (write '(blame g7267 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7451)))
               (number?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7272))))
                      (if x-cnd7454
                        g7272
                        (begin
                          (write '(blame g7270 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7453)))
               (any/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7457 #t)) g7457)) g7275))))
                      (if x-cnd7456
                        g7275
                        (begin
                          (write '(blame g7273 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7455)))
               (any?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7460 #t)) g7460)) g7278))))
                      (if x-cnd7459
                        g7278
                        (begin
                          (write '(blame g7276 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7458)))
               (cons?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x-cnd7462
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7462
                        g7281
                        (begin
                          (write '(blame g7279 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7461)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7463
                     (lambda (k j v)
                       (letrec*
                        ((g7464
                          (letrec*
                           ((x7467
                             (letrec*
                              ((x7468
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7468))))
                            (x7465
                             (letrec*
                              ((x7466
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7466)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7467 x7465)))))
                        g7464))))
                   g7463)))
               (pair?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7469
                     (letrec*
                      ((x-cnd7470
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7284))))
                      (if x-cnd7470
                        g7284
                        (begin
                          (write '(blame g7282 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7469)))
               (integer?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7471
                     (letrec*
                      ((x-cnd7472
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7287))))
                      (if x-cnd7472
                        g7287
                        (begin
                          (write '(blame g7285 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7471)))
               (symbol?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7473
                     (letrec*
                      ((x-cnd7474
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7290))))
                      (if x-cnd7474
                        g7290
                        (begin
                          (write '(blame g7288 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7473)))
               (string?/c
                (lambda (g7291 g7292 g7293)
                  (letrec*
                   ((g7475
                     (letrec*
                      ((x-cnd7476
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7293))))
                      (if x-cnd7476
                        g7293
                        (begin
                          (write '(blame g7291 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7291)))))))
                   g7475)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7477
                     (lambda (k j v)
                       (letrec*
                        ((g7478
                          (letrec*
                           ((x-cnd7479
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7479
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7478))))
                   g7477)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7480
                     (lambda (k j v)
                       (letrec*
                        ((g7481
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7482
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7482))))
                        g7481))))
                   g7480)))
               (null?/c
                (lambda (g7294 g7295 g7296)
                  (letrec*
                   ((g7483
                     (letrec*
                      ((x-cnd7484
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7296))))
                      (if x-cnd7484
                        g7296
                        (begin
                          (write '(blame g7294 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7294)))))))
                   g7483)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7485
                     (lambda (k j v)
                       (letrec*
                        ((g7486
                          (letrec*
                           ((x-cnd7487
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7487
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7491
                                (letrec*
                                 ((x7492
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7492))))
                               (x7488
                                (letrec*
                                 ((x7490
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7489
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7490 k j x7489)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7491 x7488)))))))
                        g7486))))
                   g7485)))
               (any? (lambda (v) (letrec* ((g7493 #t)) g7493)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7494
                     (letrec*
                      ((x7495
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7495)))))
                   g7494)))
               (nonzero?/c
                (lambda (g7297 g7298 g7299)
                  (letrec*
                   ((g7496
                     (letrec*
                      ((x-cnd7497
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7498
                                (letrec*
                                 ((x7499
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7499)))))
                              g7498))
                           g7299))))
                      (if x-cnd7497
                        g7299
                        (begin
                          (write '(blame g7297 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7297)))))))
                   g7496)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7500
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7501
                          (letrec*
                           ((x-cnd7502
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7503
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7503))
                                g7302))))
                           (if x-cnd7502
                             g7302
                             (begin
                               (write '(blame g7300 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7501))))
                   g7500)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7504
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7505
                          (letrec*
                           ((x-cnd7506
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7507
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7507))
                                g7305))))
                           (if x-cnd7506
                             g7305
                             (begin
                               (write '(blame g7303 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7505))))
                   g7504)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7508
                     (lambda (g7306 g7307 g7308)
                       (letrec*
                        ((g7509
                          (letrec*
                           ((x-cnd7510
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7511
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7511))
                                g7308))))
                           (if x-cnd7510
                             g7308
                             (begin
                               (write '(blame g7306 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7306)))))))
                        g7509))))
                   g7508)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7512
                     (lambda (g7309 g7310 g7311)
                       (letrec*
                        ((g7513
                          (letrec*
                           ((x-cnd7514
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7515
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7515))
                                g7311))))
                           (if x-cnd7514
                             g7311
                             (begin
                               (write '(blame g7309 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7309)))))))
                        g7513))))
                   g7512)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7516
                     (lambda (g7312 g7313 g7314)
                       (letrec*
                        ((g7517
                          (letrec*
                           ((x-cnd7518
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7519
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7519))
                                g7314))))
                           (if x-cnd7518
                             g7314
                             (begin
                               (write '(blame g7312 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7312)))))))
                        g7517))))
                   g7516)))
               (meta (lambda (v) (letrec* ((g7520 v)) g7520)))
               (+
                (letrec*
                 ((xj7315
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7316
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7521
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7319 k7320 f7321)
                         (letrec*
                          ((g7523
                            (lambda (g7317 g7318)
                              (letrec*
                               ((g7524
                                 (letrec*
                                  ((x7525
                                    (letrec*
                                     ((x7527
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7319 k7320 g7317)))
                                      (x7526
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7319 k7320 g7318))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7321 x7527 x7526)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7319 k7320 x7525)))))
                               g7524))))
                          g7523))
                       xj7315
                       xk7316
                       (lambda (a b)
                         (letrec*
                          ((g7522
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7522))))))
                  g7521)))
               (-
                (letrec*
                 ((xj7322
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7323
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7528
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7326 k7327 f7328)
                         (letrec*
                          ((g7530
                            (lambda (g7324 g7325)
                              (letrec*
                               ((g7531
                                 (letrec*
                                  ((x7532
                                    (letrec*
                                     ((x7534
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7326 k7327 g7324)))
                                      (x7533
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7328 x7534 x7533)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7326 k7327 x7532)))))
                               g7531))))
                          g7530))
                       xj7322
                       xk7323
                       (lambda (a b)
                         (letrec*
                          ((g7529
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7529))))))
                  g7528)))
               (*
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7535
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7537
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7538
                                 (letrec*
                                  ((x7539
                                    (letrec*
                                     ((x7541
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7333 k7334 g7331)))
                                      (x7540
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7335 x7541 x7540)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7333 k7334 x7539)))))
                               g7538))))
                          g7537))
                       xj7329
                       xk7330
                       (lambda (a b)
                         (letrec*
                          ((g7536
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7536))))))
                  g7535)))
               (<
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7542
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7340 k7341 f7342)
                         (letrec*
                          ((g7544
                            (lambda (g7338 g7339)
                              (letrec*
                               ((g7545
                                 (letrec*
                                  ((x7546
                                    (letrec*
                                     ((x7548
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7340 k7341 g7338)))
                                      (x7547
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7340 k7341 g7339))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7342 x7548 x7547)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7340 k7341 x7546)))))
                               g7545))))
                          g7544))
                       xj7336
                       xk7337
                       (lambda (a b)
                         (letrec*
                          ((g7543
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7543))))))
                  g7542)))
               (>
                (letrec*
                 ((xj7343
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7344
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7549
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7347 k7348 f7349)
                         (letrec*
                          ((g7551
                            (lambda (g7345 g7346)
                              (letrec*
                               ((g7552
                                 (letrec*
                                  ((x7553
                                    (letrec*
                                     ((x7555
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7347 k7348 g7345)))
                                      (x7554
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7347 k7348 g7346))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7349 x7555 x7554)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7347 k7348 x7553)))))
                               g7552))))
                          g7551))
                       xj7343
                       xk7344
                       (lambda (a b)
                         (letrec*
                          ((g7550
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7550))))))
                  g7549)))
               (<=
                (letrec*
                 ((xj7350
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7351
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7556
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7354 k7355 f7356)
                         (letrec*
                          ((g7558
                            (lambda (g7352 g7353)
                              (letrec*
                               ((g7559
                                 (letrec*
                                  ((x7560
                                    (letrec*
                                     ((x7562
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7354 k7355 g7352)))
                                      (x7561
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7354 k7355 g7353))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7356 x7562 x7561)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7354 k7355 x7560)))))
                               g7559))))
                          g7558))
                       xj7350
                       xk7351
                       (lambda (a b)
                         (letrec*
                          ((g7557
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7557))))))
                  g7556)))
               (>=
                (letrec*
                 ((xj7357
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7358
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7563
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7361 k7362 f7363)
                         (letrec*
                          ((g7565
                            (lambda (g7359 g7360)
                              (letrec*
                               ((g7566
                                 (letrec*
                                  ((x7567
                                    (letrec*
                                     ((x7569
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7361 k7362 g7359)))
                                      (x7568
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7361 k7362 g7360))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7363 x7569 x7568)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7361 k7362 x7567)))))
                               g7566))))
                          g7565))
                       xj7357
                       xk7358
                       (lambda (a b)
                         (letrec*
                          ((g7564
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7564))))))
                  g7563)))
               (add1
                (lambda (x)
                  (letrec*
                   ((g7570
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7570)))
               (/
                (letrec*
                 ((xj7364
                   (begin (write '(funapp 548 26)) (display "\n") 'server))
                  (xk7365
                   (begin (write '(funapp 548 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7571
                    (begin
                      (write '(funapp 551 21))
                      (display "\n")
                      ((lambda (j7368 k7369 f7370)
                         (letrec*
                          ((g7573
                            (lambda (g7366 g7367)
                              (letrec*
                               ((g7574
                                 (letrec*
                                  ((x7575
                                    (letrec*
                                     ((x7577
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7368 k7369 g7366)))
                                      (x7576
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7368 k7369 g7367))))
                                     (begin
                                       (write '(funapp 562 36))
                                       (display "\n")
                                       (f7370 x7577 x7576)))))
                                  (begin
                                    (write '(funapp 563 33))
                                    (display "\n")
                                    (number?/c j7368 k7369 x7575)))))
                               g7574))))
                          g7573))
                       xj7364
                       xk7365
                       (lambda (a b)
                         (letrec*
                          ((g7572
                            (begin
                              (write '(funapp 568 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7572))))))
                  g7571)))
               (car
                (letrec*
                 ((xj7371
                   (begin (write '(funapp 572 26)) (display "\n") 'server))
                  (xk7372
                   (begin (write '(funapp 572 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7578
                    (begin
                      (write '(funapp 575 21))
                      (display "\n")
                      ((lambda (j7374 k7375 f7376)
                         (letrec*
                          ((g7580
                            (lambda (g7373)
                              (letrec*
                               ((g7581
                                 (letrec*
                                  ((x7582
                                    (letrec*
                                     ((x7583
                                       (begin
                                         (write '(funapp 584 44))
                                         (display "\n")
                                         (pair?/c j7374 k7375 g7373))))
                                     (begin
                                       (write '(funapp 585 36))
                                       (display "\n")
                                       (f7376 x7583)))))
                                  (begin
                                    (write '(funapp 586 33))
                                    (display "\n")
                                    (any/c j7374 k7375 x7582)))))
                               g7581))))
                          g7580))
                       xj7371
                       xk7372
                       (lambda (p)
                         (letrec*
                          ((g7579
                            (begin
                              (write '(funapp 591 51))
                              (display "\n")
                              (orig-car p))))
                          g7579))))))
                  g7578)))
               (cdr
                (letrec*
                 ((xj7377
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7378
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7584
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7380 k7381 f7382)
                         (letrec*
                          ((g7586
                            (lambda (g7379)
                              (letrec*
                               ((g7587
                                 (letrec*
                                  ((x7588
                                    (letrec*
                                     ((x7589
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (pair?/c j7380 k7381 g7379))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7382 x7589)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (any/c j7380 k7381 x7588)))))
                               g7587))))
                          g7586))
                       xj7377
                       xk7378
                       (lambda (p)
                         (letrec*
                          ((g7585
                            (begin
                              (write '(funapp 614 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7585))))))
                  g7584)))
               (cons
                (letrec*
                 ((xj7383
                   (begin (write '(funapp 618 26)) (display "\n") 'server))
                  (xk7384
                   (begin (write '(funapp 618 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7590
                    (begin
                      (write '(funapp 621 21))
                      (display "\n")
                      ((lambda (j7387 k7388 f7389)
                         (letrec*
                          ((g7592
                            (lambda (g7385 g7386)
                              (letrec*
                               ((g7593
                                 (letrec*
                                  ((x7594
                                    (letrec*
                                     ((x7596
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7387 k7388 g7385)))
                                      (x7595
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7387 k7388 g7386))))
                                     (begin
                                       (write '(funapp 632 36))
                                       (display "\n")
                                       (f7389 x7596 x7595)))))
                                  (begin
                                    (write '(funapp 633 33))
                                    (display "\n")
                                    (pair?/c j7387 k7388 x7594)))))
                               g7593))))
                          g7592))
                       xj7383
                       xk7384
                       (lambda (a b)
                         (letrec*
                          ((g7591
                            (begin
                              (write '(funapp 639 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7591))))))
                  g7590)))
               (vector-ref
                (letrec*
                 ((xj7390
                   (begin (write '(funapp 643 26)) (display "\n") 'server))
                  (xk7391
                   (begin (write '(funapp 643 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7597
                    (begin
                      (write '(funapp 646 21))
                      (display "\n")
                      ((lambda (j7393 k7394 f7395)
                         (letrec*
                          ((g7599
                            (lambda (g7392)
                              (letrec*
                               ((g7600
                                 (letrec*
                                  ((x7601
                                    (letrec*
                                     ((x7602
                                       (begin
                                         (write '(funapp 655 44))
                                         (display "\n")
                                         (vector?/c j7393 k7394 g7392))))
                                     (begin
                                       (write '(funapp 656 36))
                                       (display "\n")
                                       (f7395 x7602)))))
                                  (begin
                                    (write '(funapp 657 33))
                                    (display "\n")
                                    (integer?/c j7393 k7394 x7601)))))
                               g7600))))
                          g7599))
                       xj7390
                       xk7391
                       (lambda (v i)
                         (letrec*
                          ((g7598
                            (begin
                              (write '(funapp 663 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7598))))))
                  g7597)))
               (vector-set!
                (letrec*
                 ((xj7396
                   (begin (write '(funapp 667 26)) (display "\n") 'server))
                  (xk7397
                   (begin (write '(funapp 667 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7603
                    (begin
                      (write '(funapp 670 21))
                      (display "\n")
                      ((lambda (j7400 k7401 f7402)
                         (letrec*
                          ((g7605
                            (lambda (g7398 g7399)
                              (letrec*
                               ((g7606
                                 (letrec*
                                  ((x7607
                                    (letrec*
                                     ((x7609
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (vector?/c j7400 k7401 g7398)))
                                      (x7608
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (integer?/c j7400 k7401 g7399))))
                                     (begin
                                       (write '(funapp 681 36))
                                       (display "\n")
                                       (f7402 x7609 x7608)))))
                                  (begin
                                    (write '(funapp 682 33))
                                    (display "\n")
                                    (any/c j7400 k7401 x7607)))))
                               g7606))))
                          g7605))
                       xj7396
                       xk7397
                       (lambda (vec i v)
                         (letrec*
                          ((g7604
                            (begin
                              (write '(funapp 688 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7604))))))
                  g7603)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7611
                        (letrec*
                         ((x7612
                           (begin
                             (write '(funapp 695 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 695 58))
                           (display "\n")
                           (cdr x7612)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7611)))))
                   g7610)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 702 62))
                        (display "\n")
                        (assert x7616))))
                    (g7614
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 703 57))
                        (display "\n")
                        (assert x7617))))
                    (g7615
                     (letrec*
                      ((x-cnd7618
                        (begin
                          (write '(funapp 706 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7618
                        (begin (write '(funapp 708 24)) (display "\n") '())
                        (letrec*
                         ((x7621
                           (letrec*
                            ((x7622
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (f x7622))))
                          (x7619
                           (letrec*
                            ((x7620
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (map f x7620)))))
                         (begin
                           (write '(funapp 712 26))
                           (display "\n")
                           (cons x7621 x7619)))))))
                   g7615)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 717 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 717 55))
                        (display "\n")
                        (cdr x7624)))))
                   g7623)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7626
                        (letrec*
                         ((x7627
                           (letrec*
                            ((x7628
                              (begin
                                (write '(funapp 726 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 726 61))
                              (display "\n")
                              (car x7628)))))
                         (begin
                           (write '(funapp 727 26))
                           (display "\n")
                           (cdr x7627)))))
                      (begin
                        (write '(funapp 728 23))
                        (display "\n")
                        (car x7626)))))
                   g7625)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7630
                        (letrec*
                         ((x7631
                           (letrec*
                            ((x7632
                              (begin
                                (write '(funapp 737 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 737 61))
                              (display "\n")
                              (cdr x7632)))))
                         (begin
                           (write '(funapp 738 26))
                           (display "\n")
                           (car x7631)))))
                      (begin
                        (write '(funapp 739 23))
                        (display "\n")
                        (cdr x7630)))))
                   g7629)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7636
                        (begin
                          (write '(funapp 745 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 745 60))
                        (display "\n")
                        (assert x7636))))
                    (g7634
                     (letrec*
                      ((x7637
                        (begin
                          (write '(funapp 747 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 747 59))
                        (display "\n")
                        (assert x7637))))
                    (g7635
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 750 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 751 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7638
                         (begin
                           (write '(funapp 753 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7639 res))
                       g7639))))
                   g7635)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7641
                        (letrec*
                         ((x7642
                           (begin
                             (write '(funapp 761 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 761 58))
                           (display "\n")
                           (cdr x7642)))))
                      (begin
                        (write '(funapp 762 23))
                        (display "\n")
                        (car x7641)))))
                   g7640)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7644
                        (letrec*
                         ((x7645
                           (letrec*
                            ((x7646
                              (begin
                                (write '(funapp 771 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 771 61))
                              (display "\n")
                              (car x7646)))))
                         (begin
                           (write '(funapp 772 26))
                           (display "\n")
                           (car x7645)))))
                      (begin
                        (write '(funapp 773 23))
                        (display "\n")
                        (cdr x7644)))))
                   g7643)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 778 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 778 57))
                        (display "\n")
                        (assert x7649))))
                    (g7648
                     (letrec*
                      ((x-cnd7650
                        (begin
                          (write '(funapp 781 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7650
                        #f
                        (letrec*
                         ((x-cnd7651
                           (letrec*
                            ((x7652
                              (begin
                                (write '(funapp 786 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 786 56))
                              (display "\n")
                              (eq? x7652 k)))))
                         (if x-cnd7651
                           (begin
                             (write '(funapp 788 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7653
                              (begin
                                (write '(funapp 789 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 789 55))
                              (display "\n")
                              (assq k x7653)))))))))
                   g7648)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 794 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (= 0 x7655)))))
                   g7654)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 799 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 799 57))
                        (display "\n")
                        (assert x7658))))
                    (g7657
                     (letrec*
                      ((x-cnd7659
                        (begin
                          (write '(funapp 802 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7659
                        ""
                        (letrec*
                         ((x7662
                           (letrec*
                            ((x7663
                              (begin
                                (write '(funapp 807 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 807 55))
                              (display "\n")
                              (char->string x7663))))
                          (x7660
                           (letrec*
                            ((x7661
                              (begin
                                (write '(funapp 809 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 809 55))
                              (display "\n")
                              (list->string x7661)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (string-append x7662 x7660)))))))
                   g7657)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7667))))
                    (g7665
                     (letrec*
                      ((x7668
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7668))))
                    (g7666
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 819 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7669
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 821 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7669))))
                   g7666)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((x7671
                        (letrec*
                         ((x7672
                           (letrec*
                            ((x7673
                              (begin
                                (write '(funapp 831 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 831 61))
                              (display "\n")
                              (cdr x7673)))))
                         (begin
                           (write '(funapp 832 26))
                           (display "\n")
                           (cdr x7672)))))
                      (begin
                        (write '(funapp 833 23))
                        (display "\n")
                        (cdr x7671)))))
                   g7670)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x7677
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7677))))
                    (g7675
                     (letrec*
                      ((x7678
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7678))))
                    (g7676
                     (letrec*
                      ((x-cnd7679
                        (begin
                          (write '(funapp 842 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7679
                        x
                        (letrec*
                         ((x7681
                           (begin
                             (write '(funapp 846 34))
                             (display "\n")
                             (cdr x)))
                          (x7680
                           (begin
                             (write '(funapp 846 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 847 26))
                           (display "\n")
                           (list-tail x7681 x7680)))))))
                   g7676)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7682
                     (begin (write '(funapp 849 49)) (display "\n") '())))
                   g7682)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7683
                     (letrec*
                      ((x-cnd7684
                        (letrec*
                         ((x7685 #\a))
                         (begin
                           (write '(funapp 856 48))
                           (display "\n")
                           (char-ci>=? c x7685)))))
                      (if x-cnd7684
                        (letrec*
                         ((x7686 #\z))
                         (begin
                           (write '(funapp 858 48))
                           (display "\n")
                           (char-ci<=? c x7686)))
                        #f))))
                   g7683)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7688
                           (begin
                             (write '(funapp 867 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 867 62))
                           (display "\n")
                           (= x7688 9)))))
                      (letrec*
                       ((g7689
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7690
                                 (begin
                                   (write '(funapp 875 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 876 32))
                                 (display "\n")
                                 (= x7690 10)))))
                            (letrec*
                             ((g7691
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7692
                                    (begin
                                      (write '(funapp 882 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 883 35))
                                    (display "\n")
                                    (= x7692 32))))))
                             g7691)))))
                       g7689))))
                   g7687)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((x7694
                        (letrec*
                         ((x7695
                           (begin
                             (write '(funapp 892 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 892 58))
                           (display "\n")
                           (cdr x7695)))))
                      (begin
                        (write '(funapp 893 23))
                        (display "\n")
                        (cdr x7694)))))
                   g7693)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7696
                     (letrec*
                      ((x7698
                        (begin
                          (write '(funapp 898 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 898 59))
                        (display "\n")
                        (assert x7698))))
                    (g7697
                     (begin (write '(funapp 899 28)) (display "\n") (> x 0))))
                   g7697)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7699
                     (begin
                       (write '(funapp 901 59))
                       (display "\n")
                       (bool-top))))
                   g7699)))
               ($pc (begin (write '(funapp 902 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7700 #f)) g7700)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7701
                     (letrec*
                      ((x7702
                        (begin
                          (write '(funapp 908 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 908 55))
                        (display "\n")
                        (cdr x7702)))))
                   g7701)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7703
                     (letrec*
                      ((x7705
                        (begin
                          (write '(funapp 913 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 913 59))
                        (display "\n")
                        (assert x7705))))
                    (g7704
                     (letrec*
                      ((x-cnd7706
                        (begin
                          (write '(funapp 916 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7706
                        (begin
                          (write '(funapp 917 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 917 49))
                          (display "\n")
                          (floor x))))))
                   g7704)))
               ($cmp (begin (write '(funapp 919 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7707
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 925 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7708
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7709
                                 (begin
                                   (write '(funapp 933 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7709
                                 (begin
                                   (write '(funapp 934 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7710
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7711
                                       (begin
                                         (write '(funapp 942 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7711
                                       (letrec*
                                        ((x-cnd7712
                                          (begin
                                            (write '(funapp 945 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7712
                                          (begin
                                            (write '(funapp 946 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7713
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7714
                                             (begin
                                               (write '(funapp 955 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7714
                                             (letrec*
                                              ((x-cnd7715
                                                (begin
                                                  (write '(funapp 958 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7715
                                                (letrec*
                                                 ((x-cnd7716
                                                   (letrec*
                                                    ((x7718
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7717
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 965 53))
                                                      (display "\n")
                                                      (equal? x7718 x7717)))))
                                                 (if x-cnd7716
                                                   (letrec*
                                                    ((x7720
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7719
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 970 53))
                                                      (display "\n")
                                                      (equal? x7720 x7719)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7721
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7722
                                                (begin
                                                  (write '(funapp 979 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7722
                                                (letrec*
                                                 ((x-cnd7723
                                                   (begin
                                                     (write '(funapp 982 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7723
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 985 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7724
                                                       (letrec*
                                                        ((x-cnd7725
                                                          (letrec*
                                                           ((x7726
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  992
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 994 60))
                                                             (display "\n")
                                                             (= x7726 n)))))
                                                        (if x-cnd7725
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7727
                                                                  (letrec*
                                                                   ((val7256
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1003
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7728
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7729
                                                                           (letrec*
                                                                            ((x7731
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1012
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7730
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1016
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1019
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7731
                                                                               x7730)))))
                                                                         (if x-cnd7729
                                                                           (letrec*
                                                                            ((x7732
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1025
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1028
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7732)))
                                                                           #f)))))
                                                                    g7728))))
                                                                g7727))))
                                                           (letrec*
                                                            ((g7733
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1034
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7733))
                                                          #f))))
                                                     g7724))
                                                   #f))
                                                #f)))))
                                         g7721)))))
                                   g7713)))))
                             g7710)))))
                       g7708))))
                   g7707)))
               (cdaaar
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
                                (write '(funapp 1052 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1052 61))
                              (display "\n")
                              (car x7737)))))
                         (begin
                           (write '(funapp 1053 26))
                           (display "\n")
                           (car x7736)))))
                      (begin
                        (write '(funapp 1054 23))
                        (display "\n")
                        (cdr x7735)))))
                   g7734)))
               (caaddr
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
                                (write '(funapp 1063 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1063 61))
                              (display "\n")
                              (cdr x7741)))))
                         (begin
                           (write '(funapp 1064 26))
                           (display "\n")
                           (car x7740)))))
                      (begin
                        (write '(funapp 1065 23))
                        (display "\n")
                        (car x7739)))))
                   g7738)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7742
                     (begin
                       (write '(funapp 1067 53))
                       (display "\n")
                       (eq? x y))))
                   g7742)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7746
                        (begin
                          (write '(funapp 1072 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1072 60))
                        (display "\n")
                        (assert x7746))))
                    (g7744
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 1074 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1074 59))
                        (display "\n")
                        (assert x7747))))
                    (g7745
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1077 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1078 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7748
                         (begin
                           (write '(funapp 1080 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7749 res))
                       g7749))))
                   g7745)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7750
                     (begin
                       (write '(funapp 1083 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1083 57))
                          (display "\n")
                          '())))))
                   g7750)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7754))))
                    (g7752
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7755))))
                    (g7753
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1091 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7756
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1093 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7756))))
                   g7753)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7758
                        (letrec*
                         ((x7759
                           (begin
                             (write '(funapp 1101 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1101 58))
                           (display "\n")
                           (car x7759)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7758)))))
                   g7757)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7761
                        (letrec*
                         ((x7762
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7763)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7762)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (cdr x7761)))))
                   g7760)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7765
                        (letrec*
                         ((x7766
                           (begin
                             (write '(funapp 1121 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1121 58))
                           (display "\n")
                           (cdr x7766)))))
                      (begin
                        (write '(funapp 1122 23))
                        (display "\n")
                        (car x7765)))))
                   g7764)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7768
                        (letrec*
                         ((x7769
                           (begin
                             (write '(funapp 1129 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1129 58))
                           (display "\n")
                           (car x7769)))))
                      (begin
                        (write '(funapp 1130 23))
                        (display "\n")
                        (car x7768)))))
                   g7767)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x7773))))
                    (g7771
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x7774))))
                    (g7772
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1137 66))
                        (display "\n")
                        (not x7775)))))
                   g7772)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1147 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1147 61))
                              (display "\n")
                              (car x7779)))))
                         (begin
                           (write '(funapp 1148 26))
                           (display "\n")
                           (car x7778)))))
                      (begin
                        (write '(funapp 1149 23))
                        (display "\n")
                        (car x7777)))))
                   g7776)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1154 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1154 59))
                        (display "\n")
                        (assert x7782))))
                    (g7781
                     (begin (write '(funapp 1155 28)) (display "\n") (< x 0))))
                   g7781)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7783
                     (begin
                       (write '(funapp 1157 53))
                       (display "\n")
                       (memq e l))))
                   g7783)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7785
                        (letrec*
                         ((x7786
                           (begin
                             (write '(funapp 1163 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1163 58))
                           (display "\n")
                           (car x7786)))))
                      (begin
                        (write '(funapp 1164 23))
                        (display "\n")
                        (car x7785)))))
                   g7784)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7787
                     (begin (write '(funapp 1166 51)) (display "\n") '())))
                   g7787)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1170 57))
                        (display "\n")
                        (assert x7790))))
                    (g7789
                     (letrec*
                      ((x-cnd7791
                        (begin
                          (write '(funapp 1173 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7791
                        (begin (write '(funapp 1175 24)) (display "\n") '())
                        (letrec*
                         ((x7794
                           (letrec*
                            ((x7795
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (reverse x7795))))
                          (x7792
                           (letrec*
                            ((x7793
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (list x7793)))))
                         (begin
                           (write '(funapp 1179 26))
                           (display "\n")
                           (append x7794 x7792)))))))
                   g7789)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7797
                        (letrec*
                         ((x7798
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 1188 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1188 61))
                              (display "\n")
                              (car x7799)))))
                         (begin
                           (write '(funapp 1189 26))
                           (display "\n")
                           (car x7798)))))
                      (begin
                        (write '(funapp 1190 23))
                        (display "\n")
                        (car x7797)))))
                   g7796)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7801
                        (letrec*
                         ((x7802
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 1199 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1199 61))
                              (display "\n")
                              (car x7803)))))
                         (begin
                           (write '(funapp 1200 26))
                           (display "\n")
                           (cdr x7802)))))
                      (begin
                        (write '(funapp 1201 23))
                        (display "\n")
                        (cdr x7801)))))
                   g7800)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1206 59))
                        (display "\n")
                        (assert x7806))))
                    (g7805
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1207 60))
                        (display "\n")
                        (= 1 x7807)))))
                   g7805)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7808
                     (letrec*
                      ((x7809
                        (letrec*
                         ((x7810
                           (letrec*
                            ((x7811
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (cdr x7811)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (car x7810)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7809)))))
                   g7808)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1224 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1224 59))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1225 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1225 60))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((x-cnd7817
                        (begin
                          (write '(funapp 1228 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7817
                        (letrec*
                         ((g7818
                           (begin
                             (write '(funapp 1230 42))
                             (display "\n")
                             (proc))))
                         g7818)
                        (letrec*
                         ((x-cnd7819
                           (letrec*
                            ((x7820
                              (begin
                                (write '(funapp 1233 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1233 58))
                              (display "\n")
                              (null? x7820)))))
                         (if x-cnd7819
                           (letrec*
                            ((g7821
                              (letrec*
                               ((x7822
                                 (begin
                                   (write '(funapp 1237 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1237 61))
                                 (display "\n")
                                 (proc x7822)))))
                            g7821)
                           (letrec*
                            ((x-cnd7823
                              (letrec*
                               ((x7824
                                 (begin
                                   (write '(funapp 1241 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1241 62))
                                 (display "\n")
                                 (null? x7824)))))
                            (if x-cnd7823
                              (letrec*
                               ((g7825
                                 (letrec*
                                  ((x7827
                                    (begin
                                      (write '(funapp 1246 43))
                                      (display "\n")
                                      (car args)))
                                   (x7826
                                    (begin
                                      (write '(funapp 1246 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1247 35))
                                    (display "\n")
                                    (proc x7827 x7826)))))
                               g7825)
                              (letrec*
                               ((x-cnd7828
                                 (letrec*
                                  ((x7829
                                    (begin
                                      (write '(funapp 1252 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1253 35))
                                    (display "\n")
                                    (null? x7829)))))
                               (if x-cnd7828
                                 (letrec*
                                  ((g7830
                                    (letrec*
                                     ((x7833
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (car args)))
                                      (x7832
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7831
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1261 38))
                                       (display "\n")
                                       (proc x7833 x7832 x7831)))))
                                  g7830)
                                 (letrec*
                                  ((x-cnd7834
                                    (letrec*
                                     ((x7835
                                       (begin
                                         (write '(funapp 1266 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1267 38))
                                       (display "\n")
                                       (null? x7835)))))
                                  (if x-cnd7834
                                    (letrec*
                                     ((g7836
                                       (letrec*
                                        ((x7840
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (car args)))
                                         (x7839
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7838
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7837
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1276 41))
                                          (display "\n")
                                          (proc x7840 x7839 x7838 x7837)))))
                                     g7836)
                                    (letrec*
                                     ((x-cnd7841
                                       (letrec*
                                        ((x7842
                                          (letrec*
                                           ((x7843
                                             (begin
                                               (write '(funapp 1283 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1284 44))
                                             (display "\n")
                                             (cdr x7843)))))
                                        (begin
                                          (write '(funapp 1285 41))
                                          (display "\n")
                                          (null? x7842)))))
                                     (if x-cnd7841
                                       (letrec*
                                        ((g7844
                                          (letrec*
                                           ((x7850
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (car args)))
                                            (x7849
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7848
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7847
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7845
                                             (letrec*
                                              ((x7846
                                                (begin
                                                  (write '(funapp 1296 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1297 47))
                                                (display "\n")
                                                (car x7846)))))
                                           (begin
                                             (write '(funapp 1298 44))
                                             (display "\n")
                                             (proc
                                              x7850
                                              x7849
                                              x7848
                                              x7847
                                              x7845)))))
                                        g7844)
                                       (letrec*
                                        ((x-cnd7851
                                          (letrec*
                                           ((x7852
                                             (letrec*
                                              ((x7853
                                                (begin
                                                  (write '(funapp 1310 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1311 47))
                                                (display "\n")
                                                (cddr x7853)))))
                                           (begin
                                             (write '(funapp 1312 44))
                                             (display "\n")
                                             (null? x7852)))))
                                        (if x-cnd7851
                                          (letrec*
                                           ((g7854
                                             (letrec*
                                              ((x7862
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7861
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7860
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7859
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7857
                                                (letrec*
                                                 ((x7858
                                                   (begin
                                                     (write '(funapp 1323 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1324 50))
                                                   (display "\n")
                                                   (car x7858))))
                                               (x7855
                                                (letrec*
                                                 ((x7856
                                                   (begin
                                                     (write '(funapp 1327 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1328 50))
                                                   (display "\n")
                                                   (cadr x7856)))))
                                              (begin
                                                (write '(funapp 1329 47))
                                                (display "\n")
                                                (proc
                                                 x7862
                                                 x7861
                                                 x7860
                                                 x7859
                                                 x7857
                                                 x7855)))))
                                           g7854)
                                          (letrec*
                                           ((x-cnd7863
                                             (letrec*
                                              ((x7864
                                                (letrec*
                                                 ((x7865
                                                   (begin
                                                     (write '(funapp 1342 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1343 50))
                                                   (display "\n")
                                                   (cdddr x7865)))))
                                              (begin
                                                (write '(funapp 1344 47))
                                                (display "\n")
                                                (null? x7864)))))
                                           (if x-cnd7863
                                             (letrec*
                                              ((g7866
                                                (letrec*
                                                 ((x7876
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7875
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7874
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7873
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7871
                                                   (letrec*
                                                    ((x7872
                                                      (begin
                                                        (write
                                                         '(funapp 1355 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1356 53))
                                                      (display "\n")
                                                      (car x7872))))
                                                  (x7869
                                                   (letrec*
                                                    ((x7870
                                                      (begin
                                                        (write
                                                         '(funapp 1359 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1360 53))
                                                      (display "\n")
                                                      (cadr x7870))))
                                                  (x7867
                                                   (letrec*
                                                    ((x7868
                                                      (begin
                                                        (write
                                                         '(funapp 1363 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1364 53))
                                                      (display "\n")
                                                      (caddr x7868)))))
                                                 (begin
                                                   (write '(funapp 1365 50))
                                                   (display "\n")
                                                   (proc
                                                    x7876
                                                    x7875
                                                    x7874
                                                    x7873
                                                    x7871
                                                    x7869
                                                    x7867)))))
                                              g7866)
                                             (letrec*
                                              ((g7877
                                                (begin
                                                  (write '(funapp 1376 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7877)))))))))))))))))))
                   g7814)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((x7880
                        (begin
                          (write '(funapp 1382 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1382 57))
                        (display "\n")
                        (assert x7880))))
                    (g7879
                     (letrec*
                      ((x-cnd7881
                        (begin
                          (write '(funapp 1385 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7881
                        #f
                        (letrec*
                         ((x-cnd7882
                           (letrec*
                            ((x7883
                              (begin
                                (write '(funapp 1390 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1390 55))
                              (display "\n")
                              (equal? x7883 e)))))
                         (if x-cnd7882
                           l
                           (letrec*
                            ((x7884
                              (begin
                                (write '(funapp 1393 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1393 55))
                              (display "\n")
                              (member e x7884)))))))))
                   g7879)))
               (cddddr
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
                                (write '(funapp 1402 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1402 61))
                              (display "\n")
                              (cdr x7888)))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (cdr x7887)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (cdr x7886)))))
                   g7885)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7890
                        (letrec*
                         ((x7891
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 1413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1413 61))
                              (display "\n")
                              (cdr x7892)))))
                         (begin
                           (write '(funapp 1414 26))
                           (display "\n")
                           (cdr x7891)))))
                      (begin
                        (write '(funapp 1415 23))
                        (display "\n")
                        (car x7890)))))
                   g7889)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7893
                     (begin
                       (write '(funapp 1417 53))
                       (display "\n")
                       (random 42))))
                   g7893)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((x7896
                        (begin
                          (write '(funapp 1421 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1421 59))
                        (display "\n")
                        (assert x7896))))
                    (g7895
                     (begin (write '(funapp 1422 28)) (display "\n") (= x 0))))
                   g7895)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1429 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7898
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1431 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7898))))
                   g7897)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7900
                        (begin
                          (write '(funapp 1437 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1437 55))
                        (display "\n")
                        (car x7900)))))
                   g7899)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7902
                           (begin
                             (write '(funapp 1447 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7902
                           (letrec*
                            ((x7903
                              (begin
                                (write '(funapp 1449 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1449 55))
                              (display "\n")
                              (list? x7903)))
                           #f))))
                      (letrec*
                       ((g7904
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1452 52))
                             (display "\n")
                             (null? l)))))
                       g7904))))
                   g7901)))
               (cddaar
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
                                (write '(funapp 1462 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1462 61))
                              (display "\n")
                              (car x7908)))))
                         (begin
                           (write '(funapp 1463 26))
                           (display "\n")
                           (cdr x7907)))))
                      (begin
                        (write '(funapp 1464 23))
                        (display "\n")
                        (cdr x7906)))))
                   g7905)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x-cnd7910
                        (letrec*
                         ((x7911 #\0))
                         (begin
                           (write '(funapp 1471 58))
                           (display "\n")
                           (char<=? x7911 c)))))
                      (if x-cnd7910
                        (letrec*
                         ((x7912 #\9))
                         (begin
                           (write '(funapp 1473 48))
                           (display "\n")
                           (char<=? c x7912)))
                        #f))))
                   g7909)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7915))))
                    (g7914
                     (letrec*
                      ((x-cnd7916
                        (begin
                          (write '(funapp 1483 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7916
                        #f
                        (letrec*
                         ((x-cnd7917
                           (letrec*
                            ((x7918
                              (begin
                                (write '(funapp 1488 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1488 56))
                              (display "\n")
                              (eqv? x7918 k)))))
                         (if x-cnd7917
                           (begin
                             (write '(funapp 1490 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7919
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1491 55))
                              (display "\n")
                              (assq k x7919)))))))))
                   g7914)))
               (not (lambda (x) (letrec* ((g7920 (if x #f #t))) g7920)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7921
                     (begin
                       (write '(funapp 1495 50))
                       (display "\n")
                       (append l1 l2))))
                   g7921)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 1499 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1499 57))
                        (display "\n")
                        (assert x7924))))
                    (g7923
                     (letrec*
                      ((x-cnd7925
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7925
                        #f
                        (letrec*
                         ((x-cnd7926
                           (letrec*
                            ((x7927
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (eq? x7927 e)))))
                         (if x-cnd7926
                           l
                           (letrec*
                            ((x7928
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1510 55))
                              (display "\n")
                              (memq e x7928)))))))))
                   g7923)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7930
                        (letrec*
                         ((x7931
                           (letrec*
                            ((x7932
                              (begin
                                (write '(funapp 1519 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1519 61))
                              (display "\n")
                              (car x7932)))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cdr x7931)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (car x7930)))))
                   g7929)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7935))))
                    (g7934
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7936
                             (letrec*
                              ((x-cnd7937
                                (begin
                                  (write '(funapp 1534 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7937
                                0
                                (letrec*
                                 ((x7938
                                   (letrec*
                                    ((x7939
                                      (begin
                                        (write '(funapp 1539 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1539 63))
                                      (display "\n")
                                      (rec x7939)))))
                                 (begin
                                   (write '(funapp 1540 34))
                                   (display "\n")
                                   (+ 1 x7938)))))))
                           g7936))))
                      (letrec*
                       ((g7940
                         (begin
                           (write '(funapp 1542 40))
                           (display "\n")
                           (rec l))))
                       g7940))))
                   g7934)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7944))))
                    (g7942
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7945))))
                    (g7943
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1551 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7946
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1553 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7946))))
                   g7943)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1559 65))
                        (display "\n")
                        (not x7948)))))
                   g7947)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x7950
                        (letrec*
                         ((x7951
                           (begin
                             (write '(funapp 1566 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1566 58))
                           (display "\n")
                           (car x7951)))))
                      (begin
                        (write '(funapp 1567 23))
                        (display "\n")
                        (cdr x7950)))))
                   g7949)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 1572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1572 57))
                        (display "\n")
                        (assert x7954))))
                    (g7953
                     (letrec*
                      ((x-cnd7955
                        (begin
                          (write '(funapp 1575 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7955
                        #f
                        (letrec*
                         ((x-cnd7956
                           (letrec*
                            ((x7957
                              (begin
                                (write '(funapp 1580 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1580 56))
                              (display "\n")
                              (equal? x7957 k)))))
                         (if x-cnd7956
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7958
                              (begin
                                (write '(funapp 1583 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1583 55))
                              (display "\n")
                              (assoc k x7958)))))))))
                   g7953)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((x7960
                        (begin
                          (write '(funapp 1588 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1588 55))
                        (display "\n")
                        (car x7960)))))
                   g7959)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7961
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7964))))
                    (g7962
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7965))))
                    (g7963
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1595 63))
                        (display "\n")
                        (not x7966)))))
                   g7963)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7967
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1602 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7968
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1604 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7968))))
                   g7967)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1610 62))
                        (display "\n")
                        (assert x7972))))
                    (g7970
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1611 57))
                        (display "\n")
                        (assert x7973))))
                    (g7971
                     (letrec*
                      ((x-cnd7974
                        (begin
                          (write '(funapp 1614 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7974
                        #t
                        (letrec*
                         ((x-cnd7975
                           (begin
                             (write '(funapp 1618 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7975
                           (letrec*
                            ((g7976
                              (letrec*
                               ((x7978
                                 (begin
                                   (write '(funapp 1621 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1621 64))
                                 (display "\n")
                                 (f x7978))))
                             (g7977
                              (letrec*
                               ((x7979
                                 (begin
                                   (write '(funapp 1623 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1623 58))
                                 (display "\n")
                                 (for-each f x7979)))))
                            g7977)
                           (begin
                             (write '(funapp 1625 27))
                             (display "\n")
                             '())))))))
                   g7971)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7980
                     (letrec*
                      ((x7982
                        (begin
                          (write '(funapp 1630 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1630 59))
                        (display "\n")
                        (assert x7982))))
                    (g7981
                     (letrec*
                      ((x-cnd7983
                        (begin
                          (write '(funapp 1632 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7983
                        (begin
                          (write '(funapp 1632 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7981)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7984
                     (letrec*
                      ((x7987
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7987))))
                    (g7985
                     (letrec*
                      ((x7988
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7988))))
                    (g7986
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1641 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7989
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1643 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7989))))
                   g7986)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x7991
                        (letrec*
                         ((x7992
                           (letrec*
                            ((x7993
                              (begin
                                (write '(funapp 1653 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1653 61))
                              (display "\n")
                              (cdr x7993)))))
                         (begin
                           (write '(funapp 1654 26))
                           (display "\n")
                           (cdr x7992)))))
                      (begin
                        (write '(funapp 1655 23))
                        (display "\n")
                        (car x7991)))))
                   g7990)))
               (newline (lambda () (letrec* ((g7994 #f)) g7994)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7995
                     (letrec*
                      ((x7997
                        (letrec*
                         ((x7998
                           (begin
                             (write '(funapp 1663 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1663 58))
                           (display "\n")
                           (abs x7998))))
                       (x7996
                        (begin
                          (write '(funapp 1664 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1665 23))
                        (display "\n")
                        (/ x7997 x7996)))))
                   g7995)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7999
                     (letrec*
                      ((x8003
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1671 57))
                        (display "\n")
                        (assert x8003))))
                    (g8000
                     (letrec*
                      ((x8004
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1672 63))
                        (display "\n")
                        (assert x8004))))
                    (g8001
                     (letrec*
                      ((x8005
                        (letrec*
                         ((x8006
                           (begin
                             (write '(funapp 1675 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1675 61))
                           (display "\n")
                           (< index x8006)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (assert x8005))))
                    (g8002
                     (letrec*
                      ((x-cnd8007
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8007
                        (begin
                          (write '(funapp 1681 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8009
                           (begin
                             (write '(funapp 1683 34))
                             (display "\n")
                             (cdr l)))
                          (x8008
                           (begin
                             (write '(funapp 1683 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1684 26))
                           (display "\n")
                           (list-ref x8009 x8008)))))))
                   g8002)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8010
                     (letrec*
                      ((x-cnd8011
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8011
                        a
                        (letrec*
                         ((x8012
                           (begin
                             (write '(funapp 1694 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1694 57))
                           (display "\n")
                           (gcd b x8012)))))))
                   g8010)))
               (mult
                (lambda (n m)
                  (letrec*
                   ((g8013
                     (letrec*
                      ((x-cnd8014
                        (letrec*
                         ((val7263
                           (begin
                             (write '(funapp 1703 36))
                             (display "\n")
                             (<= n 0))))
                         (letrec*
                          ((g8015
                            (if val7263
                              val7263
                              (begin
                                (write '(funapp 1705 55))
                                (display "\n")
                                (<= m 0)))))
                          g8015))))
                      (if x-cnd8014
                        0
                        (letrec*
                         ((x8016
                           (letrec*
                            ((x8017
                              (begin
                                (write '(funapp 1710 51))
                                (display "\n")
                                (- m 1))))
                            (begin
                              (write '(funapp 1710 61))
                              (display "\n")
                              (mult n x8017)))))
                         (begin
                           (write '(funapp 1711 26))
                           (display "\n")
                           (+ n x8016)))))))
                   g8013)))
               (sqr
                (lambda (n)
                  (letrec*
                   ((g8018
                     (begin
                       (write '(funapp 1713 50))
                       (display "\n")
                       (mult n n))))
                   g8018))))
              (letrec*
               ((g8019
                 (begin
                   (write '(funapp 1716 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1717 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8022
                          (letrec*
                           ((xj7403
                             (begin
                               (write '(funapp 1721 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1721 37))
                                  (display "\n")
                                  'module))))
                            (xk7404
                             (begin
                               (write '(funapp 1721 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1721 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8023
                              (begin
                                (write '(funapp 1724 27))
                                (display "\n")
                                ((lambda (j7407 k7408 f7409)
                                   (letrec*
                                    ((g8024
                                      (lambda (g7405 g7406)
                                        (letrec*
                                         ((g8025
                                           (letrec*
                                            ((x8029
                                              (letrec*
                                               ((x8030
                                                 (begin
                                                   (write '(funapp 1733 50))
                                                   (display "\n")
                                                   (>=/c 0))))
                                               (begin
                                                 (write '(funapp 1734 42))
                                                 (display "\n")
                                                 (and/c integer?/c x8030))))
                                             (x8026
                                              (letrec*
                                               ((x8028
                                                 (begin
                                                   (write '(funapp 1738 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7407
                                                    k7408
                                                    g7405)))
                                                (x8027
                                                 (begin
                                                   (write '(funapp 1740 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7407
                                                    k7408
                                                    g7406))))
                                               (begin
                                                 (write '(funapp 1741 42))
                                                 (display "\n")
                                                 (f7409 x8028 x8027)))))
                                            (begin
                                              (write '(funapp 1742 39))
                                              (display "\n")
                                              (x8029 j7407 k7408 x8026)))))
                                         g8025))))
                                    g8024))
                                 xj7403
                                 xk7404
                                 mult))))
                            g8023)))
                         (x8021 (input))
                         (x8020 (input)))
                        (begin
                          (write '(funapp 1751 21))
                          (display "\n")
                          (x8022 x8021 x8020)))
                       (letrec*
                        ((xj7410
                          (begin
                            (write '(funapp 1753 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1753 34))
                               (display "\n")
                               'module))))
                         (xk7411
                          (begin
                            (write '(funapp 1753 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1753 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8031
                           (begin
                             (write '(funapp 1756 24))
                             (display "\n")
                             ((lambda (j7413 k7414 f7415)
                                (letrec*
                                 ((g8032
                                   (lambda (g7412)
                                     (letrec*
                                      ((g8033
                                        (letrec*
                                         ((x7416
                                           (begin
                                             (write '(funapp 1763 44))
                                             (display "\n")
                                             (integer?/c j7413 k7414 g7412))))
                                         (letrec*
                                          ((g8034
                                            (letrec*
                                             ((x8036
                                               (begin
                                                 (write '(funapp 1768 42))
                                                 (display "\n")
                                                 ((lambda (n)
                                                    (letrec*
                                                     ((g8037
                                                       (letrec*
                                                        ((x8038
                                                          (begin
                                                            (write
                                                             '(funapp 1772 57))
                                                            (display "\n")
                                                            (>=/c n))))
                                                        (begin
                                                          (write
                                                           '(funapp 1773 49))
                                                          (display "\n")
                                                          (and/c
                                                           integer?/c
                                                           x8038)))))
                                                     g8037))
                                                  x7416)))
                                              (x8035
                                               (begin
                                                 (write '(funapp 1776 48))
                                                 (display "\n")
                                                 (f7415 x7416))))
                                             (begin
                                               (write '(funapp 1777 40))
                                               (display "\n")
                                               (x8036 j7413 k7414 x8035)))))
                                          g8034))))
                                      g8033))))
                                 g8032))
                              xj7410
                              xk7411
                              sqr))))
                         g8031))))))))
               g8019))))
           g7445))))
       g7428)))
    g7427)))
