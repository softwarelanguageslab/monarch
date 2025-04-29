(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7423 #t)) g7423)))
    (meta (lambda (v) (letrec* ((g7424 v)) g7424)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7425
          (letrec*
           ((g7426
             (letrec*
              ((x-e7427 lst))
              (letrec*
               ((v1742 x-e7427))
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
                   ((x-cnd7428
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7428
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
           g7426)))
        g7425)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7429 (lambda (v) (letrec* ((g7430 v)) g7430)))) g7429)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7431
          (letrec*
           ((x7432 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7432)))))
        g7431))))
   (letrec*
    ((g7433
      (letrec*
       ((g7434
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7435
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7435)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7436
                 (letrec*
                  ((x7438
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7438))))
                (g7437
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7439
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7440 (if val7245 val7245 #f))) g7440)))))
                   g7439))))
               g7437)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7441
                 (letrec*
                  ((x7443
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7443))))
                (g7442
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7444
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7445 (if val7247 val7247 #f))) g7445)))))
                   g7444))))
               g7442)))
           (>
            (lambda (x y)
              (letrec*
               ((g7446
                 (letrec*
                  ((x7448
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7448))))
                (g7447
                 (letrec*
                  ((x7449
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7449)))))
               g7447)))
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
           ((g7450 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7451
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7452
                     (lambda (k j lst)
                       (letrec*
                        ((g7453
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7454
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7454))
                             lst))))
                        g7453))))
                   g7452)))
               (real?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7267))))
                      (if x-cnd7456
                        g7267
                        (begin
                          (write '(blame g7265 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7455)))
               (boolean?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x-cnd7458
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7270))))
                      (if x-cnd7458
                        g7270
                        (begin
                          (write '(blame g7268 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7457)))
               (number?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x-cnd7460
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7273))))
                      (if x-cnd7460
                        g7273
                        (begin
                          (write '(blame g7271 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7459)))
               (any/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x-cnd7462
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7463 #t)) g7463)) g7276))))
                      (if x-cnd7462
                        g7276
                        (begin
                          (write '(blame g7274 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7461)))
               (any?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7464
                     (letrec*
                      ((x-cnd7465
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7466 #t)) g7466)) g7279))))
                      (if x-cnd7465
                        g7279
                        (begin
                          (write '(blame g7277 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7464)))
               (cons?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x-cnd7468
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7468
                        g7282
                        (begin
                          (write '(blame g7280 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7467)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7469
                     (lambda (k j v)
                       (letrec*
                        ((g7470
                          (letrec*
                           ((x7473
                             (letrec*
                              ((x7474
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7474))))
                            (x7471
                             (letrec*
                              ((x7472
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7472)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7473 x7471)))))
                        g7470))))
                   g7469)))
               (pair?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7475
                     (letrec*
                      ((x-cnd7476
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7285))))
                      (if x-cnd7476
                        g7285
                        (begin
                          (write '(blame g7283 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7475)))
               (integer?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7477
                     (letrec*
                      ((x-cnd7478
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7288))))
                      (if x-cnd7478
                        g7288
                        (begin
                          (write '(blame g7286 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7477)))
               (symbol?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7479
                     (letrec*
                      ((x-cnd7480
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7291))))
                      (if x-cnd7480
                        g7291
                        (begin
                          (write '(blame g7289 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7479)))
               (string?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7481
                     (letrec*
                      ((x-cnd7482
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7294))))
                      (if x-cnd7482
                        g7294
                        (begin
                          (write '(blame g7292 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7481)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7483
                     (lambda (k j v)
                       (letrec*
                        ((g7484
                          (letrec*
                           ((x-cnd7485
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7485
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7484))))
                   g7483)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7486
                     (lambda (k j v)
                       (letrec*
                        ((g7487
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7488
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7488))))
                        g7487))))
                   g7486)))
               (null?/c
                (lambda (g7295 g7296 g7297)
                  (letrec*
                   ((g7489
                     (letrec*
                      ((x-cnd7490
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7297))))
                      (if x-cnd7490
                        g7297
                        (begin
                          (write '(blame g7295 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7295)))))))
                   g7489)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7491
                     (lambda (k j v)
                       (letrec*
                        ((g7492
                          (letrec*
                           ((x-cnd7493
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7493
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7497
                                (letrec*
                                 ((x7498
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7498))))
                               (x7494
                                (letrec*
                                 ((x7496
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7495
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7496 k j x7495)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7497 x7494)))))))
                        g7492))))
                   g7491)))
               (any? (lambda (v) (letrec* ((g7499 #t)) g7499)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7500
                     (letrec*
                      ((x7501
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7501)))))
                   g7500)))
               (nonzero?/c
                (lambda (g7298 g7299 g7300)
                  (letrec*
                   ((g7502
                     (letrec*
                      ((x-cnd7503
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7504
                                (letrec*
                                 ((x7505
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7505)))))
                              g7504))
                           g7300))))
                      (if x-cnd7503
                        g7300
                        (begin
                          (write '(blame g7298 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7298)))))))
                   g7502)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7506
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7507
                          (letrec*
                           ((x-cnd7508
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7509
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7509))
                                g7303))))
                           (if x-cnd7508
                             g7303
                             (begin
                               (write '(blame g7301 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7507))))
                   g7506)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7510
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7511
                          (letrec*
                           ((x-cnd7512
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7513
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7513))
                                g7306))))
                           (if x-cnd7512
                             g7306
                             (begin
                               (write '(blame g7304 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7511))))
                   g7510)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7514
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7515
                          (letrec*
                           ((x-cnd7516
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7517
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7517))
                                g7309))))
                           (if x-cnd7516
                             g7309
                             (begin
                               (write '(blame g7307 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7515))))
                   g7514)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7518
                     (lambda (g7310 g7311 g7312)
                       (letrec*
                        ((g7519
                          (letrec*
                           ((x-cnd7520
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7521
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7521))
                                g7312))))
                           (if x-cnd7520
                             g7312
                             (begin
                               (write '(blame g7310 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7310)))))))
                        g7519))))
                   g7518)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7522
                     (lambda (g7313 g7314 g7315)
                       (letrec*
                        ((g7523
                          (letrec*
                           ((x-cnd7524
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7525
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7525))
                                g7315))))
                           (if x-cnd7524
                             g7315
                             (begin
                               (write '(blame g7313 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7313)))))))
                        g7523))))
                   g7522)))
               (meta (lambda (v) (letrec* ((g7526 v)) g7526)))
               (+
                (letrec*
                 ((xj7316
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7317
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7527
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7529
                            (lambda (g7318 g7319)
                              (letrec*
                               ((g7530
                                 (letrec*
                                  ((x7531
                                    (letrec*
                                     ((x7533
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7320 k7321 g7318)))
                                      (x7532
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7322 x7533 x7532)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7320 k7321 x7531)))))
                               g7530))))
                          g7529))
                       xj7316
                       xk7317
                       (lambda (a b)
                         (letrec*
                          ((g7528
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7528))))))
                  g7527)))
               (-
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7534
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7327 k7328 f7329)
                         (letrec*
                          ((g7536
                            (lambda (g7325 g7326)
                              (letrec*
                               ((g7537
                                 (letrec*
                                  ((x7538
                                    (letrec*
                                     ((x7540
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7327 k7328 g7325)))
                                      (x7539
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7327 k7328 g7326))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7329 x7540 x7539)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7327 k7328 x7538)))))
                               g7537))))
                          g7536))
                       xj7323
                       xk7324
                       (lambda (a b)
                         (letrec*
                          ((g7535
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7535))))))
                  g7534)))
               (*
                (letrec*
                 ((xj7330
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7331
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7541
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7334 k7335 f7336)
                         (letrec*
                          ((g7543
                            (lambda (g7332 g7333)
                              (letrec*
                               ((g7544
                                 (letrec*
                                  ((x7545
                                    (letrec*
                                     ((x7547
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7334 k7335 g7332)))
                                      (x7546
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7334 k7335 g7333))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7336 x7547 x7546)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7334 k7335 x7545)))))
                               g7544))))
                          g7543))
                       xj7330
                       xk7331
                       (lambda (a b)
                         (letrec*
                          ((g7542
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7542))))))
                  g7541)))
               (<
                (letrec*
                 ((xj7337
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7338
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7548
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7341 k7342 f7343)
                         (letrec*
                          ((g7550
                            (lambda (g7339 g7340)
                              (letrec*
                               ((g7551
                                 (letrec*
                                  ((x7552
                                    (letrec*
                                     ((x7554
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7341 k7342 g7339)))
                                      (x7553
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7341 k7342 g7340))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7343 x7554 x7553)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7341 k7342 x7552)))))
                               g7551))))
                          g7550))
                       xj7337
                       xk7338
                       (lambda (a b)
                         (letrec*
                          ((g7549
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7549))))))
                  g7548)))
               (>
                (letrec*
                 ((xj7344
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7345
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7555
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7348 k7349 f7350)
                         (letrec*
                          ((g7557
                            (lambda (g7346 g7347)
                              (letrec*
                               ((g7558
                                 (letrec*
                                  ((x7559
                                    (letrec*
                                     ((x7561
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7348 k7349 g7346)))
                                      (x7560
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7348 k7349 g7347))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7350 x7561 x7560)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7348 k7349 x7559)))))
                               g7558))))
                          g7557))
                       xj7344
                       xk7345
                       (lambda (a b)
                         (letrec*
                          ((g7556
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7556))))))
                  g7555)))
               (<=
                (letrec*
                 ((xj7351
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7352
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7562
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7355 k7356 f7357)
                         (letrec*
                          ((g7564
                            (lambda (g7353 g7354)
                              (letrec*
                               ((g7565
                                 (letrec*
                                  ((x7566
                                    (letrec*
                                     ((x7568
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7355 k7356 g7353)))
                                      (x7567
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7355 k7356 g7354))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7357 x7568 x7567)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7355 k7356 x7566)))))
                               g7565))))
                          g7564))
                       xj7351
                       xk7352
                       (lambda (a b)
                         (letrec*
                          ((g7563
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7563))))))
                  g7562)))
               (>=
                (letrec*
                 ((xj7358
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7359
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7569
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7362 k7363 f7364)
                         (letrec*
                          ((g7571
                            (lambda (g7360 g7361)
                              (letrec*
                               ((g7572
                                 (letrec*
                                  ((x7573
                                    (letrec*
                                     ((x7575
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7362 k7363 g7360)))
                                      (x7574
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7362 k7363 g7361))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7364 x7575 x7574)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7362 k7363 x7573)))))
                               g7572))))
                          g7571))
                       xj7358
                       xk7359
                       (lambda (a b)
                         (letrec*
                          ((g7570
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7570))))))
                  g7569)))
               (add1
                (lambda (x)
                  (letrec*
                   ((g7576
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7576)))
               (sub1
                (lambda (x)
                  (letrec*
                   ((g7577
                     (begin (write '(funapp 546 51)) (display "\n") (- x 1))))
                   g7577)))
               (/
                (letrec*
                 ((xj7365
                   (begin (write '(funapp 549 26)) (display "\n") 'server))
                  (xk7366
                   (begin (write '(funapp 549 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7578
                    (begin
                      (write '(funapp 552 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7580
                            (lambda (g7367 g7368)
                              (letrec*
                               ((g7581
                                 (letrec*
                                  ((x7582
                                    (letrec*
                                     ((x7584
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7369 k7370 g7367)))
                                      (x7583
                                       (begin
                                         (write '(funapp 562 44))
                                         (display "\n")
                                         (number?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 563 36))
                                       (display "\n")
                                       (f7371 x7584 x7583)))))
                                  (begin
                                    (write '(funapp 564 33))
                                    (display "\n")
                                    (number?/c j7369 k7370 x7582)))))
                               g7581))))
                          g7580))
                       xj7365
                       xk7366
                       (lambda (a b)
                         (letrec*
                          ((g7579
                            (begin
                              (write '(funapp 569 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7579))))))
                  g7578)))
               (car
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 573 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 573 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7585
                    (begin
                      (write '(funapp 576 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7587
                            (lambda (g7374)
                              (letrec*
                               ((g7588
                                 (letrec*
                                  ((x7589
                                    (letrec*
                                     ((x7590
                                       (begin
                                         (write '(funapp 585 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 586 36))
                                       (display "\n")
                                       (f7377 x7590)))))
                                  (begin
                                    (write '(funapp 587 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7589)))))
                               g7588))))
                          g7587))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7586
                            (begin
                              (write '(funapp 592 51))
                              (display "\n")
                              (orig-car p))))
                          g7586))))))
                  g7585)))
               (cdr
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 596 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 596 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7591
                    (begin
                      (write '(funapp 599 21))
                      (display "\n")
                      ((lambda (j7381 k7382 f7383)
                         (letrec*
                          ((g7593
                            (lambda (g7380)
                              (letrec*
                               ((g7594
                                 (letrec*
                                  ((x7595
                                    (letrec*
                                     ((x7596
                                       (begin
                                         (write '(funapp 608 44))
                                         (display "\n")
                                         (pair?/c j7381 k7382 g7380))))
                                     (begin
                                       (write '(funapp 609 36))
                                       (display "\n")
                                       (f7383 x7596)))))
                                  (begin
                                    (write '(funapp 610 33))
                                    (display "\n")
                                    (any/c j7381 k7382 x7595)))))
                               g7594))))
                          g7593))
                       xj7378
                       xk7379
                       (lambda (p)
                         (letrec*
                          ((g7592
                            (begin
                              (write '(funapp 615 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7592))))))
                  g7591)))
               (cons
                (letrec*
                 ((xj7384
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7385
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7597
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7599
                            (lambda (g7386 g7387)
                              (letrec*
                               ((g7600
                                 (letrec*
                                  ((x7601
                                    (letrec*
                                     ((x7603
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7388 k7389 g7386)))
                                      (x7602
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (any/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7390 x7603 x7602)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (pair?/c j7388 k7389 x7601)))))
                               g7600))))
                          g7599))
                       xj7384
                       xk7385
                       (lambda (a b)
                         (letrec*
                          ((g7598
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7598))))))
                  g7597)))
               (vector-ref
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 644 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 644 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7604
                    (begin
                      (write '(funapp 647 21))
                      (display "\n")
                      ((lambda (j7394 k7395 f7396)
                         (letrec*
                          ((g7606
                            (lambda (g7393)
                              (letrec*
                               ((g7607
                                 (letrec*
                                  ((x7608
                                    (letrec*
                                     ((x7609
                                       (begin
                                         (write '(funapp 656 44))
                                         (display "\n")
                                         (vector?/c j7394 k7395 g7393))))
                                     (begin
                                       (write '(funapp 657 36))
                                       (display "\n")
                                       (f7396 x7609)))))
                                  (begin
                                    (write '(funapp 658 33))
                                    (display "\n")
                                    (integer?/c j7394 k7395 x7608)))))
                               g7607))))
                          g7606))
                       xj7391
                       xk7392
                       (lambda (v i)
                         (letrec*
                          ((g7605
                            (begin
                              (write '(funapp 664 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7605))))))
                  g7604)))
               (vector-set!
                (letrec*
                 ((xj7397
                   (begin (write '(funapp 668 26)) (display "\n") 'server))
                  (xk7398
                   (begin (write '(funapp 668 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7610
                    (begin
                      (write '(funapp 671 21))
                      (display "\n")
                      ((lambda (j7401 k7402 f7403)
                         (letrec*
                          ((g7612
                            (lambda (g7399 g7400)
                              (letrec*
                               ((g7613
                                 (letrec*
                                  ((x7614
                                    (letrec*
                                     ((x7616
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (vector?/c j7401 k7402 g7399)))
                                      (x7615
                                       (begin
                                         (write '(funapp 681 44))
                                         (display "\n")
                                         (integer?/c j7401 k7402 g7400))))
                                     (begin
                                       (write '(funapp 682 36))
                                       (display "\n")
                                       (f7403 x7616 x7615)))))
                                  (begin
                                    (write '(funapp 683 33))
                                    (display "\n")
                                    (any/c j7401 k7402 x7614)))))
                               g7613))))
                          g7612))
                       xj7397
                       xk7398
                       (lambda (vec i v)
                         (letrec*
                          ((g7611
                            (begin
                              (write '(funapp 689 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7611))))))
                  g7610)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7618
                        (letrec*
                         ((x7619
                           (begin
                             (write '(funapp 696 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 696 58))
                           (display "\n")
                           (cdr x7619)))))
                      (begin
                        (write '(funapp 697 23))
                        (display "\n")
                        (cdr x7618)))))
                   g7617)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 703 62))
                        (display "\n")
                        (assert x7623))))
                    (g7621
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 704 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 704 57))
                        (display "\n")
                        (assert x7624))))
                    (g7622
                     (letrec*
                      ((x-cnd7625
                        (begin
                          (write '(funapp 707 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7625
                        (begin (write '(funapp 709 24)) (display "\n") '())
                        (letrec*
                         ((x7628
                           (letrec*
                            ((x7629
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (f x7629))))
                          (x7626
                           (letrec*
                            ((x7627
                              (begin
                                (write '(funapp 712 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 712 61))
                              (display "\n")
                              (map f x7627)))))
                         (begin
                           (write '(funapp 713 26))
                           (display "\n")
                           (cons x7628 x7626)))))))
                   g7622)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 718 55))
                        (display "\n")
                        (cdr x7631)))))
                   g7630)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7633
                        (letrec*
                         ((x7634
                           (letrec*
                            ((x7635
                              (begin
                                (write '(funapp 727 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 727 61))
                              (display "\n")
                              (car x7635)))))
                         (begin
                           (write '(funapp 728 26))
                           (display "\n")
                           (cdr x7634)))))
                      (begin
                        (write '(funapp 729 23))
                        (display "\n")
                        (car x7633)))))
                   g7632)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7637
                        (letrec*
                         ((x7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 738 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 738 61))
                              (display "\n")
                              (cdr x7639)))))
                         (begin
                           (write '(funapp 739 26))
                           (display "\n")
                           (car x7638)))))
                      (begin
                        (write '(funapp 740 23))
                        (display "\n")
                        (cdr x7637)))))
                   g7636)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7643
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 746 60))
                        (display "\n")
                        (assert x7643))))
                    (g7641
                     (letrec*
                      ((x7644
                        (begin
                          (write '(funapp 748 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 748 59))
                        (display "\n")
                        (assert x7644))))
                    (g7642
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
                       ((g7645
                         (begin
                           (write '(funapp 754 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7646 res))
                       g7646))))
                   g7642)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7648
                        (letrec*
                         ((x7649
                           (begin
                             (write '(funapp 762 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 762 58))
                           (display "\n")
                           (cdr x7649)))))
                      (begin
                        (write '(funapp 763 23))
                        (display "\n")
                        (car x7648)))))
                   g7647)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7651
                        (letrec*
                         ((x7652
                           (letrec*
                            ((x7653
                              (begin
                                (write '(funapp 772 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 772 61))
                              (display "\n")
                              (car x7653)))))
                         (begin
                           (write '(funapp 773 26))
                           (display "\n")
                           (car x7652)))))
                      (begin
                        (write '(funapp 774 23))
                        (display "\n")
                        (cdr x7651)))))
                   g7650)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 779 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 779 57))
                        (display "\n")
                        (assert x7656))))
                    (g7655
                     (letrec*
                      ((x-cnd7657
                        (begin
                          (write '(funapp 782 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7657
                        #f
                        (letrec*
                         ((x-cnd7658
                           (letrec*
                            ((x7659
                              (begin
                                (write '(funapp 787 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 787 56))
                              (display "\n")
                              (eq? x7659 k)))))
                         (if x-cnd7658
                           (begin
                             (write '(funapp 789 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7660
                              (begin
                                (write '(funapp 790 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 790 55))
                              (display "\n")
                              (assq k x7660)))))))))
                   g7655)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 795 60))
                        (display "\n")
                        (= 0 x7662)))))
                   g7661)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 800 57))
                        (display "\n")
                        (assert x7665))))
                    (g7664
                     (letrec*
                      ((x-cnd7666
                        (begin
                          (write '(funapp 803 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7666
                        ""
                        (letrec*
                         ((x7669
                           (letrec*
                            ((x7670
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (char->string x7670))))
                          (x7667
                           (letrec*
                            ((x7668
                              (begin
                                (write '(funapp 810 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 810 55))
                              (display "\n")
                              (list->string x7668)))))
                         (begin
                           (write '(funapp 811 26))
                           (display "\n")
                           (string-append x7669 x7667)))))))
                   g7664)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7674
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7674))))
                    (g7672
                     (letrec*
                      ((x7675
                        (begin
                          (write '(funapp 817 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 817 58))
                        (display "\n")
                        (assert x7675))))
                    (g7673
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 820 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7676
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 822 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7676))))
                   g7673)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x7678
                        (letrec*
                         ((x7679
                           (letrec*
                            ((x7680
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7680)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (cdr x7679)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7678)))))
                   g7677)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7681
                     (letrec*
                      ((x7684
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7684))))
                    (g7682
                     (letrec*
                      ((x7685
                        (begin
                          (write '(funapp 840 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 840 57))
                        (display "\n")
                        (assert x7685))))
                    (g7683
                     (letrec*
                      ((x-cnd7686
                        (begin
                          (write '(funapp 843 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7686
                        x
                        (letrec*
                         ((x7688
                           (begin
                             (write '(funapp 847 34))
                             (display "\n")
                             (cdr x)))
                          (x7687
                           (begin
                             (write '(funapp 847 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 848 26))
                           (display "\n")
                           (list-tail x7688 x7687)))))))
                   g7683)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7689
                     (begin (write '(funapp 850 49)) (display "\n") '())))
                   g7689)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7690
                     (letrec*
                      ((x-cnd7691
                        (letrec*
                         ((x7692 #\a))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci>=? c x7692)))))
                      (if x-cnd7691
                        (letrec*
                         ((x7693 #\z))
                         (begin
                           (write '(funapp 859 48))
                           (display "\n")
                           (char-ci<=? c x7693)))
                        #f))))
                   g7690)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7694
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7695
                           (begin
                             (write '(funapp 868 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 868 62))
                           (display "\n")
                           (= x7695 9)))))
                      (letrec*
                       ((g7696
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7697
                                 (begin
                                   (write '(funapp 876 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 877 32))
                                 (display "\n")
                                 (= x7697 10)))))
                            (letrec*
                             ((g7698
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7699
                                    (begin
                                      (write '(funapp 883 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 884 35))
                                    (display "\n")
                                    (= x7699 32))))))
                             g7698)))))
                       g7696))))
                   g7694)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7700
                     (letrec*
                      ((x7701
                        (letrec*
                         ((x7702
                           (begin
                             (write '(funapp 893 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 893 58))
                           (display "\n")
                           (cdr x7702)))))
                      (begin
                        (write '(funapp 894 23))
                        (display "\n")
                        (cdr x7701)))))
                   g7700)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7703
                     (letrec*
                      ((x7705
                        (begin
                          (write '(funapp 899 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 899 59))
                        (display "\n")
                        (assert x7705))))
                    (g7704
                     (begin (write '(funapp 900 28)) (display "\n") (> x 0))))
                   g7704)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7706
                     (begin
                       (write '(funapp 902 59))
                       (display "\n")
                       (bool-top))))
                   g7706)))
               ($pc (begin (write '(funapp 903 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7707 #f)) g7707)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7708
                     (letrec*
                      ((x7709
                        (begin
                          (write '(funapp 909 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 909 55))
                        (display "\n")
                        (cdr x7709)))))
                   g7708)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7710
                     (letrec*
                      ((x7712
                        (begin
                          (write '(funapp 914 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 914 59))
                        (display "\n")
                        (assert x7712))))
                    (g7711
                     (letrec*
                      ((x-cnd7713
                        (begin
                          (write '(funapp 917 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7713
                        (begin
                          (write '(funapp 918 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 918 49))
                          (display "\n")
                          (floor x))))))
                   g7711)))
               ($cmp (begin (write '(funapp 920 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7714
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 926 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7715
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7716
                                 (begin
                                   (write '(funapp 934 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7716
                                 (begin
                                   (write '(funapp 935 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7717
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7718
                                       (begin
                                         (write '(funapp 943 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7718
                                       (letrec*
                                        ((x-cnd7719
                                          (begin
                                            (write '(funapp 946 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7719
                                          (begin
                                            (write '(funapp 947 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7720
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7721
                                             (begin
                                               (write '(funapp 956 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7721
                                             (letrec*
                                              ((x-cnd7722
                                                (begin
                                                  (write '(funapp 959 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7722
                                                (letrec*
                                                 ((x-cnd7723
                                                   (letrec*
                                                    ((x7725
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7724
                                                      (begin
                                                        (write
                                                         '(funapp 965 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 966 53))
                                                      (display "\n")
                                                      (equal? x7725 x7724)))))
                                                 (if x-cnd7723
                                                   (letrec*
                                                    ((x7727
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7726
                                                      (begin
                                                        (write
                                                         '(funapp 970 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 971 53))
                                                      (display "\n")
                                                      (equal? x7727 x7726)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7728
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7729
                                                (begin
                                                  (write '(funapp 980 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7729
                                                (letrec*
                                                 ((x-cnd7730
                                                   (begin
                                                     (write '(funapp 983 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7730
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 986 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7731
                                                       (letrec*
                                                        ((x-cnd7732
                                                          (letrec*
                                                           ((x7733
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
                                                             (= x7733 n)))))
                                                        (if x-cnd7732
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7734
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
                                                                    ((g7735
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7736
                                                                           (letrec*
                                                                            ((x7738
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
                                                                             (x7737
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
                                                                               x7738
                                                                               x7737)))))
                                                                         (if x-cnd7736
                                                                           (letrec*
                                                                            ((x7739
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
                                                                               x7739)))
                                                                           #f)))))
                                                                    g7735))))
                                                                g7734))))
                                                           (letrec*
                                                            ((g7740
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1035
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7740))
                                                          #f))))
                                                     g7731))
                                                   #f))
                                                #f)))))
                                         g7728)))))
                                   g7720)))))
                             g7717)))))
                       g7715))))
                   g7714)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((x7742
                        (letrec*
                         ((x7743
                           (letrec*
                            ((x7744
                              (begin
                                (write '(funapp 1053 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1053 61))
                              (display "\n")
                              (car x7744)))))
                         (begin
                           (write '(funapp 1054 26))
                           (display "\n")
                           (car x7743)))))
                      (begin
                        (write '(funapp 1055 23))
                        (display "\n")
                        (cdr x7742)))))
                   g7741)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7746
                        (letrec*
                         ((x7747
                           (letrec*
                            ((x7748
                              (begin
                                (write '(funapp 1064 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1064 61))
                              (display "\n")
                              (cdr x7748)))))
                         (begin
                           (write '(funapp 1065 26))
                           (display "\n")
                           (car x7747)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (car x7746)))))
                   g7745)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7749
                     (begin
                       (write '(funapp 1068 53))
                       (display "\n")
                       (eq? x y))))
                   g7749)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1073 60))
                        (display "\n")
                        (assert x7753))))
                    (g7751
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 1075 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1075 59))
                        (display "\n")
                        (assert x7754))))
                    (g7752
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
                       ((g7755
                         (begin
                           (write '(funapp 1081 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7756 res))
                       g7756))))
                   g7752)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7757
                     (begin
                       (write '(funapp 1084 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1084 57))
                          (display "\n")
                          '())))))
                   g7757)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7761))))
                    (g7759
                     (letrec*
                      ((x7762
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7762))))
                    (g7760
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1092 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7763
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1094 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7763))))
                   g7760)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7765
                        (letrec*
                         ((x7766
                           (begin
                             (write '(funapp 1102 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1102 58))
                           (display "\n")
                           (car x7766)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (cdr x7765)))))
                   g7764)))
               (cdaddr
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
                                (write '(funapp 1112 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1112 61))
                              (display "\n")
                              (cdr x7770)))))
                         (begin
                           (write '(funapp 1113 26))
                           (display "\n")
                           (car x7769)))))
                      (begin
                        (write '(funapp 1114 23))
                        (display "\n")
                        (cdr x7768)))))
                   g7767)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7772
                        (letrec*
                         ((x7773
                           (begin
                             (write '(funapp 1122 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1122 58))
                           (display "\n")
                           (cdr x7773)))))
                      (begin
                        (write '(funapp 1123 23))
                        (display "\n")
                        (car x7772)))))
                   g7771)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7775
                        (letrec*
                         ((x7776
                           (begin
                             (write '(funapp 1130 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1130 58))
                           (display "\n")
                           (car x7776)))))
                      (begin
                        (write '(funapp 1131 23))
                        (display "\n")
                        (car x7775)))))
                   g7774)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x7780))))
                    (g7778
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1137 58))
                        (display "\n")
                        (assert x7781))))
                    (g7779
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1138 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1138 66))
                        (display "\n")
                        (not x7782)))))
                   g7779)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1148 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1148 61))
                              (display "\n")
                              (car x7786)))))
                         (begin
                           (write '(funapp 1149 26))
                           (display "\n")
                           (car x7785)))))
                      (begin
                        (write '(funapp 1150 23))
                        (display "\n")
                        (car x7784)))))
                   g7783)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1155 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1155 59))
                        (display "\n")
                        (assert x7789))))
                    (g7788
                     (begin (write '(funapp 1156 28)) (display "\n") (< x 0))))
                   g7788)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7790
                     (begin
                       (write '(funapp 1158 53))
                       (display "\n")
                       (memq e l))))
                   g7790)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7792
                        (letrec*
                         ((x7793
                           (begin
                             (write '(funapp 1164 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1164 58))
                           (display "\n")
                           (car x7793)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (car x7792)))))
                   g7791)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7794
                     (begin (write '(funapp 1167 51)) (display "\n") '())))
                   g7794)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1171 57))
                        (display "\n")
                        (assert x7797))))
                    (g7796
                     (letrec*
                      ((x-cnd7798
                        (begin
                          (write '(funapp 1174 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7798
                        (begin (write '(funapp 1176 24)) (display "\n") '())
                        (letrec*
                         ((x7801
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (reverse x7802))))
                          (x7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 1179 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1179 61))
                              (display "\n")
                              (list x7800)))))
                         (begin
                           (write '(funapp 1180 26))
                           (display "\n")
                           (append x7801 x7799)))))))
                   g7796)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7804
                        (letrec*
                         ((x7805
                           (letrec*
                            ((x7806
                              (begin
                                (write '(funapp 1189 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1189 61))
                              (display "\n")
                              (car x7806)))))
                         (begin
                           (write '(funapp 1190 26))
                           (display "\n")
                           (car x7805)))))
                      (begin
                        (write '(funapp 1191 23))
                        (display "\n")
                        (car x7804)))))
                   g7803)))
               (cddadr
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
                                (write '(funapp 1200 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1200 61))
                              (display "\n")
                              (car x7810)))))
                         (begin
                           (write '(funapp 1201 26))
                           (display "\n")
                           (cdr x7809)))))
                      (begin
                        (write '(funapp 1202 23))
                        (display "\n")
                        (cdr x7808)))))
                   g7807)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1207 59))
                        (display "\n")
                        (assert x7813))))
                    (g7812
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1208 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1208 60))
                        (display "\n")
                        (= 1 x7814)))))
                   g7812)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((x7816
                        (letrec*
                         ((x7817
                           (letrec*
                            ((x7818
                              (begin
                                (write '(funapp 1217 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1217 61))
                              (display "\n")
                              (cdr x7818)))))
                         (begin
                           (write '(funapp 1218 26))
                           (display "\n")
                           (car x7817)))))
                      (begin
                        (write '(funapp 1219 23))
                        (display "\n")
                        (car x7816)))))
                   g7815)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1225 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1225 59))
                        (display "\n")
                        (assert x7822))))
                    (g7820
                     (letrec*
                      ((x7823
                        (begin
                          (write '(funapp 1226 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1226 60))
                        (display "\n")
                        (assert x7823))))
                    (g7821
                     (letrec*
                      ((x-cnd7824
                        (begin
                          (write '(funapp 1229 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7824
                        (letrec*
                         ((g7825
                           (begin
                             (write '(funapp 1231 42))
                             (display "\n")
                             (proc))))
                         g7825)
                        (letrec*
                         ((x-cnd7826
                           (letrec*
                            ((x7827
                              (begin
                                (write '(funapp 1234 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1234 58))
                              (display "\n")
                              (null? x7827)))))
                         (if x-cnd7826
                           (letrec*
                            ((g7828
                              (letrec*
                               ((x7829
                                 (begin
                                   (write '(funapp 1238 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1238 61))
                                 (display "\n")
                                 (proc x7829)))))
                            g7828)
                           (letrec*
                            ((x-cnd7830
                              (letrec*
                               ((x7831
                                 (begin
                                   (write '(funapp 1242 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1242 62))
                                 (display "\n")
                                 (null? x7831)))))
                            (if x-cnd7830
                              (letrec*
                               ((g7832
                                 (letrec*
                                  ((x7834
                                    (begin
                                      (write '(funapp 1247 43))
                                      (display "\n")
                                      (car args)))
                                   (x7833
                                    (begin
                                      (write '(funapp 1247 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1248 35))
                                    (display "\n")
                                    (proc x7834 x7833)))))
                               g7832)
                              (letrec*
                               ((x-cnd7835
                                 (letrec*
                                  ((x7836
                                    (begin
                                      (write '(funapp 1253 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1254 35))
                                    (display "\n")
                                    (null? x7836)))))
                               (if x-cnd7835
                                 (letrec*
                                  ((g7837
                                    (letrec*
                                     ((x7840
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (car args)))
                                      (x7839
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7838
                                       (begin
                                         (write '(funapp 1261 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1262 38))
                                       (display "\n")
                                       (proc x7840 x7839 x7838)))))
                                  g7837)
                                 (letrec*
                                  ((x-cnd7841
                                    (letrec*
                                     ((x7842
                                       (begin
                                         (write '(funapp 1267 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1268 38))
                                       (display "\n")
                                       (null? x7842)))))
                                  (if x-cnd7841
                                    (letrec*
                                     ((g7843
                                       (letrec*
                                        ((x7847
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (car args)))
                                         (x7846
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7845
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7844
                                          (begin
                                            (write '(funapp 1276 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1277 41))
                                          (display "\n")
                                          (proc x7847 x7846 x7845 x7844)))))
                                     g7843)
                                    (letrec*
                                     ((x-cnd7848
                                       (letrec*
                                        ((x7849
                                          (letrec*
                                           ((x7850
                                             (begin
                                               (write '(funapp 1284 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1285 44))
                                             (display "\n")
                                             (cdr x7850)))))
                                        (begin
                                          (write '(funapp 1286 41))
                                          (display "\n")
                                          (null? x7849)))))
                                     (if x-cnd7848
                                       (letrec*
                                        ((g7851
                                          (letrec*
                                           ((x7857
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (car args)))
                                            (x7856
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7855
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7854
                                             (begin
                                               (write '(funapp 1294 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7852
                                             (letrec*
                                              ((x7853
                                                (begin
                                                  (write '(funapp 1297 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (car x7853)))))
                                           (begin
                                             (write '(funapp 1299 44))
                                             (display "\n")
                                             (proc
                                              x7857
                                              x7856
                                              x7855
                                              x7854
                                              x7852)))))
                                        g7851)
                                       (letrec*
                                        ((x-cnd7858
                                          (letrec*
                                           ((x7859
                                             (letrec*
                                              ((x7860
                                                (begin
                                                  (write '(funapp 1311 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1312 47))
                                                (display "\n")
                                                (cddr x7860)))))
                                           (begin
                                             (write '(funapp 1313 44))
                                             (display "\n")
                                             (null? x7859)))))
                                        (if x-cnd7858
                                          (letrec*
                                           ((g7861
                                             (letrec*
                                              ((x7869
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7868
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7867
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7866
                                                (begin
                                                  (write '(funapp 1321 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7864
                                                (letrec*
                                                 ((x7865
                                                   (begin
                                                     (write '(funapp 1324 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1325 50))
                                                   (display "\n")
                                                   (car x7865))))
                                               (x7862
                                                (letrec*
                                                 ((x7863
                                                   (begin
                                                     (write '(funapp 1328 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (cadr x7863)))))
                                              (begin
                                                (write '(funapp 1330 47))
                                                (display "\n")
                                                (proc
                                                 x7869
                                                 x7868
                                                 x7867
                                                 x7866
                                                 x7864
                                                 x7862)))))
                                           g7861)
                                          (letrec*
                                           ((x-cnd7870
                                             (letrec*
                                              ((x7871
                                                (letrec*
                                                 ((x7872
                                                   (begin
                                                     (write '(funapp 1343 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1344 50))
                                                   (display "\n")
                                                   (cdddr x7872)))))
                                              (begin
                                                (write '(funapp 1345 47))
                                                (display "\n")
                                                (null? x7871)))))
                                           (if x-cnd7870
                                             (letrec*
                                              ((g7873
                                                (letrec*
                                                 ((x7883
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7882
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7881
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7880
                                                   (begin
                                                     (write '(funapp 1353 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7878
                                                   (letrec*
                                                    ((x7879
                                                      (begin
                                                        (write
                                                         '(funapp 1356 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1357 53))
                                                      (display "\n")
                                                      (car x7879))))
                                                  (x7876
                                                   (letrec*
                                                    ((x7877
                                                      (begin
                                                        (write
                                                         '(funapp 1360 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1361 53))
                                                      (display "\n")
                                                      (cadr x7877))))
                                                  (x7874
                                                   (letrec*
                                                    ((x7875
                                                      (begin
                                                        (write
                                                         '(funapp 1364 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1365 53))
                                                      (display "\n")
                                                      (caddr x7875)))))
                                                 (begin
                                                   (write '(funapp 1366 50))
                                                   (display "\n")
                                                   (proc
                                                    x7883
                                                    x7882
                                                    x7881
                                                    x7880
                                                    x7878
                                                    x7876
                                                    x7874)))))
                                              g7873)
                                             (letrec*
                                              ((g7884
                                                (begin
                                                  (write '(funapp 1377 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7884)))))))))))))))))))
                   g7821)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7887
                        (begin
                          (write '(funapp 1383 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1383 57))
                        (display "\n")
                        (assert x7887))))
                    (g7886
                     (letrec*
                      ((x-cnd7888
                        (begin
                          (write '(funapp 1386 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7888
                        #f
                        (letrec*
                         ((x-cnd7889
                           (letrec*
                            ((x7890
                              (begin
                                (write '(funapp 1391 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1391 55))
                              (display "\n")
                              (equal? x7890 e)))))
                         (if x-cnd7889
                           l
                           (letrec*
                            ((x7891
                              (begin
                                (write '(funapp 1394 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1394 55))
                              (display "\n")
                              (member e x7891)))))))))
                   g7886)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x7893
                        (letrec*
                         ((x7894
                           (letrec*
                            ((x7895
                              (begin
                                (write '(funapp 1403 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1403 61))
                              (display "\n")
                              (cdr x7895)))))
                         (begin
                           (write '(funapp 1404 26))
                           (display "\n")
                           (cdr x7894)))))
                      (begin
                        (write '(funapp 1405 23))
                        (display "\n")
                        (cdr x7893)))))
                   g7892)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x7897
                        (letrec*
                         ((x7898
                           (letrec*
                            ((x7899
                              (begin
                                (write '(funapp 1414 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1414 61))
                              (display "\n")
                              (cdr x7899)))))
                         (begin
                           (write '(funapp 1415 26))
                           (display "\n")
                           (cdr x7898)))))
                      (begin
                        (write '(funapp 1416 23))
                        (display "\n")
                        (car x7897)))))
                   g7896)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7900
                     (begin
                       (write '(funapp 1418 53))
                       (display "\n")
                       (random 42))))
                   g7900)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x7903
                        (begin
                          (write '(funapp 1422 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1422 59))
                        (display "\n")
                        (assert x7903))))
                    (g7902
                     (begin (write '(funapp 1423 28)) (display "\n") (= x 0))))
                   g7902)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1430 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7905
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1432 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7905))))
                   g7904)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((x7907
                        (begin
                          (write '(funapp 1438 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1438 55))
                        (display "\n")
                        (car x7907)))))
                   g7906)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7909
                           (begin
                             (write '(funapp 1448 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7909
                           (letrec*
                            ((x7910
                              (begin
                                (write '(funapp 1450 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1450 55))
                              (display "\n")
                              (list? x7910)))
                           #f))))
                      (letrec*
                       ((g7911
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1453 52))
                             (display "\n")
                             (null? l)))))
                       g7911))))
                   g7908)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7913
                        (letrec*
                         ((x7914
                           (letrec*
                            ((x7915
                              (begin
                                (write '(funapp 1463 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1463 61))
                              (display "\n")
                              (car x7915)))))
                         (begin
                           (write '(funapp 1464 26))
                           (display "\n")
                           (cdr x7914)))))
                      (begin
                        (write '(funapp 1465 23))
                        (display "\n")
                        (cdr x7913)))))
                   g7912)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x-cnd7917
                        (letrec*
                         ((x7918 #\0))
                         (begin
                           (write '(funapp 1472 58))
                           (display "\n")
                           (char<=? x7918 c)))))
                      (if x-cnd7917
                        (letrec*
                         ((x7919 #\9))
                         (begin
                           (write '(funapp 1474 48))
                           (display "\n")
                           (char<=? c x7919)))
                        #f))))
                   g7916)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7922
                        (begin
                          (write '(funapp 1481 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1481 57))
                        (display "\n")
                        (assert x7922))))
                    (g7921
                     (letrec*
                      ((x-cnd7923
                        (begin
                          (write '(funapp 1484 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7923
                        #f
                        (letrec*
                         ((x-cnd7924
                           (letrec*
                            ((x7925
                              (begin
                                (write '(funapp 1489 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1489 56))
                              (display "\n")
                              (eqv? x7925 k)))))
                         (if x-cnd7924
                           (begin
                             (write '(funapp 1491 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7926
                              (begin
                                (write '(funapp 1492 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1492 55))
                              (display "\n")
                              (assq k x7926)))))))))
                   g7921)))
               (not (lambda (x) (letrec* ((g7927 (if x #f #t))) g7927)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7928
                     (begin
                       (write '(funapp 1496 50))
                       (display "\n")
                       (append l1 l2))))
                   g7928)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1500 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1500 57))
                        (display "\n")
                        (assert x7931))))
                    (g7930
                     (letrec*
                      ((x-cnd7932
                        (begin
                          (write '(funapp 1503 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7932
                        #f
                        (letrec*
                         ((x-cnd7933
                           (letrec*
                            ((x7934
                              (begin
                                (write '(funapp 1508 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1508 55))
                              (display "\n")
                              (eq? x7934 e)))))
                         (if x-cnd7933
                           l
                           (letrec*
                            ((x7935
                              (begin
                                (write '(funapp 1511 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1511 55))
                              (display "\n")
                              (memq e x7935)))))))))
                   g7930)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7937
                        (letrec*
                         ((x7938
                           (letrec*
                            ((x7939
                              (begin
                                (write '(funapp 1520 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1520 61))
                              (display "\n")
                              (car x7939)))))
                         (begin
                           (write '(funapp 1521 26))
                           (display "\n")
                           (cdr x7938)))))
                      (begin
                        (write '(funapp 1522 23))
                        (display "\n")
                        (car x7937)))))
                   g7936)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1527 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1527 57))
                        (display "\n")
                        (assert x7942))))
                    (g7941
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7943
                             (letrec*
                              ((x-cnd7944
                                (begin
                                  (write '(funapp 1535 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7944
                                0
                                (letrec*
                                 ((x7945
                                   (letrec*
                                    ((x7946
                                      (begin
                                        (write '(funapp 1540 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1540 63))
                                      (display "\n")
                                      (rec x7946)))))
                                 (begin
                                   (write '(funapp 1541 34))
                                   (display "\n")
                                   (+ 1 x7945)))))))
                           g7943))))
                      (letrec*
                       ((g7947
                         (begin
                           (write '(funapp 1543 40))
                           (display "\n")
                           (rec l))))
                       g7947))))
                   g7941)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7951))))
                    (g7949
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7952))))
                    (g7950
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1552 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7953
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1554 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7953))))
                   g7950)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1560 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1560 65))
                        (display "\n")
                        (not x7955)))))
                   g7954)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7956
                     (letrec*
                      ((x7957
                        (letrec*
                         ((x7958
                           (begin
                             (write '(funapp 1567 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1567 58))
                           (display "\n")
                           (car x7958)))))
                      (begin
                        (write '(funapp 1568 23))
                        (display "\n")
                        (cdr x7957)))))
                   g7956)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1573 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1573 57))
                        (display "\n")
                        (assert x7961))))
                    (g7960
                     (letrec*
                      ((x-cnd7962
                        (begin
                          (write '(funapp 1576 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7962
                        #f
                        (letrec*
                         ((x-cnd7963
                           (letrec*
                            ((x7964
                              (begin
                                (write '(funapp 1581 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1581 56))
                              (display "\n")
                              (equal? x7964 k)))))
                         (if x-cnd7963
                           (begin
                             (write '(funapp 1583 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7965
                              (begin
                                (write '(funapp 1584 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1584 55))
                              (display "\n")
                              (assoc k x7965)))))))))
                   g7960)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1589 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1589 55))
                        (display "\n")
                        (car x7967)))))
                   g7966)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7971))))
                    (g7969
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1595 58))
                        (display "\n")
                        (assert x7972))))
                    (g7970
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1596 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1596 63))
                        (display "\n")
                        (not x7973)))))
                   g7970)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7974
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1603 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7975
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1605 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7975))))
                   g7974)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7976
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1611 62))
                        (display "\n")
                        (assert x7979))))
                    (g7977
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 1612 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1612 57))
                        (display "\n")
                        (assert x7980))))
                    (g7978
                     (letrec*
                      ((x-cnd7981
                        (begin
                          (write '(funapp 1615 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7981
                        #t
                        (letrec*
                         ((x-cnd7982
                           (begin
                             (write '(funapp 1619 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7982
                           (letrec*
                            ((g7983
                              (letrec*
                               ((x7985
                                 (begin
                                   (write '(funapp 1622 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1622 64))
                                 (display "\n")
                                 (f x7985))))
                             (g7984
                              (letrec*
                               ((x7986
                                 (begin
                                   (write '(funapp 1624 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1624 58))
                                 (display "\n")
                                 (for-each f x7986)))))
                            g7984)
                           (begin
                             (write '(funapp 1626 27))
                             (display "\n")
                             '())))))))
                   g7978)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x7989
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1631 59))
                        (display "\n")
                        (assert x7989))))
                    (g7988
                     (letrec*
                      ((x-cnd7990
                        (begin
                          (write '(funapp 1633 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7990
                        (begin
                          (write '(funapp 1633 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7988)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7991
                     (letrec*
                      ((x7994
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7994))))
                    (g7992
                     (letrec*
                      ((x7995
                        (begin
                          (write '(funapp 1639 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1639 58))
                        (display "\n")
                        (assert x7995))))
                    (g7993
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1642 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7996
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1644 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7996))))
                   g7993)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7997
                     (letrec*
                      ((x7998
                        (letrec*
                         ((x7999
                           (letrec*
                            ((x8000
                              (begin
                                (write '(funapp 1654 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1654 61))
                              (display "\n")
                              (cdr x8000)))))
                         (begin
                           (write '(funapp 1655 26))
                           (display "\n")
                           (cdr x7999)))))
                      (begin
                        (write '(funapp 1656 23))
                        (display "\n")
                        (car x7998)))))
                   g7997)))
               (newline (lambda () (letrec* ((g8001 #f)) g8001)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8002
                     (letrec*
                      ((x8004
                        (letrec*
                         ((x8005
                           (begin
                             (write '(funapp 1664 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1664 58))
                           (display "\n")
                           (abs x8005))))
                       (x8003
                        (begin
                          (write '(funapp 1665 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1666 23))
                        (display "\n")
                        (/ x8004 x8003)))))
                   g8002)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8006
                     (letrec*
                      ((x8010
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1672 57))
                        (display "\n")
                        (assert x8010))))
                    (g8007
                     (letrec*
                      ((x8011
                        (begin
                          (write '(funapp 1673 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1673 63))
                        (display "\n")
                        (assert x8011))))
                    (g8008
                     (letrec*
                      ((x8012
                        (letrec*
                         ((x8013
                           (begin
                             (write '(funapp 1676 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1676 61))
                           (display "\n")
                           (< index x8013)))))
                      (begin
                        (write '(funapp 1677 23))
                        (display "\n")
                        (assert x8012))))
                    (g8009
                     (letrec*
                      ((x-cnd8014
                        (begin
                          (write '(funapp 1680 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8014
                        (begin
                          (write '(funapp 1682 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8016
                           (begin
                             (write '(funapp 1684 34))
                             (display "\n")
                             (cdr l)))
                          (x8015
                           (begin
                             (write '(funapp 1684 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1685 26))
                           (display "\n")
                           (list-ref x8016 x8015)))))))
                   g8009)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8017
                     (letrec*
                      ((x-cnd8018
                        (begin
                          (write '(funapp 1692 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8018
                        a
                        (letrec*
                         ((x8019
                           (begin
                             (write '(funapp 1695 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1695 57))
                           (display "\n")
                           (gcd b x8019)))))))
                   g8017)))
               (mk-list
                (lambda (n x)
                  (letrec*
                   ((g8020
                     (letrec*
                      ((x-cnd8021
                        (begin
                          (write '(funapp 1702 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd8021
                        empty
                        (letrec*
                         ((x8022
                           (letrec*
                            ((x8023
                              (begin
                                (write '(funapp 1707 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1707 55))
                              (display "\n")
                              (mk-list x8023 x)))))
                         (begin
                           (write '(funapp 1708 26))
                           (display "\n")
                           (cons x x8022)))))))
                   g8020)))
               (mem
                (lambda (x xs)
                  (letrec*
                   ((g8024
                     (letrec*
                      ((x-cnd8025
                        (begin
                          (write '(funapp 1715 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8025
                        #f
                        (letrec*
                         ((val7263
                           (letrec*
                            ((x8026
                              (begin
                                (write '(funapp 1719 53))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1719 64))
                              (display "\n")
                              (= x x8026)))))
                         (letrec*
                          ((g8027
                            (if val7263
                              val7263
                              (letrec*
                               ((x8028
                                 (begin
                                   (write '(funapp 1724 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1724 59))
                                 (display "\n")
                                 (mem x x8028))))))
                          g8027))))))
                   g8024))))
              (letrec*
               ((g8029
                 (begin
                   (write '(funapp 1729 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1730 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((xj7404
                          (begin
                            (write '(funapp 1732 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1732 34))
                               (display "\n")
                               'module))))
                         (xk7405
                          (begin
                            (write '(funapp 1732 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1732 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8030
                           (begin
                             (write '(funapp 1735 24))
                             (display "\n")
                             ((lambda (j7408 k7409 f7410)
                                (letrec*
                                 ((g8031
                                   (lambda (g7406 g7407)
                                     (letrec*
                                      ((g8032
                                        (letrec*
                                         ((x7411
                                           (begin
                                             (write '(funapp 1742 44))
                                             (display "\n")
                                             (integer?/c j7408 k7409 g7406)))
                                          (x7412
                                           (begin
                                             (write '(funapp 1743 44))
                                             (display "\n")
                                             (integer?/c j7408 k7409 g7407))))
                                         (letrec*
                                          ((g8033
                                            (letrec*
                                             ((x8035
                                               (begin
                                                 (write '(funapp 1748 42))
                                                 (display "\n")
                                                 ((lambda (_ x)
                                                    (letrec*
                                                     ((g8036
                                                       (letrec*
                                                        ((x8041
                                                          (begin
                                                            (write
                                                             '(funapp 1752 57))
                                                            (display "\n")
                                                            (listof
                                                             integer?/c))))
                                                        (begin
                                                          (write
                                                           '(funapp 1753 49))
                                                          (display "\n")
                                                          (and/c
                                                           x8041
                                                           (lambda (g7413
                                                                    g7414
                                                                    g7415)
                                                             (letrec*
                                                              ((g8037
                                                                (letrec*
                                                                 ((x-cnd8038
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        1760
                                                                        58))
                                                                     (display
                                                                      "\n")
                                                                     ((lambda (l)
                                                                        (letrec*
                                                                         ((g8039
                                                                           (letrec*
                                                                            ((val7264
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1765
                                                                                   67))
                                                                                (display
                                                                                 "\n")
                                                                                (empty?
                                                                                 l))))
                                                                            (letrec*
                                                                             ((g8040
                                                                               (if val7264
                                                                                 val7264
                                                                                 (begin
                                                                                   (write
                                                                                    '(funapp
                                                                                      1770
                                                                                      70))
                                                                                   (display
                                                                                    "\n")
                                                                                   (member
                                                                                    x
                                                                                    l)))))
                                                                             g8040))))
                                                                         g8039))
                                                                      g7415))))
                                                                 (if x-cnd8038
                                                                   g7415
                                                                   (begin
                                                                     (write
                                                                      '(blame
                                                                        g7413
                                                                        1778
                                                                        57))
                                                                     (display
                                                                      "\n")
                                                                     (error
                                                                      (format
                                                                       "contract violation, blaming ~a~%"
                                                                       g7413)))))))
                                                              g8037)))))))
                                                     g8036))
                                                  x7411
                                                  x7412)))
                                              (x8034
                                               (begin
                                                 (write '(funapp 1793 48))
                                                 (display "\n")
                                                 (f7410 x7411 x7412))))
                                             (begin
                                               (write '(funapp 1794 40))
                                               (display "\n")
                                               (x8035 j7408 k7409 x8034)))))
                                          g8033))))
                                      g8032))))
                                 g8031))
                              xj7404
                              xk7405
                              mk-list))))
                         g8030))
                       (letrec*
                        ((x8044
                          (letrec*
                           ((xj7416
                             (begin
                               (write '(funapp 1805 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1805 37))
                                  (display "\n")
                                  'module))))
                            (xk7417
                             (begin
                               (write '(funapp 1805 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1805 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8045
                              (begin
                                (write '(funapp 1808 27))
                                (display "\n")
                                ((lambda (j7420 k7421 f7422)
                                   (letrec*
                                    ((g8046
                                      (lambda (g7418 g7419)
                                        (letrec*
                                         ((g8047
                                           (letrec*
                                            ((x8048
                                              (letrec*
                                               ((x8051
                                                 (begin
                                                   (write '(funapp 1818 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7420
                                                    k7421
                                                    g7418)))
                                                (x8049
                                                 (letrec*
                                                  ((x8050
                                                    (begin
                                                      (write '(funapp 1821 53))
                                                      (display "\n")
                                                      (listof integer?/c))))
                                                  (begin
                                                    (write '(funapp 1822 45))
                                                    (display "\n")
                                                    (x8050
                                                     j7420
                                                     k7421
                                                     g7419)))))
                                               (begin
                                                 (write '(funapp 1823 42))
                                                 (display "\n")
                                                 (f7422 x8051 x8049)))))
                                            (begin
                                              (write '(funapp 1824 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7420
                                               k7421
                                               x8048)))))
                                         g8047))))
                                    g8046))
                                 xj7416
                                 xk7417
                                 mem))))
                            g8045)))
                         (x8043 (input))
                         (x8042 (input)))
                        (begin
                          (write '(funapp 1833 21))
                          (display "\n")
                          (x8044 x8043 x8042)))))))))
               g8029))))
           g7451))))
       g7434)))
    g7433)))
