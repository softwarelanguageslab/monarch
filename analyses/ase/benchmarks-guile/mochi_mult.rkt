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
               (sub1
                (lambda (x)
                  (letrec*
                   ((g7571
                     (begin (write '(funapp 546 51)) (display "\n") (- x 1))))
                   g7571)))
               (/
                (letrec*
                 ((xj7364
                   (begin (write '(funapp 549 26)) (display "\n") 'server))
                  (xk7365
                   (begin (write '(funapp 549 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7572
                    (begin
                      (write '(funapp 552 21))
                      (display "\n")
                      ((lambda (j7368 k7369 f7370)
                         (letrec*
                          ((g7574
                            (lambda (g7366 g7367)
                              (letrec*
                               ((g7575
                                 (letrec*
                                  ((x7576
                                    (letrec*
                                     ((x7578
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7368 k7369 g7366)))
                                      (x7577
                                       (begin
                                         (write '(funapp 562 44))
                                         (display "\n")
                                         (number?/c j7368 k7369 g7367))))
                                     (begin
                                       (write '(funapp 563 36))
                                       (display "\n")
                                       (f7370 x7578 x7577)))))
                                  (begin
                                    (write '(funapp 564 33))
                                    (display "\n")
                                    (number?/c j7368 k7369 x7576)))))
                               g7575))))
                          g7574))
                       xj7364
                       xk7365
                       (lambda (a b)
                         (letrec*
                          ((g7573
                            (begin
                              (write '(funapp 569 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7573))))))
                  g7572)))
               (car
                (letrec*
                 ((xj7371
                   (begin (write '(funapp 573 26)) (display "\n") 'server))
                  (xk7372
                   (begin (write '(funapp 573 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7579
                    (begin
                      (write '(funapp 576 21))
                      (display "\n")
                      ((lambda (j7374 k7375 f7376)
                         (letrec*
                          ((g7581
                            (lambda (g7373)
                              (letrec*
                               ((g7582
                                 (letrec*
                                  ((x7583
                                    (letrec*
                                     ((x7584
                                       (begin
                                         (write '(funapp 585 44))
                                         (display "\n")
                                         (pair?/c j7374 k7375 g7373))))
                                     (begin
                                       (write '(funapp 586 36))
                                       (display "\n")
                                       (f7376 x7584)))))
                                  (begin
                                    (write '(funapp 587 33))
                                    (display "\n")
                                    (any/c j7374 k7375 x7583)))))
                               g7582))))
                          g7581))
                       xj7371
                       xk7372
                       (lambda (p)
                         (letrec*
                          ((g7580
                            (begin
                              (write '(funapp 592 51))
                              (display "\n")
                              (orig-car p))))
                          g7580))))))
                  g7579)))
               (cdr
                (letrec*
                 ((xj7377
                   (begin (write '(funapp 596 26)) (display "\n") 'server))
                  (xk7378
                   (begin (write '(funapp 596 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7585
                    (begin
                      (write '(funapp 599 21))
                      (display "\n")
                      ((lambda (j7380 k7381 f7382)
                         (letrec*
                          ((g7587
                            (lambda (g7379)
                              (letrec*
                               ((g7588
                                 (letrec*
                                  ((x7589
                                    (letrec*
                                     ((x7590
                                       (begin
                                         (write '(funapp 608 44))
                                         (display "\n")
                                         (pair?/c j7380 k7381 g7379))))
                                     (begin
                                       (write '(funapp 609 36))
                                       (display "\n")
                                       (f7382 x7590)))))
                                  (begin
                                    (write '(funapp 610 33))
                                    (display "\n")
                                    (any/c j7380 k7381 x7589)))))
                               g7588))))
                          g7587))
                       xj7377
                       xk7378
                       (lambda (p)
                         (letrec*
                          ((g7586
                            (begin
                              (write '(funapp 615 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7586))))))
                  g7585)))
               (cons
                (letrec*
                 ((xj7383
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7384
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7591
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7387 k7388 f7389)
                         (letrec*
                          ((g7593
                            (lambda (g7385 g7386)
                              (letrec*
                               ((g7594
                                 (letrec*
                                  ((x7595
                                    (letrec*
                                     ((x7597
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7387 k7388 g7385)))
                                      (x7596
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (any/c j7387 k7388 g7386))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7389 x7597 x7596)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (pair?/c j7387 k7388 x7595)))))
                               g7594))))
                          g7593))
                       xj7383
                       xk7384
                       (lambda (a b)
                         (letrec*
                          ((g7592
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7592))))))
                  g7591)))
               (vector-ref
                (letrec*
                 ((xj7390
                   (begin (write '(funapp 644 26)) (display "\n") 'server))
                  (xk7391
                   (begin (write '(funapp 644 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7598
                    (begin
                      (write '(funapp 647 21))
                      (display "\n")
                      ((lambda (j7393 k7394 f7395)
                         (letrec*
                          ((g7600
                            (lambda (g7392)
                              (letrec*
                               ((g7601
                                 (letrec*
                                  ((x7602
                                    (letrec*
                                     ((x7603
                                       (begin
                                         (write '(funapp 656 44))
                                         (display "\n")
                                         (vector?/c j7393 k7394 g7392))))
                                     (begin
                                       (write '(funapp 657 36))
                                       (display "\n")
                                       (f7395 x7603)))))
                                  (begin
                                    (write '(funapp 658 33))
                                    (display "\n")
                                    (integer?/c j7393 k7394 x7602)))))
                               g7601))))
                          g7600))
                       xj7390
                       xk7391
                       (lambda (v i)
                         (letrec*
                          ((g7599
                            (begin
                              (write '(funapp 664 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7599))))))
                  g7598)))
               (vector-set!
                (letrec*
                 ((xj7396
                   (begin (write '(funapp 668 26)) (display "\n") 'server))
                  (xk7397
                   (begin (write '(funapp 668 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7604
                    (begin
                      (write '(funapp 671 21))
                      (display "\n")
                      ((lambda (j7400 k7401 f7402)
                         (letrec*
                          ((g7606
                            (lambda (g7398 g7399)
                              (letrec*
                               ((g7607
                                 (letrec*
                                  ((x7608
                                    (letrec*
                                     ((x7610
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (vector?/c j7400 k7401 g7398)))
                                      (x7609
                                       (begin
                                         (write '(funapp 681 44))
                                         (display "\n")
                                         (integer?/c j7400 k7401 g7399))))
                                     (begin
                                       (write '(funapp 682 36))
                                       (display "\n")
                                       (f7402 x7610 x7609)))))
                                  (begin
                                    (write '(funapp 683 33))
                                    (display "\n")
                                    (any/c j7400 k7401 x7608)))))
                               g7607))))
                          g7606))
                       xj7396
                       xk7397
                       (lambda (vec i v)
                         (letrec*
                          ((g7605
                            (begin
                              (write '(funapp 689 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7605))))))
                  g7604)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7612
                        (letrec*
                         ((x7613
                           (begin
                             (write '(funapp 696 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 696 58))
                           (display "\n")
                           (cdr x7613)))))
                      (begin
                        (write '(funapp 697 23))
                        (display "\n")
                        (cdr x7612)))))
                   g7611)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 703 62))
                        (display "\n")
                        (assert x7617))))
                    (g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 704 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 704 57))
                        (display "\n")
                        (assert x7618))))
                    (g7616
                     (letrec*
                      ((x-cnd7619
                        (begin
                          (write '(funapp 707 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7619
                        (begin (write '(funapp 709 24)) (display "\n") '())
                        (letrec*
                         ((x7622
                           (letrec*
                            ((x7623
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (f x7623))))
                          (x7620
                           (letrec*
                            ((x7621
                              (begin
                                (write '(funapp 712 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 712 61))
                              (display "\n")
                              (map f x7621)))))
                         (begin
                           (write '(funapp 713 26))
                           (display "\n")
                           (cons x7622 x7620)))))))
                   g7616)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 718 55))
                        (display "\n")
                        (cdr x7625)))))
                   g7624)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7627
                        (letrec*
                         ((x7628
                           (letrec*
                            ((x7629
                              (begin
                                (write '(funapp 727 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 727 61))
                              (display "\n")
                              (car x7629)))))
                         (begin
                           (write '(funapp 728 26))
                           (display "\n")
                           (cdr x7628)))))
                      (begin
                        (write '(funapp 729 23))
                        (display "\n")
                        (car x7627)))))
                   g7626)))
               (cdadar
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
                                (write '(funapp 738 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 738 61))
                              (display "\n")
                              (cdr x7633)))))
                         (begin
                           (write '(funapp 739 26))
                           (display "\n")
                           (car x7632)))))
                      (begin
                        (write '(funapp 740 23))
                        (display "\n")
                        (cdr x7631)))))
                   g7630)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7637
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 746 60))
                        (display "\n")
                        (assert x7637))))
                    (g7635
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 748 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 748 59))
                        (display "\n")
                        (assert x7638))))
                    (g7636
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 751 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 752 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7639
                         (begin
                           (write '(funapp 754 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7640 res))
                       g7640))))
                   g7636)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7642
                        (letrec*
                         ((x7643
                           (begin
                             (write '(funapp 762 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 762 58))
                           (display "\n")
                           (cdr x7643)))))
                      (begin
                        (write '(funapp 763 23))
                        (display "\n")
                        (car x7642)))))
                   g7641)))
               (cdaadr
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
                                (write '(funapp 772 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 772 61))
                              (display "\n")
                              (car x7647)))))
                         (begin
                           (write '(funapp 773 26))
                           (display "\n")
                           (car x7646)))))
                      (begin
                        (write '(funapp 774 23))
                        (display "\n")
                        (cdr x7645)))))
                   g7644)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 779 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 779 57))
                        (display "\n")
                        (assert x7650))))
                    (g7649
                     (letrec*
                      ((x-cnd7651
                        (begin
                          (write '(funapp 782 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7651
                        #f
                        (letrec*
                         ((x-cnd7652
                           (letrec*
                            ((x7653
                              (begin
                                (write '(funapp 787 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 787 56))
                              (display "\n")
                              (eq? x7653 k)))))
                         (if x-cnd7652
                           (begin
                             (write '(funapp 789 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7654
                              (begin
                                (write '(funapp 790 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 790 55))
                              (display "\n")
                              (assq k x7654)))))))))
                   g7649)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 795 60))
                        (display "\n")
                        (= 0 x7656)))))
                   g7655)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 800 57))
                        (display "\n")
                        (assert x7659))))
                    (g7658
                     (letrec*
                      ((x-cnd7660
                        (begin
                          (write '(funapp 803 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7660
                        ""
                        (letrec*
                         ((x7663
                           (letrec*
                            ((x7664
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (char->string x7664))))
                          (x7661
                           (letrec*
                            ((x7662
                              (begin
                                (write '(funapp 810 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 810 55))
                              (display "\n")
                              (list->string x7662)))))
                         (begin
                           (write '(funapp 811 26))
                           (display "\n")
                           (string-append x7663 x7661)))))))
                   g7658)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7668
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7668))))
                    (g7666
                     (letrec*
                      ((x7669
                        (begin
                          (write '(funapp 817 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 817 58))
                        (display "\n")
                        (assert x7669))))
                    (g7667
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 820 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7670
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 822 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7670))))
                   g7667)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7672
                        (letrec*
                         ((x7673
                           (letrec*
                            ((x7674
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7674)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (cdr x7673)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7672)))))
                   g7671)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7675
                     (letrec*
                      ((x7678
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7678))))
                    (g7676
                     (letrec*
                      ((x7679
                        (begin
                          (write '(funapp 840 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 840 57))
                        (display "\n")
                        (assert x7679))))
                    (g7677
                     (letrec*
                      ((x-cnd7680
                        (begin
                          (write '(funapp 843 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7680
                        x
                        (letrec*
                         ((x7682
                           (begin
                             (write '(funapp 847 34))
                             (display "\n")
                             (cdr x)))
                          (x7681
                           (begin
                             (write '(funapp 847 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 848 26))
                           (display "\n")
                           (list-tail x7682 x7681)))))))
                   g7677)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7683
                     (begin (write '(funapp 850 49)) (display "\n") '())))
                   g7683)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((x-cnd7685
                        (letrec*
                         ((x7686 #\a))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci>=? c x7686)))))
                      (if x-cnd7685
                        (letrec*
                         ((x7687 #\z))
                         (begin
                           (write '(funapp 859 48))
                           (display "\n")
                           (char-ci<=? c x7687)))
                        #f))))
                   g7684)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7688
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7689
                           (begin
                             (write '(funapp 868 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 868 62))
                           (display "\n")
                           (= x7689 9)))))
                      (letrec*
                       ((g7690
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7691
                                 (begin
                                   (write '(funapp 876 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 877 32))
                                 (display "\n")
                                 (= x7691 10)))))
                            (letrec*
                             ((g7692
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7693
                                    (begin
                                      (write '(funapp 883 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 884 35))
                                    (display "\n")
                                    (= x7693 32))))))
                             g7692)))))
                       g7690))))
                   g7688)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7694
                     (letrec*
                      ((x7695
                        (letrec*
                         ((x7696
                           (begin
                             (write '(funapp 893 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 893 58))
                           (display "\n")
                           (cdr x7696)))))
                      (begin
                        (write '(funapp 894 23))
                        (display "\n")
                        (cdr x7695)))))
                   g7694)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7697
                     (letrec*
                      ((x7699
                        (begin
                          (write '(funapp 899 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 899 59))
                        (display "\n")
                        (assert x7699))))
                    (g7698
                     (begin (write '(funapp 900 28)) (display "\n") (> x 0))))
                   g7698)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7700
                     (begin
                       (write '(funapp 902 59))
                       (display "\n")
                       (bool-top))))
                   g7700)))
               ($pc (begin (write '(funapp 903 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7701 #f)) g7701)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7702
                     (letrec*
                      ((x7703
                        (begin
                          (write '(funapp 909 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 909 55))
                        (display "\n")
                        (cdr x7703)))))
                   g7702)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7704
                     (letrec*
                      ((x7706
                        (begin
                          (write '(funapp 914 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 914 59))
                        (display "\n")
                        (assert x7706))))
                    (g7705
                     (letrec*
                      ((x-cnd7707
                        (begin
                          (write '(funapp 917 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7707
                        (begin
                          (write '(funapp 918 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 918 49))
                          (display "\n")
                          (floor x))))))
                   g7705)))
               ($cmp (begin (write '(funapp 920 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7708
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 926 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7709
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7710
                                 (begin
                                   (write '(funapp 934 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7710
                                 (begin
                                   (write '(funapp 935 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7711
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7712
                                       (begin
                                         (write '(funapp 943 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7712
                                       (letrec*
                                        ((x-cnd7713
                                          (begin
                                            (write '(funapp 946 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7713
                                          (begin
                                            (write '(funapp 947 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7714
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7715
                                             (begin
                                               (write '(funapp 956 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7715
                                             (letrec*
                                              ((x-cnd7716
                                                (begin
                                                  (write '(funapp 959 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7716
                                                (letrec*
                                                 ((x-cnd7717
                                                   (letrec*
                                                    ((x7719
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7718
                                                      (begin
                                                        (write
                                                         '(funapp 965 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 966 53))
                                                      (display "\n")
                                                      (equal? x7719 x7718)))))
                                                 (if x-cnd7717
                                                   (letrec*
                                                    ((x7721
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7720
                                                      (begin
                                                        (write
                                                         '(funapp 970 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 971 53))
                                                      (display "\n")
                                                      (equal? x7721 x7720)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7722
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7723
                                                (begin
                                                  (write '(funapp 980 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7723
                                                (letrec*
                                                 ((x-cnd7724
                                                   (begin
                                                     (write '(funapp 983 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7724
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 986 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7725
                                                       (letrec*
                                                        ((x-cnd7726
                                                          (letrec*
                                                           ((x7727
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  993
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 995 60))
                                                             (display "\n")
                                                             (= x7727 n)))))
                                                        (if x-cnd7726
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7728
                                                                  (letrec*
                                                                   ((val7256
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1004
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7729
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7730
                                                                           (letrec*
                                                                            ((x7732
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1013
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7731
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1017
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1020
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7732
                                                                               x7731)))))
                                                                         (if x-cnd7730
                                                                           (letrec*
                                                                            ((x7733
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1026
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1029
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7733)))
                                                                           #f)))))
                                                                    g7729))))
                                                                g7728))))
                                                           (letrec*
                                                            ((g7734
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1035
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7734))
                                                          #f))))
                                                     g7725))
                                                   #f))
                                                #f)))))
                                         g7722)))))
                                   g7714)))))
                             g7711)))))
                       g7709))))
                   g7708)))
               (cdaaar
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
                                (write '(funapp 1053 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1053 61))
                              (display "\n")
                              (car x7738)))))
                         (begin
                           (write '(funapp 1054 26))
                           (display "\n")
                           (car x7737)))))
                      (begin
                        (write '(funapp 1055 23))
                        (display "\n")
                        (cdr x7736)))))
                   g7735)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((x7740
                        (letrec*
                         ((x7741
                           (letrec*
                            ((x7742
                              (begin
                                (write '(funapp 1064 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1064 61))
                              (display "\n")
                              (cdr x7742)))))
                         (begin
                           (write '(funapp 1065 26))
                           (display "\n")
                           (car x7741)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (car x7740)))))
                   g7739)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7743
                     (begin
                       (write '(funapp 1068 53))
                       (display "\n")
                       (eq? x y))))
                   g7743)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1073 60))
                        (display "\n")
                        (assert x7747))))
                    (g7745
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1075 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1075 59))
                        (display "\n")
                        (assert x7748))))
                    (g7746
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1078 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1079 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7749
                         (begin
                           (write '(funapp 1081 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7750 res))
                       g7750))))
                   g7746)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7751
                     (begin
                       (write '(funapp 1084 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1084 57))
                          (display "\n")
                          '())))))
                   g7751)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7755))))
                    (g7753
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7756))))
                    (g7754
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1092 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7757
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1094 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7757))))
                   g7754)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7759
                        (letrec*
                         ((x7760
                           (begin
                             (write '(funapp 1102 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1102 58))
                           (display "\n")
                           (car x7760)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (cdr x7759)))))
                   g7758)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7762
                        (letrec*
                         ((x7763
                           (letrec*
                            ((x7764
                              (begin
                                (write '(funapp 1112 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1112 61))
                              (display "\n")
                              (cdr x7764)))))
                         (begin
                           (write '(funapp 1113 26))
                           (display "\n")
                           (car x7763)))))
                      (begin
                        (write '(funapp 1114 23))
                        (display "\n")
                        (cdr x7762)))))
                   g7761)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7766
                        (letrec*
                         ((x7767
                           (begin
                             (write '(funapp 1122 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1122 58))
                           (display "\n")
                           (cdr x7767)))))
                      (begin
                        (write '(funapp 1123 23))
                        (display "\n")
                        (car x7766)))))
                   g7765)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7769
                        (letrec*
                         ((x7770
                           (begin
                             (write '(funapp 1130 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1130 58))
                           (display "\n")
                           (car x7770)))))
                      (begin
                        (write '(funapp 1131 23))
                        (display "\n")
                        (car x7769)))))
                   g7768)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1137 58))
                        (display "\n")
                        (assert x7775))))
                    (g7773
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 1138 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1138 66))
                        (display "\n")
                        (not x7776)))))
                   g7773)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7778
                        (letrec*
                         ((x7779
                           (letrec*
                            ((x7780
                              (begin
                                (write '(funapp 1148 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1148 61))
                              (display "\n")
                              (car x7780)))))
                         (begin
                           (write '(funapp 1149 26))
                           (display "\n")
                           (car x7779)))))
                      (begin
                        (write '(funapp 1150 23))
                        (display "\n")
                        (car x7778)))))
                   g7777)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1155 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1155 59))
                        (display "\n")
                        (assert x7783))))
                    (g7782
                     (begin (write '(funapp 1156 28)) (display "\n") (< x 0))))
                   g7782)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7784
                     (begin
                       (write '(funapp 1158 53))
                       (display "\n")
                       (memq e l))))
                   g7784)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7786
                        (letrec*
                         ((x7787
                           (begin
                             (write '(funapp 1164 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1164 58))
                           (display "\n")
                           (car x7787)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (car x7786)))))
                   g7785)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7788
                     (begin (write '(funapp 1167 51)) (display "\n") '())))
                   g7788)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1171 57))
                        (display "\n")
                        (assert x7791))))
                    (g7790
                     (letrec*
                      ((x-cnd7792
                        (begin
                          (write '(funapp 1174 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7792
                        (begin (write '(funapp 1176 24)) (display "\n") '())
                        (letrec*
                         ((x7795
                           (letrec*
                            ((x7796
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (reverse x7796))))
                          (x7793
                           (letrec*
                            ((x7794
                              (begin
                                (write '(funapp 1179 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1179 61))
                              (display "\n")
                              (list x7794)))))
                         (begin
                           (write '(funapp 1180 26))
                           (display "\n")
                           (append x7795 x7793)))))))
                   g7790)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7798
                        (letrec*
                         ((x7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 1189 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1189 61))
                              (display "\n")
                              (car x7800)))))
                         (begin
                           (write '(funapp 1190 26))
                           (display "\n")
                           (car x7799)))))
                      (begin
                        (write '(funapp 1191 23))
                        (display "\n")
                        (car x7798)))))
                   g7797)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x7802
                        (letrec*
                         ((x7803
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 1200 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1200 61))
                              (display "\n")
                              (car x7804)))))
                         (begin
                           (write '(funapp 1201 26))
                           (display "\n")
                           (cdr x7803)))))
                      (begin
                        (write '(funapp 1202 23))
                        (display "\n")
                        (cdr x7802)))))
                   g7801)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1207 59))
                        (display "\n")
                        (assert x7807))))
                    (g7806
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1208 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1208 60))
                        (display "\n")
                        (= 1 x7808)))))
                   g7806)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7810
                        (letrec*
                         ((x7811
                           (letrec*
                            ((x7812
                              (begin
                                (write '(funapp 1217 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1217 61))
                              (display "\n")
                              (cdr x7812)))))
                         (begin
                           (write '(funapp 1218 26))
                           (display "\n")
                           (car x7811)))))
                      (begin
                        (write '(funapp 1219 23))
                        (display "\n")
                        (car x7810)))))
                   g7809)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1225 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1225 59))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1226 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1226 60))
                        (display "\n")
                        (assert x7817))))
                    (g7815
                     (letrec*
                      ((x-cnd7818
                        (begin
                          (write '(funapp 1229 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7818
                        (letrec*
                         ((g7819
                           (begin
                             (write '(funapp 1231 42))
                             (display "\n")
                             (proc))))
                         g7819)
                        (letrec*
                         ((x-cnd7820
                           (letrec*
                            ((x7821
                              (begin
                                (write '(funapp 1234 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1234 58))
                              (display "\n")
                              (null? x7821)))))
                         (if x-cnd7820
                           (letrec*
                            ((g7822
                              (letrec*
                               ((x7823
                                 (begin
                                   (write '(funapp 1238 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1238 61))
                                 (display "\n")
                                 (proc x7823)))))
                            g7822)
                           (letrec*
                            ((x-cnd7824
                              (letrec*
                               ((x7825
                                 (begin
                                   (write '(funapp 1242 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1242 62))
                                 (display "\n")
                                 (null? x7825)))))
                            (if x-cnd7824
                              (letrec*
                               ((g7826
                                 (letrec*
                                  ((x7828
                                    (begin
                                      (write '(funapp 1247 43))
                                      (display "\n")
                                      (car args)))
                                   (x7827
                                    (begin
                                      (write '(funapp 1247 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1248 35))
                                    (display "\n")
                                    (proc x7828 x7827)))))
                               g7826)
                              (letrec*
                               ((x-cnd7829
                                 (letrec*
                                  ((x7830
                                    (begin
                                      (write '(funapp 1253 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1254 35))
                                    (display "\n")
                                    (null? x7830)))))
                               (if x-cnd7829
                                 (letrec*
                                  ((g7831
                                    (letrec*
                                     ((x7834
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (car args)))
                                      (x7833
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7832
                                       (begin
                                         (write '(funapp 1261 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1262 38))
                                       (display "\n")
                                       (proc x7834 x7833 x7832)))))
                                  g7831)
                                 (letrec*
                                  ((x-cnd7835
                                    (letrec*
                                     ((x7836
                                       (begin
                                         (write '(funapp 1267 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1268 38))
                                       (display "\n")
                                       (null? x7836)))))
                                  (if x-cnd7835
                                    (letrec*
                                     ((g7837
                                       (letrec*
                                        ((x7841
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (car args)))
                                         (x7840
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7839
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7838
                                          (begin
                                            (write '(funapp 1276 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1277 41))
                                          (display "\n")
                                          (proc x7841 x7840 x7839 x7838)))))
                                     g7837)
                                    (letrec*
                                     ((x-cnd7842
                                       (letrec*
                                        ((x7843
                                          (letrec*
                                           ((x7844
                                             (begin
                                               (write '(funapp 1284 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1285 44))
                                             (display "\n")
                                             (cdr x7844)))))
                                        (begin
                                          (write '(funapp 1286 41))
                                          (display "\n")
                                          (null? x7843)))))
                                     (if x-cnd7842
                                       (letrec*
                                        ((g7845
                                          (letrec*
                                           ((x7851
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (car args)))
                                            (x7850
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7849
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7848
                                             (begin
                                               (write '(funapp 1294 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7846
                                             (letrec*
                                              ((x7847
                                                (begin
                                                  (write '(funapp 1297 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (car x7847)))))
                                           (begin
                                             (write '(funapp 1299 44))
                                             (display "\n")
                                             (proc
                                              x7851
                                              x7850
                                              x7849
                                              x7848
                                              x7846)))))
                                        g7845)
                                       (letrec*
                                        ((x-cnd7852
                                          (letrec*
                                           ((x7853
                                             (letrec*
                                              ((x7854
                                                (begin
                                                  (write '(funapp 1311 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1312 47))
                                                (display "\n")
                                                (cddr x7854)))))
                                           (begin
                                             (write '(funapp 1313 44))
                                             (display "\n")
                                             (null? x7853)))))
                                        (if x-cnd7852
                                          (letrec*
                                           ((g7855
                                             (letrec*
                                              ((x7863
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7862
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7861
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7860
                                                (begin
                                                  (write '(funapp 1321 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7858
                                                (letrec*
                                                 ((x7859
                                                   (begin
                                                     (write '(funapp 1324 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1325 50))
                                                   (display "\n")
                                                   (car x7859))))
                                               (x7856
                                                (letrec*
                                                 ((x7857
                                                   (begin
                                                     (write '(funapp 1328 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (cadr x7857)))))
                                              (begin
                                                (write '(funapp 1330 47))
                                                (display "\n")
                                                (proc
                                                 x7863
                                                 x7862
                                                 x7861
                                                 x7860
                                                 x7858
                                                 x7856)))))
                                           g7855)
                                          (letrec*
                                           ((x-cnd7864
                                             (letrec*
                                              ((x7865
                                                (letrec*
                                                 ((x7866
                                                   (begin
                                                     (write '(funapp 1343 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1344 50))
                                                   (display "\n")
                                                   (cdddr x7866)))))
                                              (begin
                                                (write '(funapp 1345 47))
                                                (display "\n")
                                                (null? x7865)))))
                                           (if x-cnd7864
                                             (letrec*
                                              ((g7867
                                                (letrec*
                                                 ((x7877
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7876
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7875
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7874
                                                   (begin
                                                     (write '(funapp 1353 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7872
                                                   (letrec*
                                                    ((x7873
                                                      (begin
                                                        (write
                                                         '(funapp 1356 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1357 53))
                                                      (display "\n")
                                                      (car x7873))))
                                                  (x7870
                                                   (letrec*
                                                    ((x7871
                                                      (begin
                                                        (write
                                                         '(funapp 1360 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1361 53))
                                                      (display "\n")
                                                      (cadr x7871))))
                                                  (x7868
                                                   (letrec*
                                                    ((x7869
                                                      (begin
                                                        (write
                                                         '(funapp 1364 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1365 53))
                                                      (display "\n")
                                                      (caddr x7869)))))
                                                 (begin
                                                   (write '(funapp 1366 50))
                                                   (display "\n")
                                                   (proc
                                                    x7877
                                                    x7876
                                                    x7875
                                                    x7874
                                                    x7872
                                                    x7870
                                                    x7868)))))
                                              g7867)
                                             (letrec*
                                              ((g7878
                                                (begin
                                                  (write '(funapp 1377 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7878)))))))))))))))))))
                   g7815)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7881
                        (begin
                          (write '(funapp 1383 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1383 57))
                        (display "\n")
                        (assert x7881))))
                    (g7880
                     (letrec*
                      ((x-cnd7882
                        (begin
                          (write '(funapp 1386 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7882
                        #f
                        (letrec*
                         ((x-cnd7883
                           (letrec*
                            ((x7884
                              (begin
                                (write '(funapp 1391 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1391 55))
                              (display "\n")
                              (equal? x7884 e)))))
                         (if x-cnd7883
                           l
                           (letrec*
                            ((x7885
                              (begin
                                (write '(funapp 1394 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1394 55))
                              (display "\n")
                              (member e x7885)))))))))
                   g7880)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x7887
                        (letrec*
                         ((x7888
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 1403 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1403 61))
                              (display "\n")
                              (cdr x7889)))))
                         (begin
                           (write '(funapp 1404 26))
                           (display "\n")
                           (cdr x7888)))))
                      (begin
                        (write '(funapp 1405 23))
                        (display "\n")
                        (cdr x7887)))))
                   g7886)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((x7891
                        (letrec*
                         ((x7892
                           (letrec*
                            ((x7893
                              (begin
                                (write '(funapp 1414 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1414 61))
                              (display "\n")
                              (cdr x7893)))))
                         (begin
                           (write '(funapp 1415 26))
                           (display "\n")
                           (cdr x7892)))))
                      (begin
                        (write '(funapp 1416 23))
                        (display "\n")
                        (car x7891)))))
                   g7890)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7894
                     (begin
                       (write '(funapp 1418 53))
                       (display "\n")
                       (random 42))))
                   g7894)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7897
                        (begin
                          (write '(funapp 1422 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1422 59))
                        (display "\n")
                        (assert x7897))))
                    (g7896
                     (begin (write '(funapp 1423 28)) (display "\n") (= x 0))))
                   g7896)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1430 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7899
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1432 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7899))))
                   g7898)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 1438 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1438 55))
                        (display "\n")
                        (car x7901)))))
                   g7900)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7903
                           (begin
                             (write '(funapp 1448 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7903
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 1450 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1450 55))
                              (display "\n")
                              (list? x7904)))
                           #f))))
                      (letrec*
                       ((g7905
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1453 52))
                             (display "\n")
                             (null? l)))))
                       g7905))))
                   g7902)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((x7907
                        (letrec*
                         ((x7908
                           (letrec*
                            ((x7909
                              (begin
                                (write '(funapp 1463 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1463 61))
                              (display "\n")
                              (car x7909)))))
                         (begin
                           (write '(funapp 1464 26))
                           (display "\n")
                           (cdr x7908)))))
                      (begin
                        (write '(funapp 1465 23))
                        (display "\n")
                        (cdr x7907)))))
                   g7906)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7910
                     (letrec*
                      ((x-cnd7911
                        (letrec*
                         ((x7912 #\0))
                         (begin
                           (write '(funapp 1472 58))
                           (display "\n")
                           (char<=? x7912 c)))))
                      (if x-cnd7911
                        (letrec*
                         ((x7913 #\9))
                         (begin
                           (write '(funapp 1474 48))
                           (display "\n")
                           (char<=? c x7913)))
                        #f))))
                   g7910)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7916
                        (begin
                          (write '(funapp 1481 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1481 57))
                        (display "\n")
                        (assert x7916))))
                    (g7915
                     (letrec*
                      ((x-cnd7917
                        (begin
                          (write '(funapp 1484 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7917
                        #f
                        (letrec*
                         ((x-cnd7918
                           (letrec*
                            ((x7919
                              (begin
                                (write '(funapp 1489 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1489 56))
                              (display "\n")
                              (eqv? x7919 k)))))
                         (if x-cnd7918
                           (begin
                             (write '(funapp 1491 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7920
                              (begin
                                (write '(funapp 1492 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1492 55))
                              (display "\n")
                              (assq k x7920)))))))))
                   g7915)))
               (not (lambda (x) (letrec* ((g7921 (if x #f #t))) g7921)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7922
                     (begin
                       (write '(funapp 1496 50))
                       (display "\n")
                       (append l1 l2))))
                   g7922)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 1500 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1500 57))
                        (display "\n")
                        (assert x7925))))
                    (g7924
                     (letrec*
                      ((x-cnd7926
                        (begin
                          (write '(funapp 1503 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7926
                        #f
                        (letrec*
                         ((x-cnd7927
                           (letrec*
                            ((x7928
                              (begin
                                (write '(funapp 1508 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1508 55))
                              (display "\n")
                              (eq? x7928 e)))))
                         (if x-cnd7927
                           l
                           (letrec*
                            ((x7929
                              (begin
                                (write '(funapp 1511 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1511 55))
                              (display "\n")
                              (memq e x7929)))))))))
                   g7924)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7931
                        (letrec*
                         ((x7932
                           (letrec*
                            ((x7933
                              (begin
                                (write '(funapp 1520 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1520 61))
                              (display "\n")
                              (car x7933)))))
                         (begin
                           (write '(funapp 1521 26))
                           (display "\n")
                           (cdr x7932)))))
                      (begin
                        (write '(funapp 1522 23))
                        (display "\n")
                        (car x7931)))))
                   g7930)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1527 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1527 57))
                        (display "\n")
                        (assert x7936))))
                    (g7935
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7937
                             (letrec*
                              ((x-cnd7938
                                (begin
                                  (write '(funapp 1535 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7938
                                0
                                (letrec*
                                 ((x7939
                                   (letrec*
                                    ((x7940
                                      (begin
                                        (write '(funapp 1540 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1540 63))
                                      (display "\n")
                                      (rec x7940)))))
                                 (begin
                                   (write '(funapp 1541 34))
                                   (display "\n")
                                   (+ 1 x7939)))))))
                           g7937))))
                      (letrec*
                       ((g7941
                         (begin
                           (write '(funapp 1543 40))
                           (display "\n")
                           (rec l))))
                       g7941))))
                   g7935)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7945))))
                    (g7943
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7946))))
                    (g7944
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1552 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7947
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1554 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7947))))
                   g7944)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1560 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1560 65))
                        (display "\n")
                        (not x7949)))))
                   g7948)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7951
                        (letrec*
                         ((x7952
                           (begin
                             (write '(funapp 1567 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1567 58))
                           (display "\n")
                           (car x7952)))))
                      (begin
                        (write '(funapp 1568 23))
                        (display "\n")
                        (cdr x7951)))))
                   g7950)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1573 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1573 57))
                        (display "\n")
                        (assert x7955))))
                    (g7954
                     (letrec*
                      ((x-cnd7956
                        (begin
                          (write '(funapp 1576 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7956
                        #f
                        (letrec*
                         ((x-cnd7957
                           (letrec*
                            ((x7958
                              (begin
                                (write '(funapp 1581 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1581 56))
                              (display "\n")
                              (equal? x7958 k)))))
                         (if x-cnd7957
                           (begin
                             (write '(funapp 1583 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7959
                              (begin
                                (write '(funapp 1584 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1584 55))
                              (display "\n")
                              (assoc k x7959)))))))))
                   g7954)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1589 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1589 55))
                        (display "\n")
                        (car x7961)))))
                   g7960)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1595 58))
                        (display "\n")
                        (assert x7966))))
                    (g7964
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1596 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1596 63))
                        (display "\n")
                        (not x7967)))))
                   g7964)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1603 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7969
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1605 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7969))))
                   g7968)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1611 62))
                        (display "\n")
                        (assert x7973))))
                    (g7971
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1612 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1612 57))
                        (display "\n")
                        (assert x7974))))
                    (g7972
                     (letrec*
                      ((x-cnd7975
                        (begin
                          (write '(funapp 1615 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7975
                        #t
                        (letrec*
                         ((x-cnd7976
                           (begin
                             (write '(funapp 1619 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7976
                           (letrec*
                            ((g7977
                              (letrec*
                               ((x7979
                                 (begin
                                   (write '(funapp 1622 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1622 64))
                                 (display "\n")
                                 (f x7979))))
                             (g7978
                              (letrec*
                               ((x7980
                                 (begin
                                   (write '(funapp 1624 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1624 58))
                                 (display "\n")
                                 (for-each f x7980)))))
                            g7978)
                           (begin
                             (write '(funapp 1626 27))
                             (display "\n")
                             '())))))))
                   g7972)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7981
                     (letrec*
                      ((x7983
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1631 59))
                        (display "\n")
                        (assert x7983))))
                    (g7982
                     (letrec*
                      ((x-cnd7984
                        (begin
                          (write '(funapp 1633 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7984
                        (begin
                          (write '(funapp 1633 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7982)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7985
                     (letrec*
                      ((x7988
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7988))))
                    (g7986
                     (letrec*
                      ((x7989
                        (begin
                          (write '(funapp 1639 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1639 58))
                        (display "\n")
                        (assert x7989))))
                    (g7987
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1642 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7990
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1644 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7990))))
                   g7987)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7991
                     (letrec*
                      ((x7992
                        (letrec*
                         ((x7993
                           (letrec*
                            ((x7994
                              (begin
                                (write '(funapp 1654 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1654 61))
                              (display "\n")
                              (cdr x7994)))))
                         (begin
                           (write '(funapp 1655 26))
                           (display "\n")
                           (cdr x7993)))))
                      (begin
                        (write '(funapp 1656 23))
                        (display "\n")
                        (car x7992)))))
                   g7991)))
               (newline (lambda () (letrec* ((g7995 #f)) g7995)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((x7998
                        (letrec*
                         ((x7999
                           (begin
                             (write '(funapp 1664 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1664 58))
                           (display "\n")
                           (abs x7999))))
                       (x7997
                        (begin
                          (write '(funapp 1665 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1666 23))
                        (display "\n")
                        (/ x7998 x7997)))))
                   g7996)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8000
                     (letrec*
                      ((x8004
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1672 57))
                        (display "\n")
                        (assert x8004))))
                    (g8001
                     (letrec*
                      ((x8005
                        (begin
                          (write '(funapp 1673 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1673 63))
                        (display "\n")
                        (assert x8005))))
                    (g8002
                     (letrec*
                      ((x8006
                        (letrec*
                         ((x8007
                           (begin
                             (write '(funapp 1676 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1676 61))
                           (display "\n")
                           (< index x8007)))))
                      (begin
                        (write '(funapp 1677 23))
                        (display "\n")
                        (assert x8006))))
                    (g8003
                     (letrec*
                      ((x-cnd8008
                        (begin
                          (write '(funapp 1680 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8008
                        (begin
                          (write '(funapp 1682 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8010
                           (begin
                             (write '(funapp 1684 34))
                             (display "\n")
                             (cdr l)))
                          (x8009
                           (begin
                             (write '(funapp 1684 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1685 26))
                           (display "\n")
                           (list-ref x8010 x8009)))))))
                   g8003)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8011
                     (letrec*
                      ((x-cnd8012
                        (begin
                          (write '(funapp 1692 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8012
                        a
                        (letrec*
                         ((x8013
                           (begin
                             (write '(funapp 1695 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1695 57))
                           (display "\n")
                           (gcd b x8013)))))))
                   g8011)))
               (mult
                (lambda (n m)
                  (letrec*
                   ((g8014
                     (letrec*
                      ((x-cnd8015
                        (letrec*
                         ((val7263
                           (begin
                             (write '(funapp 1704 36))
                             (display "\n")
                             (<= n 0))))
                         (letrec*
                          ((g8016
                            (if val7263
                              val7263
                              (begin
                                (write '(funapp 1706 55))
                                (display "\n")
                                (<= m 0)))))
                          g8016))))
                      (if x-cnd8015
                        0
                        (letrec*
                         ((x8017
                           (letrec*
                            ((x8018
                              (begin
                                (write '(funapp 1711 51))
                                (display "\n")
                                (- m 1))))
                            (begin
                              (write '(funapp 1711 61))
                              (display "\n")
                              (mult n x8018)))))
                         (begin
                           (write '(funapp 1712 26))
                           (display "\n")
                           (+ n x8017)))))))
                   g8014)))
               (sqr
                (lambda (n)
                  (letrec*
                   ((g8019
                     (begin
                       (write '(funapp 1714 50))
                       (display "\n")
                       (mult n n))))
                   g8019))))
              (letrec*
               ((g8020
                 (begin
                   (write '(funapp 1717 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1718 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8023
                          (letrec*
                           ((xj7403
                             (begin
                               (write '(funapp 1722 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1722 37))
                                  (display "\n")
                                  'module))))
                            (xk7404
                             (begin
                               (write '(funapp 1722 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1722 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8024
                              (begin
                                (write '(funapp 1725 27))
                                (display "\n")
                                ((lambda (j7407 k7408 f7409)
                                   (letrec*
                                    ((g8025
                                      (lambda (g7405 g7406)
                                        (letrec*
                                         ((g8026
                                           (letrec*
                                            ((x8030
                                              (letrec*
                                               ((x8031
                                                 (begin
                                                   (write '(funapp 1734 50))
                                                   (display "\n")
                                                   (>=/c 0))))
                                               (begin
                                                 (write '(funapp 1735 42))
                                                 (display "\n")
                                                 (and/c integer?/c x8031))))
                                             (x8027
                                              (letrec*
                                               ((x8029
                                                 (begin
                                                   (write '(funapp 1739 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7407
                                                    k7408
                                                    g7405)))
                                                (x8028
                                                 (begin
                                                   (write '(funapp 1741 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7407
                                                    k7408
                                                    g7406))))
                                               (begin
                                                 (write '(funapp 1742 42))
                                                 (display "\n")
                                                 (f7409 x8029 x8028)))))
                                            (begin
                                              (write '(funapp 1743 39))
                                              (display "\n")
                                              (x8030 j7407 k7408 x8027)))))
                                         g8026))))
                                    g8025))
                                 xj7403
                                 xk7404
                                 mult))))
                            g8024)))
                         (x8022 (input))
                         (x8021 (input)))
                        (begin
                          (write '(funapp 1752 21))
                          (display "\n")
                          (x8023 x8022 x8021)))
                       (letrec*
                        ((xj7410
                          (begin
                            (write '(funapp 1754 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1754 34))
                               (display "\n")
                               'module))))
                         (xk7411
                          (begin
                            (write '(funapp 1754 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1754 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8032
                           (begin
                             (write '(funapp 1757 24))
                             (display "\n")
                             ((lambda (j7413 k7414 f7415)
                                (letrec*
                                 ((g8033
                                   (lambda (g7412)
                                     (letrec*
                                      ((g8034
                                        (letrec*
                                         ((x7416
                                           (begin
                                             (write '(funapp 1764 44))
                                             (display "\n")
                                             (integer?/c j7413 k7414 g7412))))
                                         (letrec*
                                          ((g8035
                                            (letrec*
                                             ((x8037
                                               (begin
                                                 (write '(funapp 1769 42))
                                                 (display "\n")
                                                 ((lambda (n)
                                                    (letrec*
                                                     ((g8038
                                                       (letrec*
                                                        ((x8039
                                                          (begin
                                                            (write
                                                             '(funapp 1773 57))
                                                            (display "\n")
                                                            (>=/c n))))
                                                        (begin
                                                          (write
                                                           '(funapp 1774 49))
                                                          (display "\n")
                                                          (and/c
                                                           integer?/c
                                                           x8039)))))
                                                     g8038))
                                                  x7416)))
                                              (x8036
                                               (begin
                                                 (write '(funapp 1777 48))
                                                 (display "\n")
                                                 (f7415 x7416))))
                                             (begin
                                               (write '(funapp 1778 40))
                                               (display "\n")
                                               (x8037 j7413 k7414 x8036)))))
                                          g8035))))
                                      g8034))))
                                 g8033))
                              xj7410
                              xk7411
                              sqr))))
                         g8032))))))))
               g8020))))
           g7445))))
       g7428)))
    g7427)))
