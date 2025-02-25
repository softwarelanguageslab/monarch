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
               (/
                (letrec*
                 ((xj7365
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7366
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7576
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7578
                            (lambda (g7367 g7368)
                              (letrec*
                               ((g7579
                                 (letrec*
                                  ((x7580
                                    (letrec*
                                     ((x7582
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (number?/c j7369 k7370 g7367)))
                                      (x7581
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 561 36))
                                       (display "\n")
                                       (f7371 x7582 x7581)))))
                                  (begin
                                    (write '(funapp 562 33))
                                    (display "\n")
                                    (number?/c j7369 k7370 x7580)))))
                               g7579))))
                          g7578))
                       xj7365
                       xk7366
                       (lambda (a b)
                         (letrec*
                          ((g7577
                            (begin
                              (write '(funapp 567 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7577))))))
                  g7576)))
               (car
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 571 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 571 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7583
                    (begin
                      (write '(funapp 574 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7585
                            (lambda (g7374)
                              (letrec*
                               ((g7586
                                 (letrec*
                                  ((x7587
                                    (letrec*
                                     ((x7588
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7377 x7588)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7587)))))
                               g7586))))
                          g7585))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7584
                            (begin
                              (write '(funapp 590 51))
                              (display "\n")
                              (orig-car p))))
                          g7584))))))
                  g7583)))
               (cdr
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 594 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 594 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7589
                    (begin
                      (write '(funapp 597 21))
                      (display "\n")
                      ((lambda (j7381 k7382 f7383)
                         (letrec*
                          ((g7591
                            (lambda (g7380)
                              (letrec*
                               ((g7592
                                 (letrec*
                                  ((x7593
                                    (letrec*
                                     ((x7594
                                       (begin
                                         (write '(funapp 606 44))
                                         (display "\n")
                                         (pair?/c j7381 k7382 g7380))))
                                     (begin
                                       (write '(funapp 607 36))
                                       (display "\n")
                                       (f7383 x7594)))))
                                  (begin
                                    (write '(funapp 608 33))
                                    (display "\n")
                                    (any/c j7381 k7382 x7593)))))
                               g7592))))
                          g7591))
                       xj7378
                       xk7379
                       (lambda (p)
                         (letrec*
                          ((g7590
                            (begin
                              (write '(funapp 613 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7590))))))
                  g7589)))
               (cons
                (letrec*
                 ((xj7384
                   (begin (write '(funapp 617 26)) (display "\n") 'server))
                  (xk7385
                   (begin (write '(funapp 617 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7595
                    (begin
                      (write '(funapp 620 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7597
                            (lambda (g7386 g7387)
                              (letrec*
                               ((g7598
                                 (letrec*
                                  ((x7599
                                    (letrec*
                                     ((x7601
                                       (begin
                                         (write '(funapp 629 44))
                                         (display "\n")
                                         (any/c j7388 k7389 g7386)))
                                      (x7600
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 631 36))
                                       (display "\n")
                                       (f7390 x7601 x7600)))))
                                  (begin
                                    (write '(funapp 632 33))
                                    (display "\n")
                                    (pair?/c j7388 k7389 x7599)))))
                               g7598))))
                          g7597))
                       xj7384
                       xk7385
                       (lambda (a b)
                         (letrec*
                          ((g7596
                            (begin
                              (write '(funapp 638 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7596))))))
                  g7595)))
               (vector-ref
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 642 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 642 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7602
                    (begin
                      (write '(funapp 645 21))
                      (display "\n")
                      ((lambda (j7394 k7395 f7396)
                         (letrec*
                          ((g7604
                            (lambda (g7393)
                              (letrec*
                               ((g7605
                                 (letrec*
                                  ((x7606
                                    (letrec*
                                     ((x7607
                                       (begin
                                         (write '(funapp 654 44))
                                         (display "\n")
                                         (vector?/c j7394 k7395 g7393))))
                                     (begin
                                       (write '(funapp 655 36))
                                       (display "\n")
                                       (f7396 x7607)))))
                                  (begin
                                    (write '(funapp 656 33))
                                    (display "\n")
                                    (integer?/c j7394 k7395 x7606)))))
                               g7605))))
                          g7604))
                       xj7391
                       xk7392
                       (lambda (v i)
                         (letrec*
                          ((g7603
                            (begin
                              (write '(funapp 662 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7603))))))
                  g7602)))
               (vector-set!
                (letrec*
                 ((xj7397
                   (begin (write '(funapp 666 26)) (display "\n") 'server))
                  (xk7398
                   (begin (write '(funapp 666 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7608
                    (begin
                      (write '(funapp 669 21))
                      (display "\n")
                      ((lambda (j7401 k7402 f7403)
                         (letrec*
                          ((g7610
                            (lambda (g7399 g7400)
                              (letrec*
                               ((g7611
                                 (letrec*
                                  ((x7612
                                    (letrec*
                                     ((x7614
                                       (begin
                                         (write '(funapp 678 44))
                                         (display "\n")
                                         (vector?/c j7401 k7402 g7399)))
                                      (x7613
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (integer?/c j7401 k7402 g7400))))
                                     (begin
                                       (write '(funapp 680 36))
                                       (display "\n")
                                       (f7403 x7614 x7613)))))
                                  (begin
                                    (write '(funapp 681 33))
                                    (display "\n")
                                    (any/c j7401 k7402 x7612)))))
                               g7611))))
                          g7610))
                       xj7397
                       xk7398
                       (lambda (vec i v)
                         (letrec*
                          ((g7609
                            (begin
                              (write '(funapp 687 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7609))))))
                  g7608)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7616
                        (letrec*
                         ((x7617
                           (begin
                             (write '(funapp 694 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 694 58))
                           (display "\n")
                           (cdr x7617)))))
                      (begin
                        (write '(funapp 695 23))
                        (display "\n")
                        (cdr x7616)))))
                   g7615)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 701 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 701 62))
                        (display "\n")
                        (assert x7621))))
                    (g7619
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 702 57))
                        (display "\n")
                        (assert x7622))))
                    (g7620
                     (letrec*
                      ((x-cnd7623
                        (begin
                          (write '(funapp 705 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7623
                        (begin (write '(funapp 707 24)) (display "\n") '())
                        (letrec*
                         ((x7626
                           (letrec*
                            ((x7627
                              (begin
                                (write '(funapp 709 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 709 61))
                              (display "\n")
                              (f x7627))))
                          (x7624
                           (letrec*
                            ((x7625
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (map f x7625)))))
                         (begin
                           (write '(funapp 711 26))
                           (display "\n")
                           (cons x7626 x7624)))))))
                   g7620)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 716 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 716 55))
                        (display "\n")
                        (cdr x7629)))))
                   g7628)))
               (cadadr
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
                                (write '(funapp 725 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 725 61))
                              (display "\n")
                              (car x7633)))))
                         (begin
                           (write '(funapp 726 26))
                           (display "\n")
                           (cdr x7632)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7631)))))
                   g7630)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7635
                        (letrec*
                         ((x7636
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (cdr x7637)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7636)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7635)))))
                   g7634)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 744 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 744 60))
                        (display "\n")
                        (assert x7641))))
                    (g7639
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 746 59))
                        (display "\n")
                        (assert x7642))))
                    (g7640
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
                       ((g7643
                         (begin
                           (write '(funapp 752 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7644 res))
                       g7644))))
                   g7640)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7646
                        (letrec*
                         ((x7647
                           (begin
                             (write '(funapp 760 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 760 58))
                           (display "\n")
                           (cdr x7647)))))
                      (begin
                        (write '(funapp 761 23))
                        (display "\n")
                        (car x7646)))))
                   g7645)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7649
                        (letrec*
                         ((x7650
                           (letrec*
                            ((x7651
                              (begin
                                (write '(funapp 770 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 770 61))
                              (display "\n")
                              (car x7651)))))
                         (begin
                           (write '(funapp 771 26))
                           (display "\n")
                           (car x7650)))))
                      (begin
                        (write '(funapp 772 23))
                        (display "\n")
                        (cdr x7649)))))
                   g7648)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 777 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 777 57))
                        (display "\n")
                        (assert x7654))))
                    (g7653
                     (letrec*
                      ((x-cnd7655
                        (begin
                          (write '(funapp 780 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7655
                        #f
                        (letrec*
                         ((x-cnd7656
                           (letrec*
                            ((x7657
                              (begin
                                (write '(funapp 785 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 785 56))
                              (display "\n")
                              (eq? x7657 k)))))
                         (if x-cnd7656
                           (begin
                             (write '(funapp 787 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7658
                              (begin
                                (write '(funapp 788 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 788 55))
                              (display "\n")
                              (assq k x7658)))))))))
                   g7653)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 793 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (= 0 x7660)))))
                   g7659)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 798 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 798 57))
                        (display "\n")
                        (assert x7663))))
                    (g7662
                     (letrec*
                      ((x-cnd7664
                        (begin
                          (write '(funapp 801 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7664
                        ""
                        (letrec*
                         ((x7667
                           (letrec*
                            ((x7668
                              (begin
                                (write '(funapp 806 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 806 55))
                              (display "\n")
                              (char->string x7668))))
                          (x7665
                           (letrec*
                            ((x7666
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (list->string x7666)))))
                         (begin
                           (write '(funapp 809 26))
                           (display "\n")
                           (string-append x7667 x7665)))))))
                   g7662)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x7672
                        (begin
                          (write '(funapp 814 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 814 58))
                        (display "\n")
                        (assert x7672))))
                    (g7670
                     (letrec*
                      ((x7673
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7673))))
                    (g7671
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 818 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7674
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 820 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7674))))
                   g7671)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7675
                     (letrec*
                      ((x7676
                        (letrec*
                         ((x7677
                           (letrec*
                            ((x7678
                              (begin
                                (write '(funapp 830 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 830 61))
                              (display "\n")
                              (cdr x7678)))))
                         (begin
                           (write '(funapp 831 26))
                           (display "\n")
                           (cdr x7677)))))
                      (begin
                        (write '(funapp 832 23))
                        (display "\n")
                        (cdr x7676)))))
                   g7675)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7679
                     (letrec*
                      ((x7682
                        (begin
                          (write '(funapp 837 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 837 57))
                        (display "\n")
                        (assert x7682))))
                    (g7680
                     (letrec*
                      ((x7683
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7683))))
                    (g7681
                     (letrec*
                      ((x-cnd7684
                        (begin
                          (write '(funapp 841 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7684
                        x
                        (letrec*
                         ((x7686
                           (begin
                             (write '(funapp 845 34))
                             (display "\n")
                             (cdr x)))
                          (x7685
                           (begin
                             (write '(funapp 845 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (list-tail x7686 x7685)))))))
                   g7681)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7687
                     (begin (write '(funapp 848 49)) (display "\n") '())))
                   g7687)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7688
                     (letrec*
                      ((x-cnd7689
                        (letrec*
                         ((x7690 #\a))
                         (begin
                           (write '(funapp 855 48))
                           (display "\n")
                           (char-ci>=? c x7690)))))
                      (if x-cnd7689
                        (letrec*
                         ((x7691 #\z))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci<=? c x7691)))
                        #f))))
                   g7688)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7692
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7693
                           (begin
                             (write '(funapp 866 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 866 62))
                           (display "\n")
                           (= x7693 9)))))
                      (letrec*
                       ((g7694
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7695
                                 (begin
                                   (write '(funapp 874 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 875 32))
                                 (display "\n")
                                 (= x7695 10)))))
                            (letrec*
                             ((g7696
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7697
                                    (begin
                                      (write '(funapp 881 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 882 35))
                                    (display "\n")
                                    (= x7697 32))))))
                             g7696)))))
                       g7694))))
                   g7692)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7698
                     (letrec*
                      ((x7699
                        (letrec*
                         ((x7700
                           (begin
                             (write '(funapp 891 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 891 58))
                           (display "\n")
                           (cdr x7700)))))
                      (begin
                        (write '(funapp 892 23))
                        (display "\n")
                        (cdr x7699)))))
                   g7698)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7701
                     (letrec*
                      ((x7703
                        (begin
                          (write '(funapp 897 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 897 59))
                        (display "\n")
                        (assert x7703))))
                    (g7702
                     (begin (write '(funapp 898 28)) (display "\n") (> x 0))))
                   g7702)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7704
                     (begin
                       (write '(funapp 900 59))
                       (display "\n")
                       (bool-top))))
                   g7704)))
               ($pc (begin (write '(funapp 901 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7705 #f)) g7705)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7706
                     (letrec*
                      ((x7707
                        (begin
                          (write '(funapp 907 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 907 55))
                        (display "\n")
                        (cdr x7707)))))
                   g7706)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7708
                     (letrec*
                      ((x7710
                        (begin
                          (write '(funapp 912 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 912 59))
                        (display "\n")
                        (assert x7710))))
                    (g7709
                     (letrec*
                      ((x-cnd7711
                        (begin
                          (write '(funapp 915 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7711
                        (begin
                          (write '(funapp 916 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 916 49))
                          (display "\n")
                          (floor x))))))
                   g7709)))
               ($cmp (begin (write '(funapp 918 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7712
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 924 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7713
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7714
                                 (begin
                                   (write '(funapp 932 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7714
                                 (begin
                                   (write '(funapp 933 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7715
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7716
                                       (begin
                                         (write '(funapp 941 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7716
                                       (letrec*
                                        ((x-cnd7717
                                          (begin
                                            (write '(funapp 944 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7717
                                          (begin
                                            (write '(funapp 945 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7718
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7719
                                             (begin
                                               (write '(funapp 954 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7719
                                             (letrec*
                                              ((x-cnd7720
                                                (begin
                                                  (write '(funapp 957 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7720
                                                (letrec*
                                                 ((x-cnd7721
                                                   (letrec*
                                                    ((x7723
                                                      (begin
                                                        (write
                                                         '(funapp 962 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7722
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 964 53))
                                                      (display "\n")
                                                      (equal? x7723 x7722)))))
                                                 (if x-cnd7721
                                                   (letrec*
                                                    ((x7725
                                                      (begin
                                                        (write
                                                         '(funapp 967 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7724
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 969 53))
                                                      (display "\n")
                                                      (equal? x7725 x7724)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7726
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7727
                                                (begin
                                                  (write '(funapp 978 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7727
                                                (letrec*
                                                 ((x-cnd7728
                                                   (begin
                                                     (write '(funapp 981 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7728
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 984 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7729
                                                       (letrec*
                                                        ((x-cnd7730
                                                          (letrec*
                                                           ((x7731
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
                                                             (= x7731 n)))))
                                                        (if x-cnd7730
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7732
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
                                                                    ((g7733
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7734
                                                                           (letrec*
                                                                            ((x7736
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
                                                                             (x7735
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
                                                                               x7736
                                                                               x7735)))))
                                                                         (if x-cnd7734
                                                                           (letrec*
                                                                            ((x7737
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
                                                                               x7737)))
                                                                           #f)))))
                                                                    g7733))))
                                                                g7732))))
                                                           (letrec*
                                                            ((g7738
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1033
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7738))
                                                          #f))))
                                                     g7729))
                                                   #f))
                                                #f)))))
                                         g7726)))))
                                   g7718)))))
                             g7715)))))
                       g7713))))
                   g7712)))
               (cdaaar
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
                                (write '(funapp 1051 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1051 61))
                              (display "\n")
                              (car x7742)))))
                         (begin
                           (write '(funapp 1052 26))
                           (display "\n")
                           (car x7741)))))
                      (begin
                        (write '(funapp 1053 23))
                        (display "\n")
                        (cdr x7740)))))
                   g7739)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (letrec*
                         ((x7745
                           (letrec*
                            ((x7746
                              (begin
                                (write '(funapp 1062 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1062 61))
                              (display "\n")
                              (cdr x7746)))))
                         (begin
                           (write '(funapp 1063 26))
                           (display "\n")
                           (car x7745)))))
                      (begin
                        (write '(funapp 1064 23))
                        (display "\n")
                        (car x7744)))))
                   g7743)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7747
                     (begin
                       (write '(funapp 1066 53))
                       (display "\n")
                       (eq? x y))))
                   g7747)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7751
                        (begin
                          (write '(funapp 1071 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1071 60))
                        (display "\n")
                        (assert x7751))))
                    (g7749
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1073 59))
                        (display "\n")
                        (assert x7752))))
                    (g7750
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
                       ((g7753
                         (begin
                           (write '(funapp 1079 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7754 res))
                       g7754))))
                   g7750)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7755
                     (begin
                       (write '(funapp 1082 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1082 57))
                          (display "\n")
                          '())))))
                   g7755)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7759
                        (begin
                          (write '(funapp 1086 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1086 58))
                        (display "\n")
                        (assert x7759))))
                    (g7757
                     (letrec*
                      ((x7760
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7760))))
                    (g7758
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1090 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7761
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1092 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7761))))
                   g7758)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7763
                        (letrec*
                         ((x7764
                           (begin
                             (write '(funapp 1100 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1100 58))
                           (display "\n")
                           (car x7764)))))
                      (begin
                        (write '(funapp 1101 23))
                        (display "\n")
                        (cdr x7763)))))
                   g7762)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7766
                        (letrec*
                         ((x7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1110 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1110 61))
                              (display "\n")
                              (cdr x7768)))))
                         (begin
                           (write '(funapp 1111 26))
                           (display "\n")
                           (car x7767)))))
                      (begin
                        (write '(funapp 1112 23))
                        (display "\n")
                        (cdr x7766)))))
                   g7765)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7770
                        (letrec*
                         ((x7771
                           (begin
                             (write '(funapp 1120 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1120 58))
                           (display "\n")
                           (cdr x7771)))))
                      (begin
                        (write '(funapp 1121 23))
                        (display "\n")
                        (car x7770)))))
                   g7769)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7773
                        (letrec*
                         ((x7774
                           (begin
                             (write '(funapp 1128 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1128 58))
                           (display "\n")
                           (car x7774)))))
                      (begin
                        (write '(funapp 1129 23))
                        (display "\n")
                        (car x7773)))))
                   g7772)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1134 58))
                        (display "\n")
                        (assert x7778))))
                    (g7776
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c2))))
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
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1136 66))
                        (display "\n")
                        (not x7780)))))
                   g7777)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7782
                        (letrec*
                         ((x7783
                           (letrec*
                            ((x7784
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (car x7784)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (car x7783)))))
                      (begin
                        (write '(funapp 1148 23))
                        (display "\n")
                        (car x7782)))))
                   g7781)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1153 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1153 59))
                        (display "\n")
                        (assert x7787))))
                    (g7786
                     (begin (write '(funapp 1154 28)) (display "\n") (< x 0))))
                   g7786)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7788
                     (begin
                       (write '(funapp 1156 53))
                       (display "\n")
                       (memq e l))))
                   g7788)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7790
                        (letrec*
                         ((x7791
                           (begin
                             (write '(funapp 1162 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1162 58))
                           (display "\n")
                           (car x7791)))))
                      (begin
                        (write '(funapp 1163 23))
                        (display "\n")
                        (car x7790)))))
                   g7789)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7792
                     (begin (write '(funapp 1165 51)) (display "\n") '())))
                   g7792)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1169 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1169 57))
                        (display "\n")
                        (assert x7795))))
                    (g7794
                     (letrec*
                      ((x-cnd7796
                        (begin
                          (write '(funapp 1172 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7796
                        (begin (write '(funapp 1174 24)) (display "\n") '())
                        (letrec*
                         ((x7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 1176 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1176 61))
                              (display "\n")
                              (reverse x7800))))
                          (x7797
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (list x7798)))))
                         (begin
                           (write '(funapp 1178 26))
                           (display "\n")
                           (append x7799 x7797)))))))
                   g7794)))
               (caaadr
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
                                (write '(funapp 1187 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1187 61))
                              (display "\n")
                              (car x7804)))))
                         (begin
                           (write '(funapp 1188 26))
                           (display "\n")
                           (car x7803)))))
                      (begin
                        (write '(funapp 1189 23))
                        (display "\n")
                        (car x7802)))))
                   g7801)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7806
                        (letrec*
                         ((x7807
                           (letrec*
                            ((x7808
                              (begin
                                (write '(funapp 1198 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1198 61))
                              (display "\n")
                              (car x7808)))))
                         (begin
                           (write '(funapp 1199 26))
                           (display "\n")
                           (cdr x7807)))))
                      (begin
                        (write '(funapp 1200 23))
                        (display "\n")
                        (cdr x7806)))))
                   g7805)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1205 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1205 59))
                        (display "\n")
                        (assert x7811))))
                    (g7810
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1206 60))
                        (display "\n")
                        (= 1 x7812)))))
                   g7810)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7813
                     (letrec*
                      ((x7814
                        (letrec*
                         ((x7815
                           (letrec*
                            ((x7816
                              (begin
                                (write '(funapp 1215 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1215 61))
                              (display "\n")
                              (cdr x7816)))))
                         (begin
                           (write '(funapp 1216 26))
                           (display "\n")
                           (car x7815)))))
                      (begin
                        (write '(funapp 1217 23))
                        (display "\n")
                        (car x7814)))))
                   g7813)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 1223 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1223 59))
                        (display "\n")
                        (assert x7820))))
                    (g7818
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 1224 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1224 60))
                        (display "\n")
                        (assert x7821))))
                    (g7819
                     (letrec*
                      ((x-cnd7822
                        (begin
                          (write '(funapp 1227 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7822
                        (letrec*
                         ((g7823
                           (begin
                             (write '(funapp 1229 42))
                             (display "\n")
                             (proc))))
                         g7823)
                        (letrec*
                         ((x-cnd7824
                           (letrec*
                            ((x7825
                              (begin
                                (write '(funapp 1232 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1232 58))
                              (display "\n")
                              (null? x7825)))))
                         (if x-cnd7824
                           (letrec*
                            ((g7826
                              (letrec*
                               ((x7827
                                 (begin
                                   (write '(funapp 1236 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1236 61))
                                 (display "\n")
                                 (proc x7827)))))
                            g7826)
                           (letrec*
                            ((x-cnd7828
                              (letrec*
                               ((x7829
                                 (begin
                                   (write '(funapp 1240 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1240 62))
                                 (display "\n")
                                 (null? x7829)))))
                            (if x-cnd7828
                              (letrec*
                               ((g7830
                                 (letrec*
                                  ((x7832
                                    (begin
                                      (write '(funapp 1245 43))
                                      (display "\n")
                                      (car args)))
                                   (x7831
                                    (begin
                                      (write '(funapp 1245 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1246 35))
                                    (display "\n")
                                    (proc x7832 x7831)))))
                               g7830)
                              (letrec*
                               ((x-cnd7833
                                 (letrec*
                                  ((x7834
                                    (begin
                                      (write '(funapp 1251 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1252 35))
                                    (display "\n")
                                    (null? x7834)))))
                               (if x-cnd7833
                                 (letrec*
                                  ((g7835
                                    (letrec*
                                     ((x7838
                                       (begin
                                         (write '(funapp 1257 46))
                                         (display "\n")
                                         (car args)))
                                      (x7837
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7836
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1260 38))
                                       (display "\n")
                                       (proc x7838 x7837 x7836)))))
                                  g7835)
                                 (letrec*
                                  ((x-cnd7839
                                    (letrec*
                                     ((x7840
                                       (begin
                                         (write '(funapp 1265 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1266 38))
                                       (display "\n")
                                       (null? x7840)))))
                                  (if x-cnd7839
                                    (letrec*
                                     ((g7841
                                       (letrec*
                                        ((x7845
                                          (begin
                                            (write '(funapp 1271 49))
                                            (display "\n")
                                            (car args)))
                                         (x7844
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7843
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7842
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1275 41))
                                          (display "\n")
                                          (proc x7845 x7844 x7843 x7842)))))
                                     g7841)
                                    (letrec*
                                     ((x-cnd7846
                                       (letrec*
                                        ((x7847
                                          (letrec*
                                           ((x7848
                                             (begin
                                               (write '(funapp 1282 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1283 44))
                                             (display "\n")
                                             (cdr x7848)))))
                                        (begin
                                          (write '(funapp 1284 41))
                                          (display "\n")
                                          (null? x7847)))))
                                     (if x-cnd7846
                                       (letrec*
                                        ((g7849
                                          (letrec*
                                           ((x7855
                                             (begin
                                               (write '(funapp 1289 52))
                                               (display "\n")
                                               (car args)))
                                            (x7854
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7853
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7852
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7850
                                             (letrec*
                                              ((x7851
                                                (begin
                                                  (write '(funapp 1295 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1296 47))
                                                (display "\n")
                                                (car x7851)))))
                                           (begin
                                             (write '(funapp 1297 44))
                                             (display "\n")
                                             (proc
                                              x7855
                                              x7854
                                              x7853
                                              x7852
                                              x7850)))))
                                        g7849)
                                       (letrec*
                                        ((x-cnd7856
                                          (letrec*
                                           ((x7857
                                             (letrec*
                                              ((x7858
                                                (begin
                                                  (write '(funapp 1309 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1310 47))
                                                (display "\n")
                                                (cddr x7858)))))
                                           (begin
                                             (write '(funapp 1311 44))
                                             (display "\n")
                                             (null? x7857)))))
                                        (if x-cnd7856
                                          (letrec*
                                           ((g7859
                                             (letrec*
                                              ((x7867
                                                (begin
                                                  (write '(funapp 1316 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7866
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7865
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7864
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7862
                                                (letrec*
                                                 ((x7863
                                                   (begin
                                                     (write '(funapp 1322 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1323 50))
                                                   (display "\n")
                                                   (car x7863))))
                                               (x7860
                                                (letrec*
                                                 ((x7861
                                                   (begin
                                                     (write '(funapp 1326 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1327 50))
                                                   (display "\n")
                                                   (cadr x7861)))))
                                              (begin
                                                (write '(funapp 1328 47))
                                                (display "\n")
                                                (proc
                                                 x7867
                                                 x7866
                                                 x7865
                                                 x7864
                                                 x7862
                                                 x7860)))))
                                           g7859)
                                          (letrec*
                                           ((x-cnd7868
                                             (letrec*
                                              ((x7869
                                                (letrec*
                                                 ((x7870
                                                   (begin
                                                     (write '(funapp 1341 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1342 50))
                                                   (display "\n")
                                                   (cdddr x7870)))))
                                              (begin
                                                (write '(funapp 1343 47))
                                                (display "\n")
                                                (null? x7869)))))
                                           (if x-cnd7868
                                             (letrec*
                                              ((g7871
                                                (letrec*
                                                 ((x7881
                                                   (begin
                                                     (write '(funapp 1348 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7880
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7879
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7878
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7876
                                                   (letrec*
                                                    ((x7877
                                                      (begin
                                                        (write
                                                         '(funapp 1354 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1355 53))
                                                      (display "\n")
                                                      (car x7877))))
                                                  (x7874
                                                   (letrec*
                                                    ((x7875
                                                      (begin
                                                        (write
                                                         '(funapp 1358 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1359 53))
                                                      (display "\n")
                                                      (cadr x7875))))
                                                  (x7872
                                                   (letrec*
                                                    ((x7873
                                                      (begin
                                                        (write
                                                         '(funapp 1362 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1363 53))
                                                      (display "\n")
                                                      (caddr x7873)))))
                                                 (begin
                                                   (write '(funapp 1364 50))
                                                   (display "\n")
                                                   (proc
                                                    x7881
                                                    x7880
                                                    x7879
                                                    x7878
                                                    x7876
                                                    x7874
                                                    x7872)))))
                                              g7871)
                                             (letrec*
                                              ((g7882
                                                (begin
                                                  (write '(funapp 1375 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7882)))))))))))))))))))
                   g7819)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7883
                     (letrec*
                      ((x7885
                        (begin
                          (write '(funapp 1381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1381 57))
                        (display "\n")
                        (assert x7885))))
                    (g7884
                     (letrec*
                      ((x-cnd7886
                        (begin
                          (write '(funapp 1384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7886
                        #f
                        (letrec*
                         ((x-cnd7887
                           (letrec*
                            ((x7888
                              (begin
                                (write '(funapp 1389 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1389 55))
                              (display "\n")
                              (equal? x7888 e)))))
                         (if x-cnd7887
                           l
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 1392 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1392 55))
                              (display "\n")
                              (member e x7889)))))))))
                   g7884)))
               (cddddr
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
                                (write '(funapp 1401 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1401 61))
                              (display "\n")
                              (cdr x7893)))))
                         (begin
                           (write '(funapp 1402 26))
                           (display "\n")
                           (cdr x7892)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (cdr x7891)))))
                   g7890)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((x7895
                        (letrec*
                         ((x7896
                           (letrec*
                            ((x7897
                              (begin
                                (write '(funapp 1412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1412 61))
                              (display "\n")
                              (cdr x7897)))))
                         (begin
                           (write '(funapp 1413 26))
                           (display "\n")
                           (cdr x7896)))))
                      (begin
                        (write '(funapp 1414 23))
                        (display "\n")
                        (car x7895)))))
                   g7894)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7898
                     (begin
                       (write '(funapp 1416 53))
                       (display "\n")
                       (random 42))))
                   g7898)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 1420 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1420 59))
                        (display "\n")
                        (assert x7901))))
                    (g7900
                     (begin (write '(funapp 1421 28)) (display "\n") (= x 0))))
                   g7900)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1428 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7903
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1430 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7903))))
                   g7902)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7905
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1436 55))
                        (display "\n")
                        (car x7905)))))
                   g7904)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7907
                           (begin
                             (write '(funapp 1446 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7907
                           (letrec*
                            ((x7908
                              (begin
                                (write '(funapp 1448 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1448 55))
                              (display "\n")
                              (list? x7908)))
                           #f))))
                      (letrec*
                       ((g7909
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1451 52))
                             (display "\n")
                             (null? l)))))
                       g7909))))
                   g7906)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7910
                     (letrec*
                      ((x7911
                        (letrec*
                         ((x7912
                           (letrec*
                            ((x7913
                              (begin
                                (write '(funapp 1461 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1461 61))
                              (display "\n")
                              (car x7913)))))
                         (begin
                           (write '(funapp 1462 26))
                           (display "\n")
                           (cdr x7912)))))
                      (begin
                        (write '(funapp 1463 23))
                        (display "\n")
                        (cdr x7911)))))
                   g7910)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x-cnd7915
                        (letrec*
                         ((x7916 #\0))
                         (begin
                           (write '(funapp 1470 58))
                           (display "\n")
                           (char<=? x7916 c)))))
                      (if x-cnd7915
                        (letrec*
                         ((x7917 #\9))
                         (begin
                           (write '(funapp 1472 48))
                           (display "\n")
                           (char<=? c x7917)))
                        #f))))
                   g7914)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 1479 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1479 57))
                        (display "\n")
                        (assert x7920))))
                    (g7919
                     (letrec*
                      ((x-cnd7921
                        (begin
                          (write '(funapp 1482 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7921
                        #f
                        (letrec*
                         ((x-cnd7922
                           (letrec*
                            ((x7923
                              (begin
                                (write '(funapp 1487 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1487 56))
                              (display "\n")
                              (eqv? x7923 k)))))
                         (if x-cnd7922
                           (begin
                             (write '(funapp 1489 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7924
                              (begin
                                (write '(funapp 1490 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1490 55))
                              (display "\n")
                              (assq k x7924)))))))))
                   g7919)))
               (not (lambda (x) (letrec* ((g7925 (if x #f #t))) g7925)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7926
                     (begin
                       (write '(funapp 1494 50))
                       (display "\n")
                       (append l1 l2))))
                   g7926)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7929
                        (begin
                          (write '(funapp 1498 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1498 57))
                        (display "\n")
                        (assert x7929))))
                    (g7928
                     (letrec*
                      ((x-cnd7930
                        (begin
                          (write '(funapp 1501 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7930
                        #f
                        (letrec*
                         ((x-cnd7931
                           (letrec*
                            ((x7932
                              (begin
                                (write '(funapp 1506 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1506 55))
                              (display "\n")
                              (eq? x7932 e)))))
                         (if x-cnd7931
                           l
                           (letrec*
                            ((x7933
                              (begin
                                (write '(funapp 1509 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1509 55))
                              (display "\n")
                              (memq e x7933)))))))))
                   g7928)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7935
                        (letrec*
                         ((x7936
                           (letrec*
                            ((x7937
                              (begin
                                (write '(funapp 1518 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1518 61))
                              (display "\n")
                              (car x7937)))))
                         (begin
                           (write '(funapp 1519 26))
                           (display "\n")
                           (cdr x7936)))))
                      (begin
                        (write '(funapp 1520 23))
                        (display "\n")
                        (car x7935)))))
                   g7934)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1525 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1525 57))
                        (display "\n")
                        (assert x7940))))
                    (g7939
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7941
                             (letrec*
                              ((x-cnd7942
                                (begin
                                  (write '(funapp 1533 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7942
                                0
                                (letrec*
                                 ((x7943
                                   (letrec*
                                    ((x7944
                                      (begin
                                        (write '(funapp 1538 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1538 63))
                                      (display "\n")
                                      (rec x7944)))))
                                 (begin
                                   (write '(funapp 1539 34))
                                   (display "\n")
                                   (+ 1 x7943)))))))
                           g7941))))
                      (letrec*
                       ((g7945
                         (begin
                           (write '(funapp 1541 40))
                           (display "\n")
                           (rec l))))
                       g7945))))
                   g7939)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7946
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1546 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1546 58))
                        (display "\n")
                        (assert x7949))))
                    (g7947
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7950))))
                    (g7948
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1550 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7951
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1552 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7951))))
                   g7948)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1558 65))
                        (display "\n")
                        (not x7953)))))
                   g7952)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7955
                        (letrec*
                         ((x7956
                           (begin
                             (write '(funapp 1565 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1565 58))
                           (display "\n")
                           (car x7956)))))
                      (begin
                        (write '(funapp 1566 23))
                        (display "\n")
                        (cdr x7955)))))
                   g7954)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7959
                        (begin
                          (write '(funapp 1571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1571 57))
                        (display "\n")
                        (assert x7959))))
                    (g7958
                     (letrec*
                      ((x-cnd7960
                        (begin
                          (write '(funapp 1574 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7960
                        #f
                        (letrec*
                         ((x-cnd7961
                           (letrec*
                            ((x7962
                              (begin
                                (write '(funapp 1579 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1579 56))
                              (display "\n")
                              (equal? x7962 k)))))
                         (if x-cnd7961
                           (begin
                             (write '(funapp 1581 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7963
                              (begin
                                (write '(funapp 1582 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1582 55))
                              (display "\n")
                              (assoc k x7963)))))))))
                   g7958)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1587 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1587 55))
                        (display "\n")
                        (car x7965)))))
                   g7964)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7969
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7969))))
                    (g7967
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c2))))
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
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1594 63))
                        (display "\n")
                        (not x7971)))))
                   g7968)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1601 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7973
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1603 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7973))))
                   g7972)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7974
                     (letrec*
                      ((x7977
                        (begin
                          (write '(funapp 1609 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1609 62))
                        (display "\n")
                        (assert x7977))))
                    (g7975
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1610 57))
                        (display "\n")
                        (assert x7978))))
                    (g7976
                     (letrec*
                      ((x-cnd7979
                        (begin
                          (write '(funapp 1613 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7979
                        #t
                        (letrec*
                         ((x-cnd7980
                           (begin
                             (write '(funapp 1617 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7980
                           (letrec*
                            ((g7981
                              (letrec*
                               ((x7983
                                 (begin
                                   (write '(funapp 1620 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1620 64))
                                 (display "\n")
                                 (f x7983))))
                             (g7982
                              (letrec*
                               ((x7984
                                 (begin
                                   (write '(funapp 1622 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1622 58))
                                 (display "\n")
                                 (for-each f x7984)))))
                            g7982)
                           (begin
                             (write '(funapp 1624 27))
                             (display "\n")
                             '())))))))
                   g7976)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7985
                     (letrec*
                      ((x7987
                        (begin
                          (write '(funapp 1629 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1629 59))
                        (display "\n")
                        (assert x7987))))
                    (g7986
                     (letrec*
                      ((x-cnd7988
                        (begin
                          (write '(funapp 1631 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7988
                        (begin
                          (write '(funapp 1631 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7986)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7989
                     (letrec*
                      ((x7992
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1636 58))
                        (display "\n")
                        (assert x7992))))
                    (g7990
                     (letrec*
                      ((x7993
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7993))))
                    (g7991
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1640 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7994
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1642 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7994))))
                   g7991)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7995
                     (letrec*
                      ((x7996
                        (letrec*
                         ((x7997
                           (letrec*
                            ((x7998
                              (begin
                                (write '(funapp 1652 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1652 61))
                              (display "\n")
                              (cdr x7998)))))
                         (begin
                           (write '(funapp 1653 26))
                           (display "\n")
                           (cdr x7997)))))
                      (begin
                        (write '(funapp 1654 23))
                        (display "\n")
                        (car x7996)))))
                   g7995)))
               (newline (lambda () (letrec* ((g7999 #f)) g7999)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8000
                     (letrec*
                      ((x8002
                        (letrec*
                         ((x8003
                           (begin
                             (write '(funapp 1662 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1662 58))
                           (display "\n")
                           (abs x8003))))
                       (x8001
                        (begin
                          (write '(funapp 1663 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1664 23))
                        (display "\n")
                        (/ x8002 x8001)))))
                   g8000)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8004
                     (letrec*
                      ((x8008
                        (begin
                          (write '(funapp 1670 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1670 57))
                        (display "\n")
                        (assert x8008))))
                    (g8005
                     (letrec*
                      ((x8009
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1671 63))
                        (display "\n")
                        (assert x8009))))
                    (g8006
                     (letrec*
                      ((x8010
                        (letrec*
                         ((x8011
                           (begin
                             (write '(funapp 1674 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1674 61))
                           (display "\n")
                           (< index x8011)))))
                      (begin
                        (write '(funapp 1675 23))
                        (display "\n")
                        (assert x8010))))
                    (g8007
                     (letrec*
                      ((x-cnd8012
                        (begin
                          (write '(funapp 1678 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8012
                        (begin
                          (write '(funapp 1680 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8014
                           (begin
                             (write '(funapp 1682 34))
                             (display "\n")
                             (cdr l)))
                          (x8013
                           (begin
                             (write '(funapp 1682 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1683 26))
                           (display "\n")
                           (list-ref x8014 x8013)))))))
                   g8007)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8015
                     (letrec*
                      ((x-cnd8016
                        (begin
                          (write '(funapp 1690 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8016
                        a
                        (letrec*
                         ((x8017
                           (begin
                             (write '(funapp 1693 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1693 57))
                           (display "\n")
                           (gcd b x8017)))))))
                   g8015)))
               (mk-list
                (lambda (n x)
                  (letrec*
                   ((g8018
                     (letrec*
                      ((x-cnd8019
                        (begin
                          (write '(funapp 1700 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd8019
                        empty
                        (letrec*
                         ((x8020
                           (letrec*
                            ((x8021
                              (begin
                                (write '(funapp 1705 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1705 55))
                              (display "\n")
                              (mk-list x8021 x)))))
                         (begin
                           (write '(funapp 1706 26))
                           (display "\n")
                           (cons x x8020)))))))
                   g8018)))
               (mem
                (lambda (x xs)
                  (letrec*
                   ((g8022
                     (letrec*
                      ((x-cnd8023
                        (begin
                          (write '(funapp 1713 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8023
                        #f
                        (letrec*
                         ((val7263
                           (letrec*
                            ((x8024
                              (begin
                                (write '(funapp 1717 53))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1717 64))
                              (display "\n")
                              (= x x8024)))))
                         (letrec*
                          ((g8025
                            (if val7263
                              val7263
                              (letrec*
                               ((x8026
                                 (begin
                                   (write '(funapp 1722 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1722 59))
                                 (display "\n")
                                 (mem x x8026))))))
                          g8025))))))
                   g8022))))
              (letrec*
               ((g8027
                 (begin
                   (write '(funapp 1727 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1728 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((xj7404
                          (begin
                            (write '(funapp 1730 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1730 34))
                               (display "\n")
                               'module))))
                         (xk7405
                          (begin
                            (write '(funapp 1730 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1730 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8028
                           (begin
                             (write '(funapp 1733 24))
                             (display "\n")
                             ((lambda (j7408 k7409 f7410)
                                (letrec*
                                 ((g8029
                                   (lambda (g7406 g7407)
                                     (letrec*
                                      ((g8030
                                        (letrec*
                                         ((x7411
                                           (begin
                                             (write '(funapp 1740 44))
                                             (display "\n")
                                             (integer?/c j7408 k7409 g7406)))
                                          (x7412
                                           (begin
                                             (write '(funapp 1741 44))
                                             (display "\n")
                                             (integer?/c j7408 k7409 g7407))))
                                         (letrec*
                                          ((g8031
                                            (letrec*
                                             ((x8033
                                               (begin
                                                 (write '(funapp 1746 42))
                                                 (display "\n")
                                                 ((lambda (_ x)
                                                    (letrec*
                                                     ((g8034
                                                       (letrec*
                                                        ((x8039
                                                          (begin
                                                            (write
                                                             '(funapp 1750 57))
                                                            (display "\n")
                                                            (listof
                                                             integer?/c))))
                                                        (begin
                                                          (write
                                                           '(funapp 1751 49))
                                                          (display "\n")
                                                          (and/c
                                                           x8039
                                                           (lambda (g7413
                                                                    g7414
                                                                    g7415)
                                                             (letrec*
                                                              ((g8035
                                                                (letrec*
                                                                 ((x-cnd8036
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        1758
                                                                        58))
                                                                     (display
                                                                      "\n")
                                                                     ((lambda (l)
                                                                        (letrec*
                                                                         ((g8037
                                                                           (letrec*
                                                                            ((val7264
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1763
                                                                                   67))
                                                                                (display
                                                                                 "\n")
                                                                                (empty?
                                                                                 l))))
                                                                            (letrec*
                                                                             ((g8038
                                                                               (if val7264
                                                                                 val7264
                                                                                 (begin
                                                                                   (write
                                                                                    '(funapp
                                                                                      1768
                                                                                      70))
                                                                                   (display
                                                                                    "\n")
                                                                                   (member
                                                                                    x
                                                                                    l)))))
                                                                             g8038))))
                                                                         g8037))
                                                                      g7415))))
                                                                 (if x-cnd8036
                                                                   g7415
                                                                   (begin
                                                                     (write
                                                                      '(blame
                                                                        g7413
                                                                        1776
                                                                        57))
                                                                     (display
                                                                      "\n")
                                                                     (error
                                                                      (format
                                                                       "contract violation, blaming ~a~%"
                                                                       g7413)))))))
                                                              g8035)))))))
                                                     g8034))
                                                  x7411
                                                  x7412)))
                                              (x8032
                                               (begin
                                                 (write '(funapp 1791 48))
                                                 (display "\n")
                                                 (f7410 x7411 x7412))))
                                             (begin
                                               (write '(funapp 1792 40))
                                               (display "\n")
                                               (x8033 j7408 k7409 x8032)))))
                                          g8031))))
                                      g8030))))
                                 g8029))
                              xj7404
                              xk7405
                              mk-list))))
                         g8028))
                       (letrec*
                        ((x8042
                          (letrec*
                           ((xj7416
                             (begin
                               (write '(funapp 1803 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1803 37))
                                  (display "\n")
                                  'module))))
                            (xk7417
                             (begin
                               (write '(funapp 1803 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1803 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8043
                              (begin
                                (write '(funapp 1806 27))
                                (display "\n")
                                ((lambda (j7420 k7421 f7422)
                                   (letrec*
                                    ((g8044
                                      (lambda (g7418 g7419)
                                        (letrec*
                                         ((g8045
                                           (letrec*
                                            ((x8046
                                              (letrec*
                                               ((x8049
                                                 (begin
                                                   (write '(funapp 1816 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7420
                                                    k7421
                                                    g7418)))
                                                (x8047
                                                 (letrec*
                                                  ((x8048
                                                    (begin
                                                      (write '(funapp 1819 53))
                                                      (display "\n")
                                                      (listof integer?/c))))
                                                  (begin
                                                    (write '(funapp 1820 45))
                                                    (display "\n")
                                                    (x8048
                                                     j7420
                                                     k7421
                                                     g7419)))))
                                               (begin
                                                 (write '(funapp 1821 42))
                                                 (display "\n")
                                                 (f7422 x8049 x8047)))))
                                            (begin
                                              (write '(funapp 1822 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7420
                                               k7421
                                               x8046)))))
                                         g8045))))
                                    g8044))
                                 xj7416
                                 xk7417
                                 mem))))
                            g8043)))
                         (x8041 (input))
                         (x8040 (input)))
                        (begin
                          (write '(funapp 1831 21))
                          (display "\n")
                          (x8042 x8041 x8040)))))))))
               g8027))))
           g7451))))
       g7434)))
    g7433)))
