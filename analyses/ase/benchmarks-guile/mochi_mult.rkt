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
               (/
                (letrec*
                 ((xj7364
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7365
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7570
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7368 k7369 f7370)
                         (letrec*
                          ((g7572
                            (lambda (g7366 g7367)
                              (letrec*
                               ((g7573
                                 (letrec*
                                  ((x7574
                                    (letrec*
                                     ((x7576
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (number?/c j7368 k7369 g7366)))
                                      (x7575
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7368 k7369 g7367))))
                                     (begin
                                       (write '(funapp 561 36))
                                       (display "\n")
                                       (f7370 x7576 x7575)))))
                                  (begin
                                    (write '(funapp 562 33))
                                    (display "\n")
                                    (number?/c j7368 k7369 x7574)))))
                               g7573))))
                          g7572))
                       xj7364
                       xk7365
                       (lambda (a b)
                         (letrec*
                          ((g7571
                            (begin
                              (write '(funapp 567 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7571))))))
                  g7570)))
               (car
                (letrec*
                 ((xj7371
                   (begin (write '(funapp 571 26)) (display "\n") 'server))
                  (xk7372
                   (begin (write '(funapp 571 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7577
                    (begin
                      (write '(funapp 574 21))
                      (display "\n")
                      ((lambda (j7374 k7375 f7376)
                         (letrec*
                          ((g7579
                            (lambda (g7373)
                              (letrec*
                               ((g7580
                                 (letrec*
                                  ((x7581
                                    (letrec*
                                     ((x7582
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (pair?/c j7374 k7375 g7373))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7376 x7582)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (any/c j7374 k7375 x7581)))))
                               g7580))))
                          g7579))
                       xj7371
                       xk7372
                       (lambda (p)
                         (letrec*
                          ((g7578
                            (begin
                              (write '(funapp 590 51))
                              (display "\n")
                              (orig-car p))))
                          g7578))))))
                  g7577)))
               (cdr
                (letrec*
                 ((xj7377
                   (begin (write '(funapp 594 26)) (display "\n") 'server))
                  (xk7378
                   (begin (write '(funapp 594 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7583
                    (begin
                      (write '(funapp 597 21))
                      (display "\n")
                      ((lambda (j7380 k7381 f7382)
                         (letrec*
                          ((g7585
                            (lambda (g7379)
                              (letrec*
                               ((g7586
                                 (letrec*
                                  ((x7587
                                    (letrec*
                                     ((x7588
                                       (begin
                                         (write '(funapp 606 44))
                                         (display "\n")
                                         (pair?/c j7380 k7381 g7379))))
                                     (begin
                                       (write '(funapp 607 36))
                                       (display "\n")
                                       (f7382 x7588)))))
                                  (begin
                                    (write '(funapp 608 33))
                                    (display "\n")
                                    (any/c j7380 k7381 x7587)))))
                               g7586))))
                          g7585))
                       xj7377
                       xk7378
                       (lambda (p)
                         (letrec*
                          ((g7584
                            (begin
                              (write '(funapp 613 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7584))))))
                  g7583)))
               (cons
                (letrec*
                 ((xj7383
                   (begin (write '(funapp 617 26)) (display "\n") 'server))
                  (xk7384
                   (begin (write '(funapp 617 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7589
                    (begin
                      (write '(funapp 620 21))
                      (display "\n")
                      ((lambda (j7387 k7388 f7389)
                         (letrec*
                          ((g7591
                            (lambda (g7385 g7386)
                              (letrec*
                               ((g7592
                                 (letrec*
                                  ((x7593
                                    (letrec*
                                     ((x7595
                                       (begin
                                         (write '(funapp 629 44))
                                         (display "\n")
                                         (any/c j7387 k7388 g7385)))
                                      (x7594
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7387 k7388 g7386))))
                                     (begin
                                       (write '(funapp 631 36))
                                       (display "\n")
                                       (f7389 x7595 x7594)))))
                                  (begin
                                    (write '(funapp 632 33))
                                    (display "\n")
                                    (pair?/c j7387 k7388 x7593)))))
                               g7592))))
                          g7591))
                       xj7383
                       xk7384
                       (lambda (a b)
                         (letrec*
                          ((g7590
                            (begin
                              (write '(funapp 638 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7590))))))
                  g7589)))
               (vector-ref
                (letrec*
                 ((xj7390
                   (begin (write '(funapp 642 26)) (display "\n") 'server))
                  (xk7391
                   (begin (write '(funapp 642 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7596
                    (begin
                      (write '(funapp 645 21))
                      (display "\n")
                      ((lambda (j7393 k7394 f7395)
                         (letrec*
                          ((g7598
                            (lambda (g7392)
                              (letrec*
                               ((g7599
                                 (letrec*
                                  ((x7600
                                    (letrec*
                                     ((x7601
                                       (begin
                                         (write '(funapp 654 44))
                                         (display "\n")
                                         (vector?/c j7393 k7394 g7392))))
                                     (begin
                                       (write '(funapp 655 36))
                                       (display "\n")
                                       (f7395 x7601)))))
                                  (begin
                                    (write '(funapp 656 33))
                                    (display "\n")
                                    (integer?/c j7393 k7394 x7600)))))
                               g7599))))
                          g7598))
                       xj7390
                       xk7391
                       (lambda (v i)
                         (letrec*
                          ((g7597
                            (begin
                              (write '(funapp 662 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7597))))))
                  g7596)))
               (vector-set!
                (letrec*
                 ((xj7396
                   (begin (write '(funapp 666 26)) (display "\n") 'server))
                  (xk7397
                   (begin (write '(funapp 666 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7602
                    (begin
                      (write '(funapp 669 21))
                      (display "\n")
                      ((lambda (j7400 k7401 f7402)
                         (letrec*
                          ((g7604
                            (lambda (g7398 g7399)
                              (letrec*
                               ((g7605
                                 (letrec*
                                  ((x7606
                                    (letrec*
                                     ((x7608
                                       (begin
                                         (write '(funapp 678 44))
                                         (display "\n")
                                         (vector?/c j7400 k7401 g7398)))
                                      (x7607
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (integer?/c j7400 k7401 g7399))))
                                     (begin
                                       (write '(funapp 680 36))
                                       (display "\n")
                                       (f7402 x7608 x7607)))))
                                  (begin
                                    (write '(funapp 681 33))
                                    (display "\n")
                                    (any/c j7400 k7401 x7606)))))
                               g7605))))
                          g7604))
                       xj7396
                       xk7397
                       (lambda (vec i v)
                         (letrec*
                          ((g7603
                            (begin
                              (write '(funapp 687 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7603))))))
                  g7602)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (letrec*
                         ((x7611
                           (begin
                             (write '(funapp 694 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 694 58))
                           (display "\n")
                           (cdr x7611)))))
                      (begin
                        (write '(funapp 695 23))
                        (display "\n")
                        (cdr x7610)))))
                   g7609)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7615
                        (begin
                          (write '(funapp 701 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 701 62))
                        (display "\n")
                        (assert x7615))))
                    (g7613
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 702 57))
                        (display "\n")
                        (assert x7616))))
                    (g7614
                     (letrec*
                      ((x-cnd7617
                        (begin
                          (write '(funapp 705 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7617
                        (begin (write '(funapp 707 24)) (display "\n") '())
                        (letrec*
                         ((x7620
                           (letrec*
                            ((x7621
                              (begin
                                (write '(funapp 709 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 709 61))
                              (display "\n")
                              (f x7621))))
                          (x7618
                           (letrec*
                            ((x7619
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (map f x7619)))))
                         (begin
                           (write '(funapp 711 26))
                           (display "\n")
                           (cons x7620 x7618)))))))
                   g7614)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 716 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 716 55))
                        (display "\n")
                        (cdr x7623)))))
                   g7622)))
               (cadadr
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
                                (write '(funapp 725 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 725 61))
                              (display "\n")
                              (car x7627)))))
                         (begin
                           (write '(funapp 726 26))
                           (display "\n")
                           (cdr x7626)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7625)))))
                   g7624)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7629
                        (letrec*
                         ((x7630
                           (letrec*
                            ((x7631
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (cdr x7631)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7630)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7629)))))
                   g7628)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 744 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 744 60))
                        (display "\n")
                        (assert x7635))))
                    (g7633
                     (letrec*
                      ((x7636
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 746 59))
                        (display "\n")
                        (assert x7636))))
                    (g7634
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 749 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 750 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7637
                         (begin
                           (write '(funapp 752 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7638 res))
                       g7638))))
                   g7634)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7640
                        (letrec*
                         ((x7641
                           (begin
                             (write '(funapp 760 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 760 58))
                           (display "\n")
                           (cdr x7641)))))
                      (begin
                        (write '(funapp 761 23))
                        (display "\n")
                        (car x7640)))))
                   g7639)))
               (cdaadr
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
                                (write '(funapp 770 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 770 61))
                              (display "\n")
                              (car x7645)))))
                         (begin
                           (write '(funapp 771 26))
                           (display "\n")
                           (car x7644)))))
                      (begin
                        (write '(funapp 772 23))
                        (display "\n")
                        (cdr x7643)))))
                   g7642)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 777 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 777 57))
                        (display "\n")
                        (assert x7648))))
                    (g7647
                     (letrec*
                      ((x-cnd7649
                        (begin
                          (write '(funapp 780 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7649
                        #f
                        (letrec*
                         ((x-cnd7650
                           (letrec*
                            ((x7651
                              (begin
                                (write '(funapp 785 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 785 56))
                              (display "\n")
                              (eq? x7651 k)))))
                         (if x-cnd7650
                           (begin
                             (write '(funapp 787 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7652
                              (begin
                                (write '(funapp 788 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 788 55))
                              (display "\n")
                              (assq k x7652)))))))))
                   g7647)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 793 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (= 0 x7654)))))
                   g7653)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 798 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 798 57))
                        (display "\n")
                        (assert x7657))))
                    (g7656
                     (letrec*
                      ((x-cnd7658
                        (begin
                          (write '(funapp 801 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7658
                        ""
                        (letrec*
                         ((x7661
                           (letrec*
                            ((x7662
                              (begin
                                (write '(funapp 806 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 806 55))
                              (display "\n")
                              (char->string x7662))))
                          (x7659
                           (letrec*
                            ((x7660
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (list->string x7660)))))
                         (begin
                           (write '(funapp 809 26))
                           (display "\n")
                           (string-append x7661 x7659)))))))
                   g7656)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7666
                        (begin
                          (write '(funapp 814 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 814 58))
                        (display "\n")
                        (assert x7666))))
                    (g7664
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7667))))
                    (g7665
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 818 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7668
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 820 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7668))))
                   g7665)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x7670
                        (letrec*
                         ((x7671
                           (letrec*
                            ((x7672
                              (begin
                                (write '(funapp 830 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 830 61))
                              (display "\n")
                              (cdr x7672)))))
                         (begin
                           (write '(funapp 831 26))
                           (display "\n")
                           (cdr x7671)))))
                      (begin
                        (write '(funapp 832 23))
                        (display "\n")
                        (cdr x7670)))))
                   g7669)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 837 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 837 57))
                        (display "\n")
                        (assert x7676))))
                    (g7674
                     (letrec*
                      ((x7677
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7677))))
                    (g7675
                     (letrec*
                      ((x-cnd7678
                        (begin
                          (write '(funapp 841 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7678
                        x
                        (letrec*
                         ((x7680
                           (begin
                             (write '(funapp 845 34))
                             (display "\n")
                             (cdr x)))
                          (x7679
                           (begin
                             (write '(funapp 845 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (list-tail x7680 x7679)))))))
                   g7675)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7681
                     (begin (write '(funapp 848 49)) (display "\n") '())))
                   g7681)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7682
                     (letrec*
                      ((x-cnd7683
                        (letrec*
                         ((x7684 #\a))
                         (begin
                           (write '(funapp 855 48))
                           (display "\n")
                           (char-ci>=? c x7684)))))
                      (if x-cnd7683
                        (letrec*
                         ((x7685 #\z))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci<=? c x7685)))
                        #f))))
                   g7682)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7686
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7687
                           (begin
                             (write '(funapp 866 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 866 62))
                           (display "\n")
                           (= x7687 9)))))
                      (letrec*
                       ((g7688
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7689
                                 (begin
                                   (write '(funapp 874 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 875 32))
                                 (display "\n")
                                 (= x7689 10)))))
                            (letrec*
                             ((g7690
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7691
                                    (begin
                                      (write '(funapp 881 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 882 35))
                                    (display "\n")
                                    (= x7691 32))))))
                             g7690)))))
                       g7688))))
                   g7686)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7692
                     (letrec*
                      ((x7693
                        (letrec*
                         ((x7694
                           (begin
                             (write '(funapp 891 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 891 58))
                           (display "\n")
                           (cdr x7694)))))
                      (begin
                        (write '(funapp 892 23))
                        (display "\n")
                        (cdr x7693)))))
                   g7692)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7695
                     (letrec*
                      ((x7697
                        (begin
                          (write '(funapp 897 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 897 59))
                        (display "\n")
                        (assert x7697))))
                    (g7696
                     (begin (write '(funapp 898 28)) (display "\n") (> x 0))))
                   g7696)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7698
                     (begin
                       (write '(funapp 900 59))
                       (display "\n")
                       (bool-top))))
                   g7698)))
               ($pc (begin (write '(funapp 901 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7699 #f)) g7699)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7700
                     (letrec*
                      ((x7701
                        (begin
                          (write '(funapp 907 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 907 55))
                        (display "\n")
                        (cdr x7701)))))
                   g7700)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7702
                     (letrec*
                      ((x7704
                        (begin
                          (write '(funapp 912 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 912 59))
                        (display "\n")
                        (assert x7704))))
                    (g7703
                     (letrec*
                      ((x-cnd7705
                        (begin
                          (write '(funapp 915 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7705
                        (begin
                          (write '(funapp 916 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 916 49))
                          (display "\n")
                          (floor x))))))
                   g7703)))
               ($cmp (begin (write '(funapp 918 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7706
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 924 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7707
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7708
                                 (begin
                                   (write '(funapp 932 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7708
                                 (begin
                                   (write '(funapp 933 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7709
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7710
                                       (begin
                                         (write '(funapp 941 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7710
                                       (letrec*
                                        ((x-cnd7711
                                          (begin
                                            (write '(funapp 944 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7711
                                          (begin
                                            (write '(funapp 945 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7712
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7713
                                             (begin
                                               (write '(funapp 954 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7713
                                             (letrec*
                                              ((x-cnd7714
                                                (begin
                                                  (write '(funapp 957 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7714
                                                (letrec*
                                                 ((x-cnd7715
                                                   (letrec*
                                                    ((x7717
                                                      (begin
                                                        (write
                                                         '(funapp 962 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7716
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 964 53))
                                                      (display "\n")
                                                      (equal? x7717 x7716)))))
                                                 (if x-cnd7715
                                                   (letrec*
                                                    ((x7719
                                                      (begin
                                                        (write
                                                         '(funapp 967 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7718
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 969 53))
                                                      (display "\n")
                                                      (equal? x7719 x7718)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7720
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7721
                                                (begin
                                                  (write '(funapp 978 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7721
                                                (letrec*
                                                 ((x-cnd7722
                                                   (begin
                                                     (write '(funapp 981 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7722
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 984 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7723
                                                       (letrec*
                                                        ((x-cnd7724
                                                          (letrec*
                                                           ((x7725
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  991
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 993 60))
                                                             (display "\n")
                                                             (= x7725 n)))))
                                                        (if x-cnd7724
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7726
                                                                  (letrec*
                                                                   ((val7256
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1002
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7727
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7728
                                                                           (letrec*
                                                                            ((x7730
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1011
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7729
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1015
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1018
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7730
                                                                               x7729)))))
                                                                         (if x-cnd7728
                                                                           (letrec*
                                                                            ((x7731
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1024
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1027
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7731)))
                                                                           #f)))))
                                                                    g7727))))
                                                                g7726))))
                                                           (letrec*
                                                            ((g7732
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1033
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7732))
                                                          #f))))
                                                     g7723))
                                                   #f))
                                                #f)))))
                                         g7720)))))
                                   g7712)))))
                             g7709)))))
                       g7707))))
                   g7706)))
               (cdaaar
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
                                (write '(funapp 1051 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1051 61))
                              (display "\n")
                              (car x7736)))))
                         (begin
                           (write '(funapp 1052 26))
                           (display "\n")
                           (car x7735)))))
                      (begin
                        (write '(funapp 1053 23))
                        (display "\n")
                        (cdr x7734)))))
                   g7733)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7738
                        (letrec*
                         ((x7739
                           (letrec*
                            ((x7740
                              (begin
                                (write '(funapp 1062 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1062 61))
                              (display "\n")
                              (cdr x7740)))))
                         (begin
                           (write '(funapp 1063 26))
                           (display "\n")
                           (car x7739)))))
                      (begin
                        (write '(funapp 1064 23))
                        (display "\n")
                        (car x7738)))))
                   g7737)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7741
                     (begin
                       (write '(funapp 1066 53))
                       (display "\n")
                       (eq? x y))))
                   g7741)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1071 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1071 60))
                        (display "\n")
                        (assert x7745))))
                    (g7743
                     (letrec*
                      ((x7746
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1073 59))
                        (display "\n")
                        (assert x7746))))
                    (g7744
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1076 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1077 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7747
                         (begin
                           (write '(funapp 1079 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7748 res))
                       g7748))))
                   g7744)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7749
                     (begin
                       (write '(funapp 1082 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1082 57))
                          (display "\n")
                          '())))))
                   g7749)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1086 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1086 58))
                        (display "\n")
                        (assert x7753))))
                    (g7751
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7754))))
                    (g7752
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1090 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7755
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1092 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7755))))
                   g7752)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7757
                        (letrec*
                         ((x7758
                           (begin
                             (write '(funapp 1100 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1100 58))
                           (display "\n")
                           (car x7758)))))
                      (begin
                        (write '(funapp 1101 23))
                        (display "\n")
                        (cdr x7757)))))
                   g7756)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7760
                        (letrec*
                         ((x7761
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 1110 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1110 61))
                              (display "\n")
                              (cdr x7762)))))
                         (begin
                           (write '(funapp 1111 26))
                           (display "\n")
                           (car x7761)))))
                      (begin
                        (write '(funapp 1112 23))
                        (display "\n")
                        (cdr x7760)))))
                   g7759)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7764
                        (letrec*
                         ((x7765
                           (begin
                             (write '(funapp 1120 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1120 58))
                           (display "\n")
                           (cdr x7765)))))
                      (begin
                        (write '(funapp 1121 23))
                        (display "\n")
                        (car x7764)))))
                   g7763)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7767
                        (letrec*
                         ((x7768
                           (begin
                             (write '(funapp 1128 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1128 58))
                           (display "\n")
                           (car x7768)))))
                      (begin
                        (write '(funapp 1129 23))
                        (display "\n")
                        (car x7767)))))
                   g7766)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1134 58))
                        (display "\n")
                        (assert x7772))))
                    (g7770
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c2))))
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
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1136 66))
                        (display "\n")
                        (not x7774)))))
                   g7771)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1146 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (car x7778)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (car x7777)))))
                      (begin
                        (write '(funapp 1148 23))
                        (display "\n")
                        (car x7776)))))
                   g7775)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 1153 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1153 59))
                        (display "\n")
                        (assert x7781))))
                    (g7780
                     (begin (write '(funapp 1154 28)) (display "\n") (< x 0))))
                   g7780)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7782
                     (begin
                       (write '(funapp 1156 53))
                       (display "\n")
                       (memq e l))))
                   g7782)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7784
                        (letrec*
                         ((x7785
                           (begin
                             (write '(funapp 1162 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1162 58))
                           (display "\n")
                           (car x7785)))))
                      (begin
                        (write '(funapp 1163 23))
                        (display "\n")
                        (car x7784)))))
                   g7783)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7786
                     (begin (write '(funapp 1165 51)) (display "\n") '())))
                   g7786)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1169 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1169 57))
                        (display "\n")
                        (assert x7789))))
                    (g7788
                     (letrec*
                      ((x-cnd7790
                        (begin
                          (write '(funapp 1172 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7790
                        (begin (write '(funapp 1174 24)) (display "\n") '())
                        (letrec*
                         ((x7793
                           (letrec*
                            ((x7794
                              (begin
                                (write '(funapp 1176 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1176 61))
                              (display "\n")
                              (reverse x7794))))
                          (x7791
                           (letrec*
                            ((x7792
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (list x7792)))))
                         (begin
                           (write '(funapp 1178 26))
                           (display "\n")
                           (append x7793 x7791)))))))
                   g7788)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7796
                        (letrec*
                         ((x7797
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 1187 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1187 61))
                              (display "\n")
                              (car x7798)))))
                         (begin
                           (write '(funapp 1188 26))
                           (display "\n")
                           (car x7797)))))
                      (begin
                        (write '(funapp 1189 23))
                        (display "\n")
                        (car x7796)))))
                   g7795)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7800
                        (letrec*
                         ((x7801
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1198 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1198 61))
                              (display "\n")
                              (car x7802)))))
                         (begin
                           (write '(funapp 1199 26))
                           (display "\n")
                           (cdr x7801)))))
                      (begin
                        (write '(funapp 1200 23))
                        (display "\n")
                        (cdr x7800)))))
                   g7799)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1205 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1205 59))
                        (display "\n")
                        (assert x7805))))
                    (g7804
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1206 60))
                        (display "\n")
                        (= 1 x7806)))))
                   g7804)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7808
                        (letrec*
                         ((x7809
                           (letrec*
                            ((x7810
                              (begin
                                (write '(funapp 1215 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1215 61))
                              (display "\n")
                              (cdr x7810)))))
                         (begin
                           (write '(funapp 1216 26))
                           (display "\n")
                           (car x7809)))))
                      (begin
                        (write '(funapp 1217 23))
                        (display "\n")
                        (car x7808)))))
                   g7807)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1223 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1223 59))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1224 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1224 60))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((x-cnd7816
                        (begin
                          (write '(funapp 1227 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7816
                        (letrec*
                         ((g7817
                           (begin
                             (write '(funapp 1229 42))
                             (display "\n")
                             (proc))))
                         g7817)
                        (letrec*
                         ((x-cnd7818
                           (letrec*
                            ((x7819
                              (begin
                                (write '(funapp 1232 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1232 58))
                              (display "\n")
                              (null? x7819)))))
                         (if x-cnd7818
                           (letrec*
                            ((g7820
                              (letrec*
                               ((x7821
                                 (begin
                                   (write '(funapp 1236 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1236 61))
                                 (display "\n")
                                 (proc x7821)))))
                            g7820)
                           (letrec*
                            ((x-cnd7822
                              (letrec*
                               ((x7823
                                 (begin
                                   (write '(funapp 1240 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1240 62))
                                 (display "\n")
                                 (null? x7823)))))
                            (if x-cnd7822
                              (letrec*
                               ((g7824
                                 (letrec*
                                  ((x7826
                                    (begin
                                      (write '(funapp 1245 43))
                                      (display "\n")
                                      (car args)))
                                   (x7825
                                    (begin
                                      (write '(funapp 1245 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1246 35))
                                    (display "\n")
                                    (proc x7826 x7825)))))
                               g7824)
                              (letrec*
                               ((x-cnd7827
                                 (letrec*
                                  ((x7828
                                    (begin
                                      (write '(funapp 1251 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1252 35))
                                    (display "\n")
                                    (null? x7828)))))
                               (if x-cnd7827
                                 (letrec*
                                  ((g7829
                                    (letrec*
                                     ((x7832
                                       (begin
                                         (write '(funapp 1257 46))
                                         (display "\n")
                                         (car args)))
                                      (x7831
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7830
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1260 38))
                                       (display "\n")
                                       (proc x7832 x7831 x7830)))))
                                  g7829)
                                 (letrec*
                                  ((x-cnd7833
                                    (letrec*
                                     ((x7834
                                       (begin
                                         (write '(funapp 1265 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1266 38))
                                       (display "\n")
                                       (null? x7834)))))
                                  (if x-cnd7833
                                    (letrec*
                                     ((g7835
                                       (letrec*
                                        ((x7839
                                          (begin
                                            (write '(funapp 1271 49))
                                            (display "\n")
                                            (car args)))
                                         (x7838
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7837
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7836
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1275 41))
                                          (display "\n")
                                          (proc x7839 x7838 x7837 x7836)))))
                                     g7835)
                                    (letrec*
                                     ((x-cnd7840
                                       (letrec*
                                        ((x7841
                                          (letrec*
                                           ((x7842
                                             (begin
                                               (write '(funapp 1282 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1283 44))
                                             (display "\n")
                                             (cdr x7842)))))
                                        (begin
                                          (write '(funapp 1284 41))
                                          (display "\n")
                                          (null? x7841)))))
                                     (if x-cnd7840
                                       (letrec*
                                        ((g7843
                                          (letrec*
                                           ((x7849
                                             (begin
                                               (write '(funapp 1289 52))
                                               (display "\n")
                                               (car args)))
                                            (x7848
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7847
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7846
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7844
                                             (letrec*
                                              ((x7845
                                                (begin
                                                  (write '(funapp 1295 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1296 47))
                                                (display "\n")
                                                (car x7845)))))
                                           (begin
                                             (write '(funapp 1297 44))
                                             (display "\n")
                                             (proc
                                              x7849
                                              x7848
                                              x7847
                                              x7846
                                              x7844)))))
                                        g7843)
                                       (letrec*
                                        ((x-cnd7850
                                          (letrec*
                                           ((x7851
                                             (letrec*
                                              ((x7852
                                                (begin
                                                  (write '(funapp 1309 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1310 47))
                                                (display "\n")
                                                (cddr x7852)))))
                                           (begin
                                             (write '(funapp 1311 44))
                                             (display "\n")
                                             (null? x7851)))))
                                        (if x-cnd7850
                                          (letrec*
                                           ((g7853
                                             (letrec*
                                              ((x7861
                                                (begin
                                                  (write '(funapp 1316 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7860
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7859
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7858
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7856
                                                (letrec*
                                                 ((x7857
                                                   (begin
                                                     (write '(funapp 1322 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1323 50))
                                                   (display "\n")
                                                   (car x7857))))
                                               (x7854
                                                (letrec*
                                                 ((x7855
                                                   (begin
                                                     (write '(funapp 1326 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1327 50))
                                                   (display "\n")
                                                   (cadr x7855)))))
                                              (begin
                                                (write '(funapp 1328 47))
                                                (display "\n")
                                                (proc
                                                 x7861
                                                 x7860
                                                 x7859
                                                 x7858
                                                 x7856
                                                 x7854)))))
                                           g7853)
                                          (letrec*
                                           ((x-cnd7862
                                             (letrec*
                                              ((x7863
                                                (letrec*
                                                 ((x7864
                                                   (begin
                                                     (write '(funapp 1341 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1342 50))
                                                   (display "\n")
                                                   (cdddr x7864)))))
                                              (begin
                                                (write '(funapp 1343 47))
                                                (display "\n")
                                                (null? x7863)))))
                                           (if x-cnd7862
                                             (letrec*
                                              ((g7865
                                                (letrec*
                                                 ((x7875
                                                   (begin
                                                     (write '(funapp 1348 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7874
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7873
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7872
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7870
                                                   (letrec*
                                                    ((x7871
                                                      (begin
                                                        (write
                                                         '(funapp 1354 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1355 53))
                                                      (display "\n")
                                                      (car x7871))))
                                                  (x7868
                                                   (letrec*
                                                    ((x7869
                                                      (begin
                                                        (write
                                                         '(funapp 1358 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1359 53))
                                                      (display "\n")
                                                      (cadr x7869))))
                                                  (x7866
                                                   (letrec*
                                                    ((x7867
                                                      (begin
                                                        (write
                                                         '(funapp 1362 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1363 53))
                                                      (display "\n")
                                                      (caddr x7867)))))
                                                 (begin
                                                   (write '(funapp 1364 50))
                                                   (display "\n")
                                                   (proc
                                                    x7875
                                                    x7874
                                                    x7873
                                                    x7872
                                                    x7870
                                                    x7868
                                                    x7866)))))
                                              g7865)
                                             (letrec*
                                              ((g7876
                                                (begin
                                                  (write '(funapp 1375 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7876)))))))))))))))))))
                   g7813)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 1381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1381 57))
                        (display "\n")
                        (assert x7879))))
                    (g7878
                     (letrec*
                      ((x-cnd7880
                        (begin
                          (write '(funapp 1384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7880
                        #f
                        (letrec*
                         ((x-cnd7881
                           (letrec*
                            ((x7882
                              (begin
                                (write '(funapp 1389 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1389 55))
                              (display "\n")
                              (equal? x7882 e)))))
                         (if x-cnd7881
                           l
                           (letrec*
                            ((x7883
                              (begin
                                (write '(funapp 1392 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1392 55))
                              (display "\n")
                              (member e x7883)))))))))
                   g7878)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7885
                        (letrec*
                         ((x7886
                           (letrec*
                            ((x7887
                              (begin
                                (write '(funapp 1401 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1401 61))
                              (display "\n")
                              (cdr x7887)))))
                         (begin
                           (write '(funapp 1402 26))
                           (display "\n")
                           (cdr x7886)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (cdr x7885)))))
                   g7884)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7889
                        (letrec*
                         ((x7890
                           (letrec*
                            ((x7891
                              (begin
                                (write '(funapp 1412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1412 61))
                              (display "\n")
                              (cdr x7891)))))
                         (begin
                           (write '(funapp 1413 26))
                           (display "\n")
                           (cdr x7890)))))
                      (begin
                        (write '(funapp 1414 23))
                        (display "\n")
                        (car x7889)))))
                   g7888)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7892
                     (begin
                       (write '(funapp 1416 53))
                       (display "\n")
                       (random 42))))
                   g7892)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7895
                        (begin
                          (write '(funapp 1420 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1420 59))
                        (display "\n")
                        (assert x7895))))
                    (g7894
                     (begin (write '(funapp 1421 28)) (display "\n") (= x 0))))
                   g7894)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1428 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7897
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1430 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7897))))
                   g7896)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7899
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1436 55))
                        (display "\n")
                        (car x7899)))))
                   g7898)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7901
                           (begin
                             (write '(funapp 1446 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7901
                           (letrec*
                            ((x7902
                              (begin
                                (write '(funapp 1448 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1448 55))
                              (display "\n")
                              (list? x7902)))
                           #f))))
                      (letrec*
                       ((g7903
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1451 52))
                             (display "\n")
                             (null? l)))))
                       g7903))))
                   g7900)))
               (cddaar
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
                                (write '(funapp 1461 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1461 61))
                              (display "\n")
                              (car x7907)))))
                         (begin
                           (write '(funapp 1462 26))
                           (display "\n")
                           (cdr x7906)))))
                      (begin
                        (write '(funapp 1463 23))
                        (display "\n")
                        (cdr x7905)))))
                   g7904)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x-cnd7909
                        (letrec*
                         ((x7910 #\0))
                         (begin
                           (write '(funapp 1470 58))
                           (display "\n")
                           (char<=? x7910 c)))))
                      (if x-cnd7909
                        (letrec*
                         ((x7911 #\9))
                         (begin
                           (write '(funapp 1472 48))
                           (display "\n")
                           (char<=? c x7911)))
                        #f))))
                   g7908)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7914
                        (begin
                          (write '(funapp 1479 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1479 57))
                        (display "\n")
                        (assert x7914))))
                    (g7913
                     (letrec*
                      ((x-cnd7915
                        (begin
                          (write '(funapp 1482 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7915
                        #f
                        (letrec*
                         ((x-cnd7916
                           (letrec*
                            ((x7917
                              (begin
                                (write '(funapp 1487 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1487 56))
                              (display "\n")
                              (eqv? x7917 k)))))
                         (if x-cnd7916
                           (begin
                             (write '(funapp 1489 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7918
                              (begin
                                (write '(funapp 1490 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1490 55))
                              (display "\n")
                              (assq k x7918)))))))))
                   g7913)))
               (not (lambda (x) (letrec* ((g7919 (if x #f #t))) g7919)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7920
                     (begin
                       (write '(funapp 1494 50))
                       (display "\n")
                       (append l1 l2))))
                   g7920)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7923
                        (begin
                          (write '(funapp 1498 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1498 57))
                        (display "\n")
                        (assert x7923))))
                    (g7922
                     (letrec*
                      ((x-cnd7924
                        (begin
                          (write '(funapp 1501 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7924
                        #f
                        (letrec*
                         ((x-cnd7925
                           (letrec*
                            ((x7926
                              (begin
                                (write '(funapp 1506 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1506 55))
                              (display "\n")
                              (eq? x7926 e)))))
                         (if x-cnd7925
                           l
                           (letrec*
                            ((x7927
                              (begin
                                (write '(funapp 1509 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1509 55))
                              (display "\n")
                              (memq e x7927)))))))))
                   g7922)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7929
                        (letrec*
                         ((x7930
                           (letrec*
                            ((x7931
                              (begin
                                (write '(funapp 1518 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1518 61))
                              (display "\n")
                              (car x7931)))))
                         (begin
                           (write '(funapp 1519 26))
                           (display "\n")
                           (cdr x7930)))))
                      (begin
                        (write '(funapp 1520 23))
                        (display "\n")
                        (car x7929)))))
                   g7928)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1525 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1525 57))
                        (display "\n")
                        (assert x7934))))
                    (g7933
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7935
                             (letrec*
                              ((x-cnd7936
                                (begin
                                  (write '(funapp 1533 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7936
                                0
                                (letrec*
                                 ((x7937
                                   (letrec*
                                    ((x7938
                                      (begin
                                        (write '(funapp 1538 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1538 63))
                                      (display "\n")
                                      (rec x7938)))))
                                 (begin
                                   (write '(funapp 1539 34))
                                   (display "\n")
                                   (+ 1 x7937)))))))
                           g7935))))
                      (letrec*
                       ((g7939
                         (begin
                           (write '(funapp 1541 40))
                           (display "\n")
                           (rec l))))
                       g7939))))
                   g7933)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1546 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1546 58))
                        (display "\n")
                        (assert x7943))))
                    (g7941
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7944))))
                    (g7942
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1550 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7945
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1552 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7945))))
                   g7942)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7946
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1558 65))
                        (display "\n")
                        (not x7947)))))
                   g7946)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7949
                        (letrec*
                         ((x7950
                           (begin
                             (write '(funapp 1565 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1565 58))
                           (display "\n")
                           (car x7950)))))
                      (begin
                        (write '(funapp 1566 23))
                        (display "\n")
                        (cdr x7949)))))
                   g7948)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1571 57))
                        (display "\n")
                        (assert x7953))))
                    (g7952
                     (letrec*
                      ((x-cnd7954
                        (begin
                          (write '(funapp 1574 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7954
                        #f
                        (letrec*
                         ((x-cnd7955
                           (letrec*
                            ((x7956
                              (begin
                                (write '(funapp 1579 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1579 56))
                              (display "\n")
                              (equal? x7956 k)))))
                         (if x-cnd7955
                           (begin
                             (write '(funapp 1581 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7957
                              (begin
                                (write '(funapp 1582 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1582 55))
                              (display "\n")
                              (assoc k x7957)))))))))
                   g7952)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7959
                        (begin
                          (write '(funapp 1587 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1587 55))
                        (display "\n")
                        (car x7959)))))
                   g7958)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7963))))
                    (g7961
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c2))))
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
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1594 63))
                        (display "\n")
                        (not x7965)))))
                   g7962)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1601 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7967
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1603 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7967))))
                   g7966)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1609 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1609 62))
                        (display "\n")
                        (assert x7971))))
                    (g7969
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1610 57))
                        (display "\n")
                        (assert x7972))))
                    (g7970
                     (letrec*
                      ((x-cnd7973
                        (begin
                          (write '(funapp 1613 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7973
                        #t
                        (letrec*
                         ((x-cnd7974
                           (begin
                             (write '(funapp 1617 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7974
                           (letrec*
                            ((g7975
                              (letrec*
                               ((x7977
                                 (begin
                                   (write '(funapp 1620 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1620 64))
                                 (display "\n")
                                 (f x7977))))
                             (g7976
                              (letrec*
                               ((x7978
                                 (begin
                                   (write '(funapp 1622 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1622 58))
                                 (display "\n")
                                 (for-each f x7978)))))
                            g7976)
                           (begin
                             (write '(funapp 1624 27))
                             (display "\n")
                             '())))))))
                   g7970)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7979
                     (letrec*
                      ((x7981
                        (begin
                          (write '(funapp 1629 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1629 59))
                        (display "\n")
                        (assert x7981))))
                    (g7980
                     (letrec*
                      ((x-cnd7982
                        (begin
                          (write '(funapp 1631 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7982
                        (begin
                          (write '(funapp 1631 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7980)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7983
                     (letrec*
                      ((x7986
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1636 58))
                        (display "\n")
                        (assert x7986))))
                    (g7984
                     (letrec*
                      ((x7987
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7987))))
                    (g7985
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1640 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7988
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1642 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7988))))
                   g7985)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7989
                     (letrec*
                      ((x7990
                        (letrec*
                         ((x7991
                           (letrec*
                            ((x7992
                              (begin
                                (write '(funapp 1652 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1652 61))
                              (display "\n")
                              (cdr x7992)))))
                         (begin
                           (write '(funapp 1653 26))
                           (display "\n")
                           (cdr x7991)))))
                      (begin
                        (write '(funapp 1654 23))
                        (display "\n")
                        (car x7990)))))
                   g7989)))
               (newline (lambda () (letrec* ((g7993 #f)) g7993)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7994
                     (letrec*
                      ((x7996
                        (letrec*
                         ((x7997
                           (begin
                             (write '(funapp 1662 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1662 58))
                           (display "\n")
                           (abs x7997))))
                       (x7995
                        (begin
                          (write '(funapp 1663 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1664 23))
                        (display "\n")
                        (/ x7996 x7995)))))
                   g7994)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7998
                     (letrec*
                      ((x8002
                        (begin
                          (write '(funapp 1670 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1670 57))
                        (display "\n")
                        (assert x8002))))
                    (g7999
                     (letrec*
                      ((x8003
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1671 63))
                        (display "\n")
                        (assert x8003))))
                    (g8000
                     (letrec*
                      ((x8004
                        (letrec*
                         ((x8005
                           (begin
                             (write '(funapp 1674 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1674 61))
                           (display "\n")
                           (< index x8005)))))
                      (begin
                        (write '(funapp 1675 23))
                        (display "\n")
                        (assert x8004))))
                    (g8001
                     (letrec*
                      ((x-cnd8006
                        (begin
                          (write '(funapp 1678 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8006
                        (begin
                          (write '(funapp 1680 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8008
                           (begin
                             (write '(funapp 1682 34))
                             (display "\n")
                             (cdr l)))
                          (x8007
                           (begin
                             (write '(funapp 1682 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1683 26))
                           (display "\n")
                           (list-ref x8008 x8007)))))))
                   g8001)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8009
                     (letrec*
                      ((x-cnd8010
                        (begin
                          (write '(funapp 1690 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8010
                        a
                        (letrec*
                         ((x8011
                           (begin
                             (write '(funapp 1693 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1693 57))
                           (display "\n")
                           (gcd b x8011)))))))
                   g8009)))
               (mult
                (lambda (n m)
                  (letrec*
                   ((g8012
                     (letrec*
                      ((x-cnd8013
                        (letrec*
                         ((val7263
                           (begin
                             (write '(funapp 1702 36))
                             (display "\n")
                             (<= n 0))))
                         (letrec*
                          ((g8014
                            (if val7263
                              val7263
                              (begin
                                (write '(funapp 1704 55))
                                (display "\n")
                                (<= m 0)))))
                          g8014))))
                      (if x-cnd8013
                        0
                        (letrec*
                         ((x8015
                           (letrec*
                            ((x8016
                              (begin
                                (write '(funapp 1709 51))
                                (display "\n")
                                (- m 1))))
                            (begin
                              (write '(funapp 1709 61))
                              (display "\n")
                              (mult n x8016)))))
                         (begin
                           (write '(funapp 1710 26))
                           (display "\n")
                           (+ n x8015)))))))
                   g8012)))
               (sqr
                (lambda (n)
                  (letrec*
                   ((g8017
                     (begin
                       (write '(funapp 1712 50))
                       (display "\n")
                       (mult n n))))
                   g8017))))
              (letrec*
               ((g8018
                 (begin
                   (write '(funapp 1715 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1716 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8021
                          (letrec*
                           ((xj7403
                             (begin
                               (write '(funapp 1720 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1720 37))
                                  (display "\n")
                                  'module))))
                            (xk7404
                             (begin
                               (write '(funapp 1720 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1720 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8022
                              (begin
                                (write '(funapp 1723 27))
                                (display "\n")
                                ((lambda (j7407 k7408 f7409)
                                   (letrec*
                                    ((g8023
                                      (lambda (g7405 g7406)
                                        (letrec*
                                         ((g8024
                                           (letrec*
                                            ((x8028
                                              (letrec*
                                               ((x8029
                                                 (begin
                                                   (write '(funapp 1732 50))
                                                   (display "\n")
                                                   (>=/c 0))))
                                               (begin
                                                 (write '(funapp 1733 42))
                                                 (display "\n")
                                                 (and/c integer?/c x8029))))
                                             (x8025
                                              (letrec*
                                               ((x8027
                                                 (begin
                                                   (write '(funapp 1737 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7407
                                                    k7408
                                                    g7405)))
                                                (x8026
                                                 (begin
                                                   (write '(funapp 1739 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7407
                                                    k7408
                                                    g7406))))
                                               (begin
                                                 (write '(funapp 1740 42))
                                                 (display "\n")
                                                 (f7409 x8027 x8026)))))
                                            (begin
                                              (write '(funapp 1741 39))
                                              (display "\n")
                                              (x8028 j7407 k7408 x8025)))))
                                         g8024))))
                                    g8023))
                                 xj7403
                                 xk7404
                                 mult))))
                            g8022)))
                         (x8020 (input))
                         (x8019 (input)))
                        (begin
                          (write '(funapp 1750 21))
                          (display "\n")
                          (x8021 x8020 x8019)))
                       (letrec*
                        ((xj7410
                          (begin
                            (write '(funapp 1752 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1752 34))
                               (display "\n")
                               'module))))
                         (xk7411
                          (begin
                            (write '(funapp 1752 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1752 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8030
                           (begin
                             (write '(funapp 1755 24))
                             (display "\n")
                             ((lambda (j7413 k7414 f7415)
                                (letrec*
                                 ((g8031
                                   (lambda (g7412)
                                     (letrec*
                                      ((g8032
                                        (letrec*
                                         ((x7416
                                           (begin
                                             (write '(funapp 1762 44))
                                             (display "\n")
                                             (integer?/c j7413 k7414 g7412))))
                                         (letrec*
                                          ((g8033
                                            (letrec*
                                             ((x8035
                                               (begin
                                                 (write '(funapp 1767 42))
                                                 (display "\n")
                                                 ((lambda (n)
                                                    (letrec*
                                                     ((g8036
                                                       (letrec*
                                                        ((x8037
                                                          (begin
                                                            (write
                                                             '(funapp 1771 57))
                                                            (display "\n")
                                                            (>=/c n))))
                                                        (begin
                                                          (write
                                                           '(funapp 1772 49))
                                                          (display "\n")
                                                          (and/c
                                                           integer?/c
                                                           x8037)))))
                                                     g8036))
                                                  x7416)))
                                              (x8034
                                               (begin
                                                 (write '(funapp 1775 48))
                                                 (display "\n")
                                                 (f7415 x7416))))
                                             (begin
                                               (write '(funapp 1776 40))
                                               (display "\n")
                                               (x8035 j7413 k7414 x8034)))))
                                          g8033))))
                                      g8032))))
                                 g8031))
                              xj7410
                              xk7411
                              sqr))))
                         g8030))))))))
               g8018))))
           g7445))))
       g7428)))
    g7427)))
