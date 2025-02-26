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
               (/
                (letrec*
                 ((xj7365
                   (begin (write '(funapp 548 26)) (display "\n") 'server))
                  (xk7366
                   (begin (write '(funapp 548 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7577
                    (begin
                      (write '(funapp 551 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7579
                            (lambda (g7367 g7368)
                              (letrec*
                               ((g7580
                                 (letrec*
                                  ((x7581
                                    (letrec*
                                     ((x7583
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7369 k7370 g7367)))
                                      (x7582
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 562 36))
                                       (display "\n")
                                       (f7371 x7583 x7582)))))
                                  (begin
                                    (write '(funapp 563 33))
                                    (display "\n")
                                    (number?/c j7369 k7370 x7581)))))
                               g7580))))
                          g7579))
                       xj7365
                       xk7366
                       (lambda (a b)
                         (letrec*
                          ((g7578
                            (begin
                              (write '(funapp 568 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7578))))))
                  g7577)))
               (car
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 572 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 572 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7584
                    (begin
                      (write '(funapp 575 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7586
                            (lambda (g7374)
                              (letrec*
                               ((g7587
                                 (letrec*
                                  ((x7588
                                    (letrec*
                                     ((x7589
                                       (begin
                                         (write '(funapp 584 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 585 36))
                                       (display "\n")
                                       (f7377 x7589)))))
                                  (begin
                                    (write '(funapp 586 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7588)))))
                               g7587))))
                          g7586))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7585
                            (begin
                              (write '(funapp 591 51))
                              (display "\n")
                              (orig-car p))))
                          g7585))))))
                  g7584)))
               (cdr
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7590
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7381 k7382 f7383)
                         (letrec*
                          ((g7592
                            (lambda (g7380)
                              (letrec*
                               ((g7593
                                 (letrec*
                                  ((x7594
                                    (letrec*
                                     ((x7595
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (pair?/c j7381 k7382 g7380))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7383 x7595)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (any/c j7381 k7382 x7594)))))
                               g7593))))
                          g7592))
                       xj7378
                       xk7379
                       (lambda (p)
                         (letrec*
                          ((g7591
                            (begin
                              (write '(funapp 614 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7591))))))
                  g7590)))
               (cons
                (letrec*
                 ((xj7384
                   (begin (write '(funapp 618 26)) (display "\n") 'server))
                  (xk7385
                   (begin (write '(funapp 618 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7596
                    (begin
                      (write '(funapp 621 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7598
                            (lambda (g7386 g7387)
                              (letrec*
                               ((g7599
                                 (letrec*
                                  ((x7600
                                    (letrec*
                                     ((x7602
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7388 k7389 g7386)))
                                      (x7601
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 632 36))
                                       (display "\n")
                                       (f7390 x7602 x7601)))))
                                  (begin
                                    (write '(funapp 633 33))
                                    (display "\n")
                                    (pair?/c j7388 k7389 x7600)))))
                               g7599))))
                          g7598))
                       xj7384
                       xk7385
                       (lambda (a b)
                         (letrec*
                          ((g7597
                            (begin
                              (write '(funapp 639 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7597))))))
                  g7596)))
               (vector-ref
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 643 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 643 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7603
                    (begin
                      (write '(funapp 646 21))
                      (display "\n")
                      ((lambda (j7394 k7395 f7396)
                         (letrec*
                          ((g7605
                            (lambda (g7393)
                              (letrec*
                               ((g7606
                                 (letrec*
                                  ((x7607
                                    (letrec*
                                     ((x7608
                                       (begin
                                         (write '(funapp 655 44))
                                         (display "\n")
                                         (vector?/c j7394 k7395 g7393))))
                                     (begin
                                       (write '(funapp 656 36))
                                       (display "\n")
                                       (f7396 x7608)))))
                                  (begin
                                    (write '(funapp 657 33))
                                    (display "\n")
                                    (integer?/c j7394 k7395 x7607)))))
                               g7606))))
                          g7605))
                       xj7391
                       xk7392
                       (lambda (v i)
                         (letrec*
                          ((g7604
                            (begin
                              (write '(funapp 663 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7604))))))
                  g7603)))
               (vector-set!
                (letrec*
                 ((xj7397
                   (begin (write '(funapp 667 26)) (display "\n") 'server))
                  (xk7398
                   (begin (write '(funapp 667 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7609
                    (begin
                      (write '(funapp 670 21))
                      (display "\n")
                      ((lambda (j7401 k7402 f7403)
                         (letrec*
                          ((g7611
                            (lambda (g7399 g7400)
                              (letrec*
                               ((g7612
                                 (letrec*
                                  ((x7613
                                    (letrec*
                                     ((x7615
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (vector?/c j7401 k7402 g7399)))
                                      (x7614
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (integer?/c j7401 k7402 g7400))))
                                     (begin
                                       (write '(funapp 681 36))
                                       (display "\n")
                                       (f7403 x7615 x7614)))))
                                  (begin
                                    (write '(funapp 682 33))
                                    (display "\n")
                                    (any/c j7401 k7402 x7613)))))
                               g7612))))
                          g7611))
                       xj7397
                       xk7398
                       (lambda (vec i v)
                         (letrec*
                          ((g7610
                            (begin
                              (write '(funapp 688 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7610))))))
                  g7609)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (letrec*
                         ((x7618
                           (begin
                             (write '(funapp 695 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 695 58))
                           (display "\n")
                           (cdr x7618)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7617)))))
                   g7616)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 702 62))
                        (display "\n")
                        (assert x7622))))
                    (g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 703 57))
                        (display "\n")
                        (assert x7623))))
                    (g7621
                     (letrec*
                      ((x-cnd7624
                        (begin
                          (write '(funapp 706 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7624
                        (begin (write '(funapp 708 24)) (display "\n") '())
                        (letrec*
                         ((x7627
                           (letrec*
                            ((x7628
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (f x7628))))
                          (x7625
                           (letrec*
                            ((x7626
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (map f x7626)))))
                         (begin
                           (write '(funapp 712 26))
                           (display "\n")
                           (cons x7627 x7625)))))))
                   g7621)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 717 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 717 55))
                        (display "\n")
                        (cdr x7630)))))
                   g7629)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7632
                        (letrec*
                         ((x7633
                           (letrec*
                            ((x7634
                              (begin
                                (write '(funapp 726 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 726 61))
                              (display "\n")
                              (car x7634)))))
                         (begin
                           (write '(funapp 727 26))
                           (display "\n")
                           (cdr x7633)))))
                      (begin
                        (write '(funapp 728 23))
                        (display "\n")
                        (car x7632)))))
                   g7631)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7636
                        (letrec*
                         ((x7637
                           (letrec*
                            ((x7638
                              (begin
                                (write '(funapp 737 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 737 61))
                              (display "\n")
                              (cdr x7638)))))
                         (begin
                           (write '(funapp 738 26))
                           (display "\n")
                           (car x7637)))))
                      (begin
                        (write '(funapp 739 23))
                        (display "\n")
                        (cdr x7636)))))
                   g7635)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 745 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 745 60))
                        (display "\n")
                        (assert x7642))))
                    (g7640
                     (letrec*
                      ((x7643
                        (begin
                          (write '(funapp 747 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 747 59))
                        (display "\n")
                        (assert x7643))))
                    (g7641
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
                       ((g7644
                         (begin
                           (write '(funapp 753 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7645 res))
                       g7645))))
                   g7641)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7647
                        (letrec*
                         ((x7648
                           (begin
                             (write '(funapp 761 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 761 58))
                           (display "\n")
                           (cdr x7648)))))
                      (begin
                        (write '(funapp 762 23))
                        (display "\n")
                        (car x7647)))))
                   g7646)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7650
                        (letrec*
                         ((x7651
                           (letrec*
                            ((x7652
                              (begin
                                (write '(funapp 771 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 771 61))
                              (display "\n")
                              (car x7652)))))
                         (begin
                           (write '(funapp 772 26))
                           (display "\n")
                           (car x7651)))))
                      (begin
                        (write '(funapp 773 23))
                        (display "\n")
                        (cdr x7650)))))
                   g7649)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 778 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 778 57))
                        (display "\n")
                        (assert x7655))))
                    (g7654
                     (letrec*
                      ((x-cnd7656
                        (begin
                          (write '(funapp 781 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7656
                        #f
                        (letrec*
                         ((x-cnd7657
                           (letrec*
                            ((x7658
                              (begin
                                (write '(funapp 786 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 786 56))
                              (display "\n")
                              (eq? x7658 k)))))
                         (if x-cnd7657
                           (begin
                             (write '(funapp 788 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7659
                              (begin
                                (write '(funapp 789 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 789 55))
                              (display "\n")
                              (assq k x7659)))))))))
                   g7654)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 794 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (= 0 x7661)))))
                   g7660)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 799 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 799 57))
                        (display "\n")
                        (assert x7664))))
                    (g7663
                     (letrec*
                      ((x-cnd7665
                        (begin
                          (write '(funapp 802 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7665
                        ""
                        (letrec*
                         ((x7668
                           (letrec*
                            ((x7669
                              (begin
                                (write '(funapp 807 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 807 55))
                              (display "\n")
                              (char->string x7669))))
                          (x7666
                           (letrec*
                            ((x7667
                              (begin
                                (write '(funapp 809 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 809 55))
                              (display "\n")
                              (list->string x7667)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (string-append x7668 x7666)))))))
                   g7663)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((x7673
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7673))))
                    (g7671
                     (letrec*
                      ((x7674
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7674))))
                    (g7672
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 819 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7675
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 821 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7675))))
                   g7672)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7676
                     (letrec*
                      ((x7677
                        (letrec*
                         ((x7678
                           (letrec*
                            ((x7679
                              (begin
                                (write '(funapp 831 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 831 61))
                              (display "\n")
                              (cdr x7679)))))
                         (begin
                           (write '(funapp 832 26))
                           (display "\n")
                           (cdr x7678)))))
                      (begin
                        (write '(funapp 833 23))
                        (display "\n")
                        (cdr x7677)))))
                   g7676)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x7683
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7683))))
                    (g7681
                     (letrec*
                      ((x7684
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7684))))
                    (g7682
                     (letrec*
                      ((x-cnd7685
                        (begin
                          (write '(funapp 842 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7685
                        x
                        (letrec*
                         ((x7687
                           (begin
                             (write '(funapp 846 34))
                             (display "\n")
                             (cdr x)))
                          (x7686
                           (begin
                             (write '(funapp 846 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 847 26))
                           (display "\n")
                           (list-tail x7687 x7686)))))))
                   g7682)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7688
                     (begin (write '(funapp 849 49)) (display "\n") '())))
                   g7688)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((x-cnd7690
                        (letrec*
                         ((x7691 #\a))
                         (begin
                           (write '(funapp 856 48))
                           (display "\n")
                           (char-ci>=? c x7691)))))
                      (if x-cnd7690
                        (letrec*
                         ((x7692 #\z))
                         (begin
                           (write '(funapp 858 48))
                           (display "\n")
                           (char-ci<=? c x7692)))
                        #f))))
                   g7689)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7694
                           (begin
                             (write '(funapp 867 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 867 62))
                           (display "\n")
                           (= x7694 9)))))
                      (letrec*
                       ((g7695
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7696
                                 (begin
                                   (write '(funapp 875 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 876 32))
                                 (display "\n")
                                 (= x7696 10)))))
                            (letrec*
                             ((g7697
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7698
                                    (begin
                                      (write '(funapp 882 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 883 35))
                                    (display "\n")
                                    (= x7698 32))))))
                             g7697)))))
                       g7695))))
                   g7693)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7699
                     (letrec*
                      ((x7700
                        (letrec*
                         ((x7701
                           (begin
                             (write '(funapp 892 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 892 58))
                           (display "\n")
                           (cdr x7701)))))
                      (begin
                        (write '(funapp 893 23))
                        (display "\n")
                        (cdr x7700)))))
                   g7699)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7702
                     (letrec*
                      ((x7704
                        (begin
                          (write '(funapp 898 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 898 59))
                        (display "\n")
                        (assert x7704))))
                    (g7703
                     (begin (write '(funapp 899 28)) (display "\n") (> x 0))))
                   g7703)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7705
                     (begin
                       (write '(funapp 901 59))
                       (display "\n")
                       (bool-top))))
                   g7705)))
               ($pc (begin (write '(funapp 902 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7706 #f)) g7706)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7707
                     (letrec*
                      ((x7708
                        (begin
                          (write '(funapp 908 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 908 55))
                        (display "\n")
                        (cdr x7708)))))
                   g7707)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7709
                     (letrec*
                      ((x7711
                        (begin
                          (write '(funapp 913 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 913 59))
                        (display "\n")
                        (assert x7711))))
                    (g7710
                     (letrec*
                      ((x-cnd7712
                        (begin
                          (write '(funapp 916 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7712
                        (begin
                          (write '(funapp 917 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 917 49))
                          (display "\n")
                          (floor x))))))
                   g7710)))
               ($cmp (begin (write '(funapp 919 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7713
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 925 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7714
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7715
                                 (begin
                                   (write '(funapp 933 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7715
                                 (begin
                                   (write '(funapp 934 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7716
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7717
                                       (begin
                                         (write '(funapp 942 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7717
                                       (letrec*
                                        ((x-cnd7718
                                          (begin
                                            (write '(funapp 945 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7718
                                          (begin
                                            (write '(funapp 946 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7719
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7720
                                             (begin
                                               (write '(funapp 955 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7720
                                             (letrec*
                                              ((x-cnd7721
                                                (begin
                                                  (write '(funapp 958 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7721
                                                (letrec*
                                                 ((x-cnd7722
                                                   (letrec*
                                                    ((x7724
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7723
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 965 53))
                                                      (display "\n")
                                                      (equal? x7724 x7723)))))
                                                 (if x-cnd7722
                                                   (letrec*
                                                    ((x7726
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7725
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 970 53))
                                                      (display "\n")
                                                      (equal? x7726 x7725)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7727
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7728
                                                (begin
                                                  (write '(funapp 979 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7728
                                                (letrec*
                                                 ((x-cnd7729
                                                   (begin
                                                     (write '(funapp 982 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7729
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 985 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7730
                                                       (letrec*
                                                        ((x-cnd7731
                                                          (letrec*
                                                           ((x7732
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
                                                             (= x7732 n)))))
                                                        (if x-cnd7731
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7733
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
                                                                    ((g7734
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7735
                                                                           (letrec*
                                                                            ((x7737
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
                                                                             (x7736
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
                                                                               x7737
                                                                               x7736)))))
                                                                         (if x-cnd7735
                                                                           (letrec*
                                                                            ((x7738
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
                                                                               x7738)))
                                                                           #f)))))
                                                                    g7734))))
                                                                g7733))))
                                                           (letrec*
                                                            ((g7739
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1034
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7739))
                                                          #f))))
                                                     g7730))
                                                   #f))
                                                #f)))))
                                         g7727)))))
                                   g7719)))))
                             g7716)))))
                       g7714))))
                   g7713)))
               (cdaaar
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
                                (write '(funapp 1052 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1052 61))
                              (display "\n")
                              (car x7743)))))
                         (begin
                           (write '(funapp 1053 26))
                           (display "\n")
                           (car x7742)))))
                      (begin
                        (write '(funapp 1054 23))
                        (display "\n")
                        (cdr x7741)))))
                   g7740)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7745
                        (letrec*
                         ((x7746
                           (letrec*
                            ((x7747
                              (begin
                                (write '(funapp 1063 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1063 61))
                              (display "\n")
                              (cdr x7747)))))
                         (begin
                           (write '(funapp 1064 26))
                           (display "\n")
                           (car x7746)))))
                      (begin
                        (write '(funapp 1065 23))
                        (display "\n")
                        (car x7745)))))
                   g7744)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7748
                     (begin
                       (write '(funapp 1067 53))
                       (display "\n")
                       (eq? x y))))
                   g7748)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1072 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1072 60))
                        (display "\n")
                        (assert x7752))))
                    (g7750
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1074 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1074 59))
                        (display "\n")
                        (assert x7753))))
                    (g7751
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
                       ((g7754
                         (begin
                           (write '(funapp 1080 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7755 res))
                       g7755))))
                   g7751)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7756
                     (begin
                       (write '(funapp 1083 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1083 57))
                          (display "\n")
                          '())))))
                   g7756)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7760
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7760))))
                    (g7758
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7761))))
                    (g7759
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1091 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7762
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1093 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7762))))
                   g7759)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7764
                        (letrec*
                         ((x7765
                           (begin
                             (write '(funapp 1101 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1101 58))
                           (display "\n")
                           (car x7765)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7764)))))
                   g7763)))
               (cdaddr
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7769)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7768)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (cdr x7767)))))
                   g7766)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (letrec*
                         ((x7772
                           (begin
                             (write '(funapp 1121 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1121 58))
                           (display "\n")
                           (cdr x7772)))))
                      (begin
                        (write '(funapp 1122 23))
                        (display "\n")
                        (car x7771)))))
                   g7770)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7774
                        (letrec*
                         ((x7775
                           (begin
                             (write '(funapp 1129 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1129 58))
                           (display "\n")
                           (car x7775)))))
                      (begin
                        (write '(funapp 1130 23))
                        (display "\n")
                        (car x7774)))))
                   g7773)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x7779))))
                    (g7777
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c2))))
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
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1137 66))
                        (display "\n")
                        (not x7781)))))
                   g7778)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1147 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1147 61))
                              (display "\n")
                              (car x7785)))))
                         (begin
                           (write '(funapp 1148 26))
                           (display "\n")
                           (car x7784)))))
                      (begin
                        (write '(funapp 1149 23))
                        (display "\n")
                        (car x7783)))))
                   g7782)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1154 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1154 59))
                        (display "\n")
                        (assert x7788))))
                    (g7787
                     (begin (write '(funapp 1155 28)) (display "\n") (< x 0))))
                   g7787)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7789
                     (begin
                       (write '(funapp 1157 53))
                       (display "\n")
                       (memq e l))))
                   g7789)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7791
                        (letrec*
                         ((x7792
                           (begin
                             (write '(funapp 1163 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1163 58))
                           (display "\n")
                           (car x7792)))))
                      (begin
                        (write '(funapp 1164 23))
                        (display "\n")
                        (car x7791)))))
                   g7790)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7793
                     (begin (write '(funapp 1166 51)) (display "\n") '())))
                   g7793)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1170 57))
                        (display "\n")
                        (assert x7796))))
                    (g7795
                     (letrec*
                      ((x-cnd7797
                        (begin
                          (write '(funapp 1173 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7797
                        (begin (write '(funapp 1175 24)) (display "\n") '())
                        (letrec*
                         ((x7800
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (reverse x7801))))
                          (x7798
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (list x7799)))))
                         (begin
                           (write '(funapp 1179 26))
                           (display "\n")
                           (append x7800 x7798)))))))
                   g7795)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7803
                        (letrec*
                         ((x7804
                           (letrec*
                            ((x7805
                              (begin
                                (write '(funapp 1188 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1188 61))
                              (display "\n")
                              (car x7805)))))
                         (begin
                           (write '(funapp 1189 26))
                           (display "\n")
                           (car x7804)))))
                      (begin
                        (write '(funapp 1190 23))
                        (display "\n")
                        (car x7803)))))
                   g7802)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7807
                        (letrec*
                         ((x7808
                           (letrec*
                            ((x7809
                              (begin
                                (write '(funapp 1199 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1199 61))
                              (display "\n")
                              (car x7809)))))
                         (begin
                           (write '(funapp 1200 26))
                           (display "\n")
                           (cdr x7808)))))
                      (begin
                        (write '(funapp 1201 23))
                        (display "\n")
                        (cdr x7807)))))
                   g7806)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1206 59))
                        (display "\n")
                        (assert x7812))))
                    (g7811
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1207 60))
                        (display "\n")
                        (= 1 x7813)))))
                   g7811)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((x7815
                        (letrec*
                         ((x7816
                           (letrec*
                            ((x7817
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (cdr x7817)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (car x7816)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7815)))))
                   g7814)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7818
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 1224 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1224 59))
                        (display "\n")
                        (assert x7821))))
                    (g7819
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1225 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1225 60))
                        (display "\n")
                        (assert x7822))))
                    (g7820
                     (letrec*
                      ((x-cnd7823
                        (begin
                          (write '(funapp 1228 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7823
                        (letrec*
                         ((g7824
                           (begin
                             (write '(funapp 1230 42))
                             (display "\n")
                             (proc))))
                         g7824)
                        (letrec*
                         ((x-cnd7825
                           (letrec*
                            ((x7826
                              (begin
                                (write '(funapp 1233 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1233 58))
                              (display "\n")
                              (null? x7826)))))
                         (if x-cnd7825
                           (letrec*
                            ((g7827
                              (letrec*
                               ((x7828
                                 (begin
                                   (write '(funapp 1237 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1237 61))
                                 (display "\n")
                                 (proc x7828)))))
                            g7827)
                           (letrec*
                            ((x-cnd7829
                              (letrec*
                               ((x7830
                                 (begin
                                   (write '(funapp 1241 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1241 62))
                                 (display "\n")
                                 (null? x7830)))))
                            (if x-cnd7829
                              (letrec*
                               ((g7831
                                 (letrec*
                                  ((x7833
                                    (begin
                                      (write '(funapp 1246 43))
                                      (display "\n")
                                      (car args)))
                                   (x7832
                                    (begin
                                      (write '(funapp 1246 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1247 35))
                                    (display "\n")
                                    (proc x7833 x7832)))))
                               g7831)
                              (letrec*
                               ((x-cnd7834
                                 (letrec*
                                  ((x7835
                                    (begin
                                      (write '(funapp 1252 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1253 35))
                                    (display "\n")
                                    (null? x7835)))))
                               (if x-cnd7834
                                 (letrec*
                                  ((g7836
                                    (letrec*
                                     ((x7839
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (car args)))
                                      (x7838
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7837
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1261 38))
                                       (display "\n")
                                       (proc x7839 x7838 x7837)))))
                                  g7836)
                                 (letrec*
                                  ((x-cnd7840
                                    (letrec*
                                     ((x7841
                                       (begin
                                         (write '(funapp 1266 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1267 38))
                                       (display "\n")
                                       (null? x7841)))))
                                  (if x-cnd7840
                                    (letrec*
                                     ((g7842
                                       (letrec*
                                        ((x7846
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (car args)))
                                         (x7845
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7844
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7843
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1276 41))
                                          (display "\n")
                                          (proc x7846 x7845 x7844 x7843)))))
                                     g7842)
                                    (letrec*
                                     ((x-cnd7847
                                       (letrec*
                                        ((x7848
                                          (letrec*
                                           ((x7849
                                             (begin
                                               (write '(funapp 1283 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1284 44))
                                             (display "\n")
                                             (cdr x7849)))))
                                        (begin
                                          (write '(funapp 1285 41))
                                          (display "\n")
                                          (null? x7848)))))
                                     (if x-cnd7847
                                       (letrec*
                                        ((g7850
                                          (letrec*
                                           ((x7856
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (car args)))
                                            (x7855
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7854
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7853
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7851
                                             (letrec*
                                              ((x7852
                                                (begin
                                                  (write '(funapp 1296 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1297 47))
                                                (display "\n")
                                                (car x7852)))))
                                           (begin
                                             (write '(funapp 1298 44))
                                             (display "\n")
                                             (proc
                                              x7856
                                              x7855
                                              x7854
                                              x7853
                                              x7851)))))
                                        g7850)
                                       (letrec*
                                        ((x-cnd7857
                                          (letrec*
                                           ((x7858
                                             (letrec*
                                              ((x7859
                                                (begin
                                                  (write '(funapp 1310 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1311 47))
                                                (display "\n")
                                                (cddr x7859)))))
                                           (begin
                                             (write '(funapp 1312 44))
                                             (display "\n")
                                             (null? x7858)))))
                                        (if x-cnd7857
                                          (letrec*
                                           ((g7860
                                             (letrec*
                                              ((x7868
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7867
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7866
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7865
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7863
                                                (letrec*
                                                 ((x7864
                                                   (begin
                                                     (write '(funapp 1323 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1324 50))
                                                   (display "\n")
                                                   (car x7864))))
                                               (x7861
                                                (letrec*
                                                 ((x7862
                                                   (begin
                                                     (write '(funapp 1327 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1328 50))
                                                   (display "\n")
                                                   (cadr x7862)))))
                                              (begin
                                                (write '(funapp 1329 47))
                                                (display "\n")
                                                (proc
                                                 x7868
                                                 x7867
                                                 x7866
                                                 x7865
                                                 x7863
                                                 x7861)))))
                                           g7860)
                                          (letrec*
                                           ((x-cnd7869
                                             (letrec*
                                              ((x7870
                                                (letrec*
                                                 ((x7871
                                                   (begin
                                                     (write '(funapp 1342 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1343 50))
                                                   (display "\n")
                                                   (cdddr x7871)))))
                                              (begin
                                                (write '(funapp 1344 47))
                                                (display "\n")
                                                (null? x7870)))))
                                           (if x-cnd7869
                                             (letrec*
                                              ((g7872
                                                (letrec*
                                                 ((x7882
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7881
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7880
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7879
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7877
                                                   (letrec*
                                                    ((x7878
                                                      (begin
                                                        (write
                                                         '(funapp 1355 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1356 53))
                                                      (display "\n")
                                                      (car x7878))))
                                                  (x7875
                                                   (letrec*
                                                    ((x7876
                                                      (begin
                                                        (write
                                                         '(funapp 1359 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1360 53))
                                                      (display "\n")
                                                      (cadr x7876))))
                                                  (x7873
                                                   (letrec*
                                                    ((x7874
                                                      (begin
                                                        (write
                                                         '(funapp 1363 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1364 53))
                                                      (display "\n")
                                                      (caddr x7874)))))
                                                 (begin
                                                   (write '(funapp 1365 50))
                                                   (display "\n")
                                                   (proc
                                                    x7882
                                                    x7881
                                                    x7880
                                                    x7879
                                                    x7877
                                                    x7875
                                                    x7873)))))
                                              g7872)
                                             (letrec*
                                              ((g7883
                                                (begin
                                                  (write '(funapp 1376 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7883)))))))))))))))))))
                   g7820)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 1382 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1382 57))
                        (display "\n")
                        (assert x7886))))
                    (g7885
                     (letrec*
                      ((x-cnd7887
                        (begin
                          (write '(funapp 1385 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7887
                        #f
                        (letrec*
                         ((x-cnd7888
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 1390 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1390 55))
                              (display "\n")
                              (equal? x7889 e)))))
                         (if x-cnd7888
                           l
                           (letrec*
                            ((x7890
                              (begin
                                (write '(funapp 1393 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1393 55))
                              (display "\n")
                              (member e x7890)))))))))
                   g7885)))
               (cddddr
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
                                (write '(funapp 1402 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1402 61))
                              (display "\n")
                              (cdr x7894)))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (cdr x7893)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (cdr x7892)))))
                   g7891)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7896
                        (letrec*
                         ((x7897
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 1413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1413 61))
                              (display "\n")
                              (cdr x7898)))))
                         (begin
                           (write '(funapp 1414 26))
                           (display "\n")
                           (cdr x7897)))))
                      (begin
                        (write '(funapp 1415 23))
                        (display "\n")
                        (car x7896)))))
                   g7895)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7899
                     (begin
                       (write '(funapp 1417 53))
                       (display "\n")
                       (random 42))))
                   g7899)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x7902
                        (begin
                          (write '(funapp 1421 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1421 59))
                        (display "\n")
                        (assert x7902))))
                    (g7901
                     (begin (write '(funapp 1422 28)) (display "\n") (= x 0))))
                   g7901)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1429 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7904
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1431 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7904))))
                   g7903)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 1437 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1437 55))
                        (display "\n")
                        (car x7906)))))
                   g7905)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7908
                           (begin
                             (write '(funapp 1447 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7908
                           (letrec*
                            ((x7909
                              (begin
                                (write '(funapp 1449 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1449 55))
                              (display "\n")
                              (list? x7909)))
                           #f))))
                      (letrec*
                       ((g7910
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1452 52))
                             (display "\n")
                             (null? l)))))
                       g7910))))
                   g7907)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x7912
                        (letrec*
                         ((x7913
                           (letrec*
                            ((x7914
                              (begin
                                (write '(funapp 1462 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1462 61))
                              (display "\n")
                              (car x7914)))))
                         (begin
                           (write '(funapp 1463 26))
                           (display "\n")
                           (cdr x7913)))))
                      (begin
                        (write '(funapp 1464 23))
                        (display "\n")
                        (cdr x7912)))))
                   g7911)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x-cnd7916
                        (letrec*
                         ((x7917 #\0))
                         (begin
                           (write '(funapp 1471 58))
                           (display "\n")
                           (char<=? x7917 c)))))
                      (if x-cnd7916
                        (letrec*
                         ((x7918 #\9))
                         (begin
                           (write '(funapp 1473 48))
                           (display "\n")
                           (char<=? c x7918)))
                        #f))))
                   g7915)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7921))))
                    (g7920
                     (letrec*
                      ((x-cnd7922
                        (begin
                          (write '(funapp 1483 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7922
                        #f
                        (letrec*
                         ((x-cnd7923
                           (letrec*
                            ((x7924
                              (begin
                                (write '(funapp 1488 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1488 56))
                              (display "\n")
                              (eqv? x7924 k)))))
                         (if x-cnd7923
                           (begin
                             (write '(funapp 1490 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7925
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1491 55))
                              (display "\n")
                              (assq k x7925)))))))))
                   g7920)))
               (not (lambda (x) (letrec* ((g7926 (if x #f #t))) g7926)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7927
                     (begin
                       (write '(funapp 1495 50))
                       (display "\n")
                       (append l1 l2))))
                   g7927)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1499 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1499 57))
                        (display "\n")
                        (assert x7930))))
                    (g7929
                     (letrec*
                      ((x-cnd7931
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7931
                        #f
                        (letrec*
                         ((x-cnd7932
                           (letrec*
                            ((x7933
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (eq? x7933 e)))))
                         (if x-cnd7932
                           l
                           (letrec*
                            ((x7934
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1510 55))
                              (display "\n")
                              (memq e x7934)))))))))
                   g7929)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7936
                        (letrec*
                         ((x7937
                           (letrec*
                            ((x7938
                              (begin
                                (write '(funapp 1519 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1519 61))
                              (display "\n")
                              (car x7938)))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cdr x7937)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (car x7936)))))
                   g7935)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7941))))
                    (g7940
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7942
                             (letrec*
                              ((x-cnd7943
                                (begin
                                  (write '(funapp 1534 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7943
                                0
                                (letrec*
                                 ((x7944
                                   (letrec*
                                    ((x7945
                                      (begin
                                        (write '(funapp 1539 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1539 63))
                                      (display "\n")
                                      (rec x7945)))))
                                 (begin
                                   (write '(funapp 1540 34))
                                   (display "\n")
                                   (+ 1 x7944)))))))
                           g7942))))
                      (letrec*
                       ((g7946
                         (begin
                           (write '(funapp 1542 40))
                           (display "\n")
                           (rec l))))
                       g7946))))
                   g7940)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7950))))
                    (g7948
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7951))))
                    (g7949
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1551 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7952
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1553 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7952))))
                   g7949)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1559 65))
                        (display "\n")
                        (not x7954)))))
                   g7953)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7956
                        (letrec*
                         ((x7957
                           (begin
                             (write '(funapp 1566 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1566 58))
                           (display "\n")
                           (car x7957)))))
                      (begin
                        (write '(funapp 1567 23))
                        (display "\n")
                        (cdr x7956)))))
                   g7955)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7960
                        (begin
                          (write '(funapp 1572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1572 57))
                        (display "\n")
                        (assert x7960))))
                    (g7959
                     (letrec*
                      ((x-cnd7961
                        (begin
                          (write '(funapp 1575 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7961
                        #f
                        (letrec*
                         ((x-cnd7962
                           (letrec*
                            ((x7963
                              (begin
                                (write '(funapp 1580 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1580 56))
                              (display "\n")
                              (equal? x7963 k)))))
                         (if x-cnd7962
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7964
                              (begin
                                (write '(funapp 1583 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1583 55))
                              (display "\n")
                              (assoc k x7964)))))))))
                   g7959)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7965
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 1588 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1588 55))
                        (display "\n")
                        (car x7966)))))
                   g7965)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7967
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7970))))
                    (g7968
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
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
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1595 63))
                        (display "\n")
                        (not x7972)))))
                   g7969)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7973
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1602 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7974
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1604 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7974))))
                   g7973)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1610 62))
                        (display "\n")
                        (assert x7978))))
                    (g7976
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1611 57))
                        (display "\n")
                        (assert x7979))))
                    (g7977
                     (letrec*
                      ((x-cnd7980
                        (begin
                          (write '(funapp 1614 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7980
                        #t
                        (letrec*
                         ((x-cnd7981
                           (begin
                             (write '(funapp 1618 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7981
                           (letrec*
                            ((g7982
                              (letrec*
                               ((x7984
                                 (begin
                                   (write '(funapp 1621 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1621 64))
                                 (display "\n")
                                 (f x7984))))
                             (g7983
                              (letrec*
                               ((x7985
                                 (begin
                                   (write '(funapp 1623 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1623 58))
                                 (display "\n")
                                 (for-each f x7985)))))
                            g7983)
                           (begin
                             (write '(funapp 1625 27))
                             (display "\n")
                             '())))))))
                   g7977)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7986
                     (letrec*
                      ((x7988
                        (begin
                          (write '(funapp 1630 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1630 59))
                        (display "\n")
                        (assert x7988))))
                    (g7987
                     (letrec*
                      ((x-cnd7989
                        (begin
                          (write '(funapp 1632 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7989
                        (begin
                          (write '(funapp 1632 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7987)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x7993
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7993))))
                    (g7991
                     (letrec*
                      ((x7994
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7994))))
                    (g7992
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1641 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7995
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1643 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7995))))
                   g7992)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((x7997
                        (letrec*
                         ((x7998
                           (letrec*
                            ((x7999
                              (begin
                                (write '(funapp 1653 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1653 61))
                              (display "\n")
                              (cdr x7999)))))
                         (begin
                           (write '(funapp 1654 26))
                           (display "\n")
                           (cdr x7998)))))
                      (begin
                        (write '(funapp 1655 23))
                        (display "\n")
                        (car x7997)))))
                   g7996)))
               (newline (lambda () (letrec* ((g8000 #f)) g8000)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8001
                     (letrec*
                      ((x8003
                        (letrec*
                         ((x8004
                           (begin
                             (write '(funapp 1663 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1663 58))
                           (display "\n")
                           (abs x8004))))
                       (x8002
                        (begin
                          (write '(funapp 1664 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1665 23))
                        (display "\n")
                        (/ x8003 x8002)))))
                   g8001)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8005
                     (letrec*
                      ((x8009
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1671 57))
                        (display "\n")
                        (assert x8009))))
                    (g8006
                     (letrec*
                      ((x8010
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1672 63))
                        (display "\n")
                        (assert x8010))))
                    (g8007
                     (letrec*
                      ((x8011
                        (letrec*
                         ((x8012
                           (begin
                             (write '(funapp 1675 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1675 61))
                           (display "\n")
                           (< index x8012)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (assert x8011))))
                    (g8008
                     (letrec*
                      ((x-cnd8013
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8013
                        (begin
                          (write '(funapp 1681 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8015
                           (begin
                             (write '(funapp 1683 34))
                             (display "\n")
                             (cdr l)))
                          (x8014
                           (begin
                             (write '(funapp 1683 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1684 26))
                           (display "\n")
                           (list-ref x8015 x8014)))))))
                   g8008)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8016
                     (letrec*
                      ((x-cnd8017
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8017
                        a
                        (letrec*
                         ((x8018
                           (begin
                             (write '(funapp 1694 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1694 57))
                           (display "\n")
                           (gcd b x8018)))))))
                   g8016)))
               (mk-list
                (lambda (n x)
                  (letrec*
                   ((g8019
                     (letrec*
                      ((x-cnd8020
                        (begin
                          (write '(funapp 1701 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd8020
                        empty
                        (letrec*
                         ((x8021
                           (letrec*
                            ((x8022
                              (begin
                                (write '(funapp 1706 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1706 55))
                              (display "\n")
                              (mk-list x8022 x)))))
                         (begin
                           (write '(funapp 1707 26))
                           (display "\n")
                           (cons x x8021)))))))
                   g8019)))
               (mem
                (lambda (x xs)
                  (letrec*
                   ((g8023
                     (letrec*
                      ((x-cnd8024
                        (begin
                          (write '(funapp 1714 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8024
                        #f
                        (letrec*
                         ((val7263
                           (letrec*
                            ((x8025
                              (begin
                                (write '(funapp 1718 53))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1718 64))
                              (display "\n")
                              (= x x8025)))))
                         (letrec*
                          ((g8026
                            (if val7263
                              val7263
                              (letrec*
                               ((x8027
                                 (begin
                                   (write '(funapp 1723 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1723 59))
                                 (display "\n")
                                 (mem x x8027))))))
                          g8026))))))
                   g8023))))
              (letrec*
               ((g8028
                 (begin
                   (write '(funapp 1728 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1729 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((xj7404
                          (begin
                            (write '(funapp 1731 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1731 34))
                               (display "\n")
                               'module))))
                         (xk7405
                          (begin
                            (write '(funapp 1731 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1731 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8029
                           (begin
                             (write '(funapp 1734 24))
                             (display "\n")
                             ((lambda (j7408 k7409 f7410)
                                (letrec*
                                 ((g8030
                                   (lambda (g7406 g7407)
                                     (letrec*
                                      ((g8031
                                        (letrec*
                                         ((x7411
                                           (begin
                                             (write '(funapp 1741 44))
                                             (display "\n")
                                             (integer?/c j7408 k7409 g7406)))
                                          (x7412
                                           (begin
                                             (write '(funapp 1742 44))
                                             (display "\n")
                                             (integer?/c j7408 k7409 g7407))))
                                         (letrec*
                                          ((g8032
                                            (letrec*
                                             ((x8034
                                               (begin
                                                 (write '(funapp 1747 42))
                                                 (display "\n")
                                                 ((lambda (_ x)
                                                    (letrec*
                                                     ((g8035
                                                       (letrec*
                                                        ((x8040
                                                          (begin
                                                            (write
                                                             '(funapp 1751 57))
                                                            (display "\n")
                                                            (listof
                                                             integer?/c))))
                                                        (begin
                                                          (write
                                                           '(funapp 1752 49))
                                                          (display "\n")
                                                          (and/c
                                                           x8040
                                                           (lambda (g7413
                                                                    g7414
                                                                    g7415)
                                                             (letrec*
                                                              ((g8036
                                                                (letrec*
                                                                 ((x-cnd8037
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        1759
                                                                        58))
                                                                     (display
                                                                      "\n")
                                                                     ((lambda (l)
                                                                        (letrec*
                                                                         ((g8038
                                                                           (letrec*
                                                                            ((val7264
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1764
                                                                                   67))
                                                                                (display
                                                                                 "\n")
                                                                                (empty?
                                                                                 l))))
                                                                            (letrec*
                                                                             ((g8039
                                                                               (if val7264
                                                                                 val7264
                                                                                 (begin
                                                                                   (write
                                                                                    '(funapp
                                                                                      1769
                                                                                      70))
                                                                                   (display
                                                                                    "\n")
                                                                                   (member
                                                                                    x
                                                                                    l)))))
                                                                             g8039))))
                                                                         g8038))
                                                                      g7415))))
                                                                 (if x-cnd8037
                                                                   g7415
                                                                   (begin
                                                                     (write
                                                                      '(blame
                                                                        g7413
                                                                        1777
                                                                        57))
                                                                     (display
                                                                      "\n")
                                                                     (error
                                                                      (format
                                                                       "contract violation, blaming ~a~%"
                                                                       g7413)))))))
                                                              g8036)))))))
                                                     g8035))
                                                  x7411
                                                  x7412)))
                                              (x8033
                                               (begin
                                                 (write '(funapp 1792 48))
                                                 (display "\n")
                                                 (f7410 x7411 x7412))))
                                             (begin
                                               (write '(funapp 1793 40))
                                               (display "\n")
                                               (x8034 j7408 k7409 x8033)))))
                                          g8032))))
                                      g8031))))
                                 g8030))
                              xj7404
                              xk7405
                              mk-list))))
                         g8029))
                       (letrec*
                        ((x8043
                          (letrec*
                           ((xj7416
                             (begin
                               (write '(funapp 1804 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1804 37))
                                  (display "\n")
                                  'module))))
                            (xk7417
                             (begin
                               (write '(funapp 1804 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1804 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8044
                              (begin
                                (write '(funapp 1807 27))
                                (display "\n")
                                ((lambda (j7420 k7421 f7422)
                                   (letrec*
                                    ((g8045
                                      (lambda (g7418 g7419)
                                        (letrec*
                                         ((g8046
                                           (letrec*
                                            ((x8047
                                              (letrec*
                                               ((x8050
                                                 (begin
                                                   (write '(funapp 1817 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7420
                                                    k7421
                                                    g7418)))
                                                (x8048
                                                 (letrec*
                                                  ((x8049
                                                    (begin
                                                      (write '(funapp 1820 53))
                                                      (display "\n")
                                                      (listof integer?/c))))
                                                  (begin
                                                    (write '(funapp 1821 45))
                                                    (display "\n")
                                                    (x8049
                                                     j7420
                                                     k7421
                                                     g7419)))))
                                               (begin
                                                 (write '(funapp 1822 42))
                                                 (display "\n")
                                                 (f7422 x8050 x8048)))))
                                            (begin
                                              (write '(funapp 1823 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7420
                                               k7421
                                               x8047)))))
                                         g8046))))
                                    g8045))
                                 xj7416
                                 xk7417
                                 mem))))
                            g8044)))
                         (x8042 (input))
                         (x8041 (input)))
                        (begin
                          (write '(funapp 1832 21))
                          (display "\n")
                          (x8043 x8042 x8041)))))))))
               g8028))))
           g7451))))
       g7434)))
    g7433)))
