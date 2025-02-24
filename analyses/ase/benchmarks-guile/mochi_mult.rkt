(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7409 #t)) g7409)))
    (meta (lambda (v) (letrec* ((g7410 v)) g7410)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7411
          (letrec*
           ((g7412
             (letrec*
              ((x-e7413 lst))
              (letrec*
               ((v1742 x-e7413))
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
                   ((x-cnd7414
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7414
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
           g7412)))
        g7411)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7415 (lambda (v) (letrec* ((g7416 v)) g7416)))) g7415)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7417
          (letrec*
           ((x7418 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7418)))))
        g7417))))
   (letrec*
    ((g7419
      (letrec*
       ((g7420
         (letrec*
          ((>=
            (lambda (x y)
              (letrec*
               ((g7421
                 (letrec*
                  ((x7423
                    (begin
                      (write '(funapp 47 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 47 55))
                    (display "\n")
                    (assert x7423))))
                (g7422
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 50 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7424
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 56 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7425 (if val7244 val7244 #f))) g7425)))))
                   g7424))))
               g7422)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7426
                 (letrec*
                  ((x7428
                    (begin
                      (write '(funapp 63 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 63 55))
                    (display "\n")
                    (assert x7428))))
                (g7427
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 66 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7429
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 72 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7430 (if val7246 val7246 #f))) g7430)))))
                   g7429))))
               g7427)))
           (>
            (lambda (x y)
              (letrec*
               ((g7431
                 (letrec*
                  ((x7433
                    (begin
                      (write '(funapp 79 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 79 55))
                    (display "\n")
                    (assert x7433))))
                (g7432
                 (letrec*
                  ((x7434
                    (begin (write '(funapp 80 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 80 52)) (display "\n") (not x7434)))))
               g7432)))
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
           ((g7435 (begin (write '(funapp 96 19)) (display "\n") '()))
            (g7436
             (letrec*
              ((empty (begin (write '(funapp 99 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7437
                     (lambda (k j lst)
                       (letrec*
                        ((g7438
                          (begin
                            (write '(funapp 107 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7439
                                  (begin
                                    (write '(funapp 109 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7439))
                             lst))))
                        g7438))))
                   g7437)))
               (real?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7440
                     (letrec*
                      ((x-cnd7441
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7441
                        g7264
                        (begin
                          (write '(blame g7262 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7440)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x-cnd7443
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7443
                        g7267
                        (begin
                          (write '(blame g7265 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7442)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7444
                     (letrec*
                      ((x-cnd7445
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7445
                        g7270
                        (begin
                          (write '(blame g7268 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7444)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 143 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7448 #t)) g7448)) g7273))))
                      (if x-cnd7447
                        g7273
                        (begin
                          (write '(blame g7271 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7446)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 152 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7451 #t)) g7451)) g7276))))
                      (if x-cnd7450
                        g7276
                        (begin
                          (write '(blame g7274 153 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7449)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 160 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7453
                        g7279
                        (begin
                          (write '(blame g7277 161 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7452)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 169 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7455
                        g7282
                        (begin
                          (write '(blame g7280 170 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7454)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 177 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7457
                        g7285
                        (begin
                          (write '(blame g7283 178 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7456)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 185 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7459
                        g7288
                        (begin
                          (write '(blame g7286 186 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7458)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7460
                     (lambda (k j v)
                       (letrec*
                        ((g7461
                          (letrec*
                           ((x-cnd7462
                             (begin
                               (write '(funapp 196 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7462
                             (begin
                               (write '(funapp 197 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7461))))
                   g7460)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7463
                     (lambda (k j v)
                       (letrec*
                        ((g7464
                          (letrec*
                           ((x-cnd7465
                             (begin
                               (write '(funapp 208 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7465
                             (begin
                               (write '(funapp 210 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7469
                                (letrec*
                                 ((x7470
                                   (begin
                                     (write '(funapp 214 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 215 34))
                                   (display "\n")
                                   (contract k j x7470))))
                               (x7466
                                (letrec*
                                 ((x7468
                                   (begin
                                     (write '(funapp 218 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7467
                                   (begin
                                     (write '(funapp 218 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 219 34))
                                   (display "\n")
                                   (x7468 k j x7467)))))
                              (begin
                                (write '(funapp 220 31))
                                (display "\n")
                                (orig-cons x7469 x7466)))))))
                        g7464))))
                   g7463)))
               (any? (lambda (v) (letrec* ((g7471 #t)) g7471)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7472
                     (letrec*
                      ((x7473
                        (begin
                          (write '(funapp 227 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 227 55))
                        (display "\n")
                        (not x7473)))))
                   g7472)))
               (nonzero?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7474
                     (letrec*
                      ((x-cnd7475
                        (begin
                          (write '(funapp 235 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7476
                                (letrec*
                                 ((x7477
                                   (begin
                                     (write '(funapp 237 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 237 64))
                                   (display "\n")
                                   (not x7477)))))
                              g7476))
                           g7291))))
                      (if x-cnd7475
                        g7291
                        (begin
                          (write '(blame g7289 242 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7474)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7478
                     (lambda (g7292 g7293 g7294)
                       (letrec*
                        ((g7479
                          (letrec*
                           ((x-cnd7480
                             (begin
                               (write '(funapp 253 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7481
                                     (begin
                                       (write '(funapp 254 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7481))
                                g7294))))
                           (if x-cnd7480
                             g7294
                             (begin
                               (write '(blame g7292 258 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7292)))))))
                        g7479))))
                   g7478)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7482
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7483
                          (letrec*
                           ((x-cnd7484
                             (begin
                               (write '(funapp 270 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7485
                                     (begin
                                       (write '(funapp 271 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7485))
                                g7297))))
                           (if x-cnd7484
                             g7297
                             (begin
                               (write '(blame g7295 275 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7483))))
                   g7482)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7486
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7487
                          (letrec*
                           ((x-cnd7488
                             (begin
                               (write '(funapp 287 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7489
                                     (begin
                                       (write '(funapp 288 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7489))
                                g7300))))
                           (if x-cnd7488
                             g7300
                             (begin
                               (write '(blame g7298 292 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7487))))
                   g7486)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7490
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7491
                          (letrec*
                           ((x-cnd7492
                             (begin
                               (write '(funapp 304 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7493
                                     (begin
                                       (write '(funapp 305 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7493))
                                g7303))))
                           (if x-cnd7492
                             g7303
                             (begin
                               (write '(blame g7301 309 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7491))))
                   g7490)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7494
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7495
                          (letrec*
                           ((x-cnd7496
                             (begin
                               (write '(funapp 321 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7497
                                     (begin
                                       (write '(funapp 322 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7497))
                                g7306))))
                           (if x-cnd7496
                             g7306
                             (begin
                               (write '(blame g7304 326 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7495))))
                   g7494)))
               (meta (lambda (v) (letrec* ((g7498 v)) g7498)))
               (+
                (letrec*
                 ((xj7307
                   (begin (write '(funapp 332 26)) (display "\n") 'server))
                  (xk7308
                   (begin (write '(funapp 332 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7499
                    (begin
                      (write '(funapp 335 21))
                      (display "\n")
                      ((lambda (j7311 k7312 f7313)
                         (letrec*
                          ((g7501
                            (lambda (g7309 g7310)
                              (letrec*
                               ((g7502
                                 (letrec*
                                  ((x7503
                                    (letrec*
                                     ((x7505
                                       (begin
                                         (write '(funapp 344 44))
                                         (display "\n")
                                         (number?/c j7311 k7312 g7309)))
                                      (x7504
                                       (begin
                                         (write '(funapp 345 44))
                                         (display "\n")
                                         (number?/c j7311 k7312 g7310))))
                                     (begin
                                       (write '(funapp 346 36))
                                       (display "\n")
                                       (f7313 x7505 x7504)))))
                                  (begin
                                    (write '(funapp 347 33))
                                    (display "\n")
                                    (number?/c j7311 k7312 x7503)))))
                               g7502))))
                          g7501))
                       xj7307
                       xk7308
                       (lambda (a b)
                         (letrec*
                          ((g7500
                            (begin
                              (write '(funapp 352 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7500))))))
                  g7499)))
               (-
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 356 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 356 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7506
                    (begin
                      (write '(funapp 359 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7508
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7509
                                 (letrec*
                                  ((x7510
                                    (letrec*
                                     ((x7512
                                       (begin
                                         (write '(funapp 368 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7511
                                       (begin
                                         (write '(funapp 369 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 370 36))
                                       (display "\n")
                                       (f7320 x7512 x7511)))))
                                  (begin
                                    (write '(funapp 371 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7510)))))
                               g7509))))
                          g7508))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7507
                            (begin
                              (write '(funapp 376 53))
                              (display "\n")
                              (orig-- a b))))
                          g7507))))))
                  g7506)))
               (*
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 380 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 380 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7513
                    (begin
                      (write '(funapp 383 21))
                      (display "\n")
                      ((lambda (j7325 k7326 f7327)
                         (letrec*
                          ((g7515
                            (lambda (g7323 g7324)
                              (letrec*
                               ((g7516
                                 (letrec*
                                  ((x7517
                                    (letrec*
                                     ((x7519
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7323)))
                                      (x7518
                                       (begin
                                         (write '(funapp 393 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7324))))
                                     (begin
                                       (write '(funapp 394 36))
                                       (display "\n")
                                       (f7327 x7519 x7518)))))
                                  (begin
                                    (write '(funapp 395 33))
                                    (display "\n")
                                    (number?/c j7325 k7326 x7517)))))
                               g7516))))
                          g7515))
                       xj7321
                       xk7322
                       (lambda (a b)
                         (letrec*
                          ((g7514
                            (begin
                              (write '(funapp 400 53))
                              (display "\n")
                              (orig-* a b))))
                          g7514))))))
                  g7513)))
               (<
                (letrec*
                 ((xj7328
                   (begin (write '(funapp 404 26)) (display "\n") 'server))
                  (xk7329
                   (begin (write '(funapp 404 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7520
                    (begin
                      (write '(funapp 407 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7522
                            (lambda (g7330 g7331)
                              (letrec*
                               ((g7523
                                 (letrec*
                                  ((x7524
                                    (letrec*
                                     ((x7526
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7330)))
                                      (x7525
                                       (begin
                                         (write '(funapp 417 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 418 36))
                                       (display "\n")
                                       (f7334 x7526 x7525)))))
                                  (begin
                                    (write '(funapp 419 33))
                                    (display "\n")
                                    (boolean?/c j7332 k7333 x7524)))))
                               g7523))))
                          g7522))
                       xj7328
                       xk7329
                       (lambda (a b)
                         (letrec*
                          ((g7521
                            (begin
                              (write '(funapp 424 53))
                              (display "\n")
                              (orig-< a b))))
                          g7521))))))
                  g7520)))
               (>
                (letrec*
                 ((xj7335
                   (begin (write '(funapp 428 26)) (display "\n") 'server))
                  (xk7336
                   (begin (write '(funapp 428 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7527
                    (begin
                      (write '(funapp 431 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7529
                            (lambda (g7337 g7338)
                              (letrec*
                               ((g7530
                                 (letrec*
                                  ((x7531
                                    (letrec*
                                     ((x7533
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7337)))
                                      (x7532
                                       (begin
                                         (write '(funapp 441 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 442 36))
                                       (display "\n")
                                       (f7341 x7533 x7532)))))
                                  (begin
                                    (write '(funapp 443 33))
                                    (display "\n")
                                    (boolean?/c j7339 k7340 x7531)))))
                               g7530))))
                          g7529))
                       xj7335
                       xk7336
                       (lambda (a b)
                         (letrec*
                          ((g7528
                            (begin
                              (write '(funapp 448 53))
                              (display "\n")
                              (orig-> a b))))
                          g7528))))))
                  g7527)))
               (<=
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 452 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 452 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7534
                    (begin
                      (write '(funapp 455 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7536
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7537
                                 (letrec*
                                  ((x7538
                                    (letrec*
                                     ((x7540
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7344)))
                                      (x7539
                                       (begin
                                         (write '(funapp 465 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 466 36))
                                       (display "\n")
                                       (f7348 x7540 x7539)))))
                                  (begin
                                    (write '(funapp 467 33))
                                    (display "\n")
                                    (boolean?/c j7346 k7347 x7538)))))
                               g7537))))
                          g7536))
                       xj7342
                       xk7343
                       (lambda (a b)
                         (letrec*
                          ((g7535
                            (begin
                              (write '(funapp 472 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7535))))))
                  g7534)))
               (>=
                (letrec*
                 ((xj7349
                   (begin (write '(funapp 476 26)) (display "\n") 'server))
                  (xk7350
                   (begin (write '(funapp 476 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7541
                    (begin
                      (write '(funapp 479 21))
                      (display "\n")
                      ((lambda (j7353 k7354 f7355)
                         (letrec*
                          ((g7543
                            (lambda (g7351 g7352)
                              (letrec*
                               ((g7544
                                 (letrec*
                                  ((x7545
                                    (letrec*
                                     ((x7547
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7351)))
                                      (x7546
                                       (begin
                                         (write '(funapp 489 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7352))))
                                     (begin
                                       (write '(funapp 490 36))
                                       (display "\n")
                                       (f7355 x7547 x7546)))))
                                  (begin
                                    (write '(funapp 491 33))
                                    (display "\n")
                                    (boolean?/c j7353 k7354 x7545)))))
                               g7544))))
                          g7543))
                       xj7349
                       xk7350
                       (lambda (a b)
                         (letrec*
                          ((g7542
                            (begin
                              (write '(funapp 496 53))
                              (display "\n")
                              (orig->= a b))))
                          g7542))))))
                  g7541)))
               (/
                (letrec*
                 ((xj7356
                   (begin (write '(funapp 500 26)) (display "\n") 'server))
                  (xk7357
                   (begin (write '(funapp 500 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7548
                    (begin
                      (write '(funapp 503 21))
                      (display "\n")
                      ((lambda (j7360 k7361 f7362)
                         (letrec*
                          ((g7550
                            (lambda (g7358 g7359)
                              (letrec*
                               ((g7551
                                 (letrec*
                                  ((x7552
                                    (letrec*
                                     ((x7554
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7358)))
                                      (x7553
                                       (begin
                                         (write '(funapp 513 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7359))))
                                     (begin
                                       (write '(funapp 514 36))
                                       (display "\n")
                                       (f7362 x7554 x7553)))))
                                  (begin
                                    (write '(funapp 515 33))
                                    (display "\n")
                                    (number?/c j7360 k7361 x7552)))))
                               g7551))))
                          g7550))
                       xj7356
                       xk7357
                       (lambda (a b)
                         (letrec*
                          ((g7549
                            (begin
                              (write '(funapp 520 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7549))))))
                  g7548)))
               (car
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 524 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 524 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7555
                    (begin
                      (write '(funapp 527 21))
                      (display "\n")
                      ((lambda (j7366 k7367 f7368)
                         (letrec*
                          ((g7557
                            (lambda (g7365)
                              (letrec*
                               ((g7558
                                 (letrec*
                                  ((x7559
                                    (letrec*
                                     ((x7560
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (pair?/c j7366 k7367 g7365))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7368 x7560)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (any/c j7366 k7367 x7559)))))
                               g7558))))
                          g7557))
                       xj7363
                       xk7364
                       (lambda (p)
                         (letrec*
                          ((g7556
                            (begin
                              (write '(funapp 543 51))
                              (display "\n")
                              (orig-car p))))
                          g7556))))))
                  g7555)))
               (cdr
                (letrec*
                 ((xj7369
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7370
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7561
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7372 k7373 f7374)
                         (letrec*
                          ((g7563
                            (lambda (g7371)
                              (letrec*
                               ((g7564
                                 (letrec*
                                  ((x7565
                                    (letrec*
                                     ((x7566
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (pair?/c j7372 k7373 g7371))))
                                     (begin
                                       (write '(funapp 560 36))
                                       (display "\n")
                                       (f7374 x7566)))))
                                  (begin
                                    (write '(funapp 561 33))
                                    (display "\n")
                                    (any/c j7372 k7373 x7565)))))
                               g7564))))
                          g7563))
                       xj7369
                       xk7370
                       (lambda (p)
                         (letrec*
                          ((g7562
                            (begin
                              (write '(funapp 566 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7562))))))
                  g7561)))
               (cons
                (letrec*
                 ((xj7375
                   (begin (write '(funapp 570 26)) (display "\n") 'server))
                  (xk7376
                   (begin (write '(funapp 570 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7567
                    (begin
                      (write '(funapp 573 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7569
                            (lambda (g7377 g7378)
                              (letrec*
                               ((g7570
                                 (letrec*
                                  ((x7571
                                    (letrec*
                                     ((x7573
                                       (begin
                                         (write '(funapp 582 44))
                                         (display "\n")
                                         (any/c j7379 k7380 g7377)))
                                      (x7572
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (any/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7381 x7573 x7572)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (pair?/c j7379 k7380 x7571)))))
                               g7570))))
                          g7569))
                       xj7375
                       xk7376
                       (lambda (a b)
                         (letrec*
                          ((g7568
                            (begin
                              (write '(funapp 591 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7568))))))
                  g7567)))
               (vector-ref
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7574
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7385 k7386 f7387)
                         (letrec*
                          ((g7576
                            (lambda (g7384)
                              (letrec*
                               ((g7577
                                 (letrec*
                                  ((x7578
                                    (letrec*
                                     ((x7579
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (vector?/c j7385 k7386 g7384))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7387 x7579)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (integer?/c j7385 k7386 x7578)))))
                               g7577))))
                          g7576))
                       xj7382
                       xk7383
                       (lambda (v i)
                         (letrec*
                          ((g7575
                            (begin
                              (write '(funapp 615 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7575))))))
                  g7574)))
               (vector-set!
                (letrec*
                 ((xj7388
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7389
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7580
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7582
                            (lambda (g7390 g7391)
                              (letrec*
                               ((g7583
                                 (letrec*
                                  ((x7584
                                    (letrec*
                                     ((x7586
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7390)))
                                      (x7585
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (integer?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7394 x7586 x7585)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (any/c j7392 k7393 x7584)))))
                               g7583))))
                          g7582))
                       xj7388
                       xk7389
                       (lambda (vec i v)
                         (letrec*
                          ((g7581
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7581))))))
                  g7580)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7587
                     (if cnd
                       (begin (write '(funapp 645 35)) (display "\n") '())
                       (begin
                         (write '(funapp 645 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7587)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7588
                     (letrec*
                      ((x7589
                        (letrec*
                         ((x7590
                           (begin
                             (write '(funapp 652 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 652 58))
                           (display "\n")
                           (cdr x7590)))))
                      (begin
                        (write '(funapp 653 23))
                        (display "\n")
                        (cdr x7589)))))
                   g7588)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7591
                     (letrec*
                      ((x7594
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 659 62))
                        (display "\n")
                        (assert x7594))))
                    (g7592
                     (letrec*
                      ((x7595
                        (begin
                          (write '(funapp 660 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 660 57))
                        (display "\n")
                        (assert x7595))))
                    (g7593
                     (letrec*
                      ((x-cnd7596
                        (begin
                          (write '(funapp 663 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7596
                        (begin (write '(funapp 665 24)) (display "\n") '())
                        (letrec*
                         ((x7599
                           (letrec*
                            ((x7600
                              (begin
                                (write '(funapp 667 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 667 61))
                              (display "\n")
                              (f x7600))))
                          (x7597
                           (letrec*
                            ((x7598
                              (begin
                                (write '(funapp 668 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 668 61))
                              (display "\n")
                              (map f x7598)))))
                         (begin
                           (write '(funapp 669 26))
                           (display "\n")
                           (cons x7599 x7597)))))))
                   g7593)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7602
                        (begin
                          (write '(funapp 674 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 674 55))
                        (display "\n")
                        (cdr x7602)))))
                   g7601)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7604
                        (letrec*
                         ((x7605
                           (letrec*
                            ((x7606
                              (begin
                                (write '(funapp 683 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 683 61))
                              (display "\n")
                              (car x7606)))))
                         (begin
                           (write '(funapp 684 26))
                           (display "\n")
                           (cdr x7605)))))
                      (begin
                        (write '(funapp 685 23))
                        (display "\n")
                        (car x7604)))))
                   g7603)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7608
                        (letrec*
                         ((x7609
                           (letrec*
                            ((x7610
                              (begin
                                (write '(funapp 694 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 694 61))
                              (display "\n")
                              (cdr x7610)))))
                         (begin
                           (write '(funapp 695 26))
                           (display "\n")
                           (car x7609)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7608)))))
                   g7607)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 702 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 702 60))
                        (display "\n")
                        (assert x7614))))
                    (g7612
                     (letrec*
                      ((x7615
                        (begin
                          (write '(funapp 704 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 704 59))
                        (display "\n")
                        (assert x7615))))
                    (g7613
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
                       ((g7616
                         (begin
                           (write '(funapp 710 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7617 res))
                       g7617))))
                   g7613)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7619
                        (letrec*
                         ((x7620
                           (begin
                             (write '(funapp 718 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 718 58))
                           (display "\n")
                           (cdr x7620)))))
                      (begin
                        (write '(funapp 719 23))
                        (display "\n")
                        (car x7619)))))
                   g7618)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7622
                        (letrec*
                         ((x7623
                           (letrec*
                            ((x7624
                              (begin
                                (write '(funapp 728 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 728 61))
                              (display "\n")
                              (car x7624)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (car x7623)))))
                      (begin
                        (write '(funapp 730 23))
                        (display "\n")
                        (cdr x7622)))))
                   g7621)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 735 57))
                        (display "\n")
                        (assert x7627))))
                    (g7626
                     (letrec*
                      ((x-cnd7628
                        (begin
                          (write '(funapp 738 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7628
                        #f
                        (letrec*
                         ((x-cnd7629
                           (letrec*
                            ((x7630
                              (begin
                                (write '(funapp 743 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 743 56))
                              (display "\n")
                              (eq? x7630 k)))))
                         (if x-cnd7629
                           (begin
                             (write '(funapp 745 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7631
                              (begin
                                (write '(funapp 746 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 746 55))
                              (display "\n")
                              (assq k x7631)))))))))
                   g7626)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 751 60))
                        (display "\n")
                        (= 0 x7633)))))
                   g7632)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7636
                        (begin
                          (write '(funapp 756 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 756 57))
                        (display "\n")
                        (assert x7636))))
                    (g7635
                     (letrec*
                      ((x-cnd7637
                        (begin
                          (write '(funapp 759 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7637
                        ""
                        (letrec*
                         ((x7640
                           (letrec*
                            ((x7641
                              (begin
                                (write '(funapp 764 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 764 55))
                              (display "\n")
                              (char->string x7641))))
                          (x7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 766 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 766 55))
                              (display "\n")
                              (list->string x7639)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (string-append x7640 x7638)))))))
                   g7635)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 772 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 772 58))
                        (display "\n")
                        (assert x7645))))
                    (g7643
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 773 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 773 58))
                        (display "\n")
                        (assert x7646))))
                    (g7644
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 776 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7647
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 778 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7647))))
                   g7644)))
               (cdddar
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
                                (write '(funapp 788 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 788 61))
                              (display "\n")
                              (cdr x7651)))))
                         (begin
                           (write '(funapp 789 26))
                           (display "\n")
                           (cdr x7650)))))
                      (begin
                        (write '(funapp 790 23))
                        (display "\n")
                        (cdr x7649)))))
                   g7648)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 795 57))
                        (display "\n")
                        (assert x7655))))
                    (g7653
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 796 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 796 57))
                        (display "\n")
                        (assert x7656))))
                    (g7654
                     (letrec*
                      ((x-cnd7657
                        (begin
                          (write '(funapp 799 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7657
                        x
                        (letrec*
                         ((x7659
                           (begin
                             (write '(funapp 803 34))
                             (display "\n")
                             (cdr x)))
                          (x7658
                           (begin
                             (write '(funapp 803 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (list-tail x7659 x7658)))))))
                   g7654)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7660
                     (begin (write '(funapp 806 49)) (display "\n") '())))
                   g7660)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x-cnd7662
                        (letrec*
                         ((x7663 #\a))
                         (begin
                           (write '(funapp 813 48))
                           (display "\n")
                           (char-ci>=? c x7663)))))
                      (if x-cnd7662
                        (letrec*
                         ((x7664 #\z))
                         (begin
                           (write '(funapp 815 48))
                           (display "\n")
                           (char-ci<=? c x7664)))
                        #f))))
                   g7661)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7666
                           (begin
                             (write '(funapp 824 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 824 62))
                           (display "\n")
                           (= x7666 9)))))
                      (letrec*
                       ((g7667
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7668
                                 (begin
                                   (write '(funapp 832 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 833 32))
                                 (display "\n")
                                 (= x7668 10)))))
                            (letrec*
                             ((g7669
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7670
                                    (begin
                                      (write '(funapp 839 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 840 35))
                                    (display "\n")
                                    (= x7670 32))))))
                             g7669)))))
                       g7667))))
                   g7665)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7672
                        (letrec*
                         ((x7673
                           (begin
                             (write '(funapp 849 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 849 58))
                           (display "\n")
                           (cdr x7673)))))
                      (begin
                        (write '(funapp 850 23))
                        (display "\n")
                        (cdr x7672)))))
                   g7671)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 855 59))
                        (display "\n")
                        (assert x7676))))
                    (g7675
                     (begin (write '(funapp 856 28)) (display "\n") (> x 0))))
                   g7675)))
               ($pc (begin (write '(funapp 858 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7677 #f)) g7677)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((x7679
                        (begin
                          (write '(funapp 864 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 864 55))
                        (display "\n")
                        (cdr x7679)))))
                   g7678)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x7682
                        (begin
                          (write '(funapp 869 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 869 59))
                        (display "\n")
                        (assert x7682))))
                    (g7681
                     (letrec*
                      ((x-cnd7683
                        (begin
                          (write '(funapp 872 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7683
                        (begin
                          (write '(funapp 873 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 873 49))
                          (display "\n")
                          (floor x))))))
                   g7681)))
               ($cmp (begin (write '(funapp 875 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 881 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7685
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7686
                                 (begin
                                   (write '(funapp 889 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7686
                                 (begin
                                   (write '(funapp 890 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7687
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7688
                                       (begin
                                         (write '(funapp 898 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7688
                                       (letrec*
                                        ((x-cnd7689
                                          (begin
                                            (write '(funapp 901 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7689
                                          (begin
                                            (write '(funapp 902 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7690
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7691
                                             (begin
                                               (write '(funapp 911 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7691
                                             (letrec*
                                              ((x-cnd7692
                                                (begin
                                                  (write '(funapp 914 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7692
                                                (letrec*
                                                 ((x-cnd7693
                                                   (letrec*
                                                    ((x7695
                                                      (begin
                                                        (write
                                                         '(funapp 919 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7694
                                                      (begin
                                                        (write
                                                         '(funapp 920 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 921 53))
                                                      (display "\n")
                                                      (equal? x7695 x7694)))))
                                                 (if x-cnd7693
                                                   (letrec*
                                                    ((x7697
                                                      (begin
                                                        (write
                                                         '(funapp 924 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7696
                                                      (begin
                                                        (write
                                                         '(funapp 925 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 926 53))
                                                      (display "\n")
                                                      (equal? x7697 x7696)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7698
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7699
                                                (begin
                                                  (write '(funapp 935 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7699
                                                (letrec*
                                                 ((x-cnd7700
                                                   (begin
                                                     (write '(funapp 938 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7700
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 941 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7701
                                                       (letrec*
                                                        ((x-cnd7702
                                                          (letrec*
                                                           ((x7703
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
                                                             (= x7703 n)))))
                                                        (if x-cnd7702
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7704
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
                                                                    ((g7705
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7706
                                                                           (letrec*
                                                                            ((x7708
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
                                                                             (x7707
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
                                                                               x7708
                                                                               x7707)))))
                                                                         (if x-cnd7706
                                                                           (letrec*
                                                                            ((x7709
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
                                                                               x7709)))
                                                                           #f)))))
                                                                    g7705))))
                                                                g7704))))
                                                           (letrec*
                                                            ((g7710
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   990
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7710))
                                                          #f))))
                                                     g7701))
                                                   #f))
                                                #f)))))
                                         g7698)))))
                                   g7690)))))
                             g7687)))))
                       g7685))))
                   g7684)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7711
                     (letrec*
                      ((x7712
                        (letrec*
                         ((x7713
                           (letrec*
                            ((x7714
                              (begin
                                (write '(funapp 1008 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1008 61))
                              (display "\n")
                              (car x7714)))))
                         (begin
                           (write '(funapp 1009 26))
                           (display "\n")
                           (car x7713)))))
                      (begin
                        (write '(funapp 1010 23))
                        (display "\n")
                        (cdr x7712)))))
                   g7711)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7715
                     (letrec*
                      ((x7716
                        (letrec*
                         ((x7717
                           (letrec*
                            ((x7718
                              (begin
                                (write '(funapp 1019 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1019 61))
                              (display "\n")
                              (cdr x7718)))))
                         (begin
                           (write '(funapp 1020 26))
                           (display "\n")
                           (car x7717)))))
                      (begin
                        (write '(funapp 1021 23))
                        (display "\n")
                        (car x7716)))))
                   g7715)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7719
                     (begin
                       (write '(funapp 1023 53))
                       (display "\n")
                       (eq? x y))))
                   g7719)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7720
                     (letrec*
                      ((x7723
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1028 60))
                        (display "\n")
                        (assert x7723))))
                    (g7721
                     (letrec*
                      ((x7724
                        (begin
                          (write '(funapp 1030 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1030 59))
                        (display "\n")
                        (assert x7724))))
                    (g7722
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
                       ((g7725
                         (begin
                           (write '(funapp 1036 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7726 res))
                       g7726))))
                   g7722)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7727
                     (begin
                       (write '(funapp 1039 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1039 57))
                          (display "\n")
                          '())))))
                   g7727)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7728
                     (letrec*
                      ((x7731
                        (begin
                          (write '(funapp 1043 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1043 58))
                        (display "\n")
                        (assert x7731))))
                    (g7729
                     (letrec*
                      ((x7732
                        (begin
                          (write '(funapp 1044 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1044 58))
                        (display "\n")
                        (assert x7732))))
                    (g7730
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1047 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7733
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1049 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7733))))
                   g7730)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7735
                        (letrec*
                         ((x7736
                           (begin
                             (write '(funapp 1057 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1057 58))
                           (display "\n")
                           (car x7736)))))
                      (begin
                        (write '(funapp 1058 23))
                        (display "\n")
                        (cdr x7735)))))
                   g7734)))
               (cdaddr
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
                                (write '(funapp 1067 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1067 61))
                              (display "\n")
                              (cdr x7740)))))
                         (begin
                           (write '(funapp 1068 26))
                           (display "\n")
                           (car x7739)))))
                      (begin
                        (write '(funapp 1069 23))
                        (display "\n")
                        (cdr x7738)))))
                   g7737)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((x7742
                        (letrec*
                         ((x7743
                           (begin
                             (write '(funapp 1077 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1077 58))
                           (display "\n")
                           (cdr x7743)))))
                      (begin
                        (write '(funapp 1078 23))
                        (display "\n")
                        (car x7742)))))
                   g7741)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7745
                        (letrec*
                         ((x7746
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (car x7746)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7745)))))
                   g7744)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7750
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1091 58))
                        (display "\n")
                        (assert x7750))))
                    (g7748
                     (letrec*
                      ((x7751
                        (begin
                          (write '(funapp 1092 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1092 58))
                        (display "\n")
                        (assert x7751))))
                    (g7749
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1093 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1093 66))
                        (display "\n")
                        (not x7752)))))
                   g7749)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7754
                        (letrec*
                         ((x7755
                           (letrec*
                            ((x7756
                              (begin
                                (write '(funapp 1103 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1103 61))
                              (display "\n")
                              (car x7756)))))
                         (begin
                           (write '(funapp 1104 26))
                           (display "\n")
                           (car x7755)))))
                      (begin
                        (write '(funapp 1105 23))
                        (display "\n")
                        (car x7754)))))
                   g7753)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7759
                        (begin
                          (write '(funapp 1110 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1110 59))
                        (display "\n")
                        (assert x7759))))
                    (g7758
                     (begin (write '(funapp 1111 28)) (display "\n") (< x 0))))
                   g7758)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7760
                     (begin
                       (write '(funapp 1113 53))
                       (display "\n")
                       (memq e l))))
                   g7760)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7762
                        (letrec*
                         ((x7763
                           (begin
                             (write '(funapp 1119 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1119 58))
                           (display "\n")
                           (car x7763)))))
                      (begin
                        (write '(funapp 1120 23))
                        (display "\n")
                        (car x7762)))))
                   g7761)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7764
                     (begin (write '(funapp 1122 51)) (display "\n") '())))
                   g7764)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 1126 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1126 57))
                        (display "\n")
                        (assert x7767))))
                    (g7766
                     (letrec*
                      ((x-cnd7768
                        (begin
                          (write '(funapp 1129 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7768
                        (begin (write '(funapp 1131 24)) (display "\n") '())
                        (letrec*
                         ((x7771
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1133 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1133 61))
                              (display "\n")
                              (reverse x7772))))
                          (x7769
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (list x7770)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (append x7771 x7769)))))))
                   g7766)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7774
                        (letrec*
                         ((x7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1144 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1144 61))
                              (display "\n")
                              (car x7776)))))
                         (begin
                           (write '(funapp 1145 26))
                           (display "\n")
                           (car x7775)))))
                      (begin
                        (write '(funapp 1146 23))
                        (display "\n")
                        (car x7774)))))
                   g7773)))
               (cddadr
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
                                (write '(funapp 1155 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1155 61))
                              (display "\n")
                              (car x7780)))))
                         (begin
                           (write '(funapp 1156 26))
                           (display "\n")
                           (cdr x7779)))))
                      (begin
                        (write '(funapp 1157 23))
                        (display "\n")
                        (cdr x7778)))))
                   g7777)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1162 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1162 59))
                        (display "\n")
                        (assert x7783))))
                    (g7782
                     (letrec*
                      ((x7784
                        (begin
                          (write '(funapp 1163 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1163 60))
                        (display "\n")
                        (= 1 x7784)))))
                   g7782)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7786
                        (letrec*
                         ((x7787
                           (letrec*
                            ((x7788
                              (begin
                                (write '(funapp 1172 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1172 61))
                              (display "\n")
                              (cdr x7788)))))
                         (begin
                           (write '(funapp 1173 26))
                           (display "\n")
                           (car x7787)))))
                      (begin
                        (write '(funapp 1174 23))
                        (display "\n")
                        (car x7786)))))
                   g7785)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1180 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1180 59))
                        (display "\n")
                        (assert x7792))))
                    (g7790
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 1181 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1181 60))
                        (display "\n")
                        (assert x7793))))
                    (g7791
                     (letrec*
                      ((x-cnd7794
                        (begin
                          (write '(funapp 1184 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7794
                        (letrec*
                         ((g7795
                           (begin
                             (write '(funapp 1186 42))
                             (display "\n")
                             (proc))))
                         g7795)
                        (letrec*
                         ((x-cnd7796
                           (letrec*
                            ((x7797
                              (begin
                                (write '(funapp 1189 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1189 58))
                              (display "\n")
                              (null? x7797)))))
                         (if x-cnd7796
                           (letrec*
                            ((g7798
                              (letrec*
                               ((x7799
                                 (begin
                                   (write '(funapp 1193 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1193 61))
                                 (display "\n")
                                 (proc x7799)))))
                            g7798)
                           (letrec*
                            ((x-cnd7800
                              (letrec*
                               ((x7801
                                 (begin
                                   (write '(funapp 1197 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1197 62))
                                 (display "\n")
                                 (null? x7801)))))
                            (if x-cnd7800
                              (letrec*
                               ((g7802
                                 (letrec*
                                  ((x7804
                                    (begin
                                      (write '(funapp 1202 43))
                                      (display "\n")
                                      (car args)))
                                   (x7803
                                    (begin
                                      (write '(funapp 1202 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1203 35))
                                    (display "\n")
                                    (proc x7804 x7803)))))
                               g7802)
                              (letrec*
                               ((x-cnd7805
                                 (letrec*
                                  ((x7806
                                    (begin
                                      (write '(funapp 1208 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1209 35))
                                    (display "\n")
                                    (null? x7806)))))
                               (if x-cnd7805
                                 (letrec*
                                  ((g7807
                                    (letrec*
                                     ((x7810
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (car args)))
                                      (x7809
                                       (begin
                                         (write '(funapp 1215 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7808
                                       (begin
                                         (write '(funapp 1216 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1217 38))
                                       (display "\n")
                                       (proc x7810 x7809 x7808)))))
                                  g7807)
                                 (letrec*
                                  ((x-cnd7811
                                    (letrec*
                                     ((x7812
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1223 38))
                                       (display "\n")
                                       (null? x7812)))))
                                  (if x-cnd7811
                                    (letrec*
                                     ((g7813
                                       (letrec*
                                        ((x7817
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (car args)))
                                         (x7816
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7815
                                          (begin
                                            (write '(funapp 1230 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7814
                                          (begin
                                            (write '(funapp 1231 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1232 41))
                                          (display "\n")
                                          (proc x7817 x7816 x7815 x7814)))))
                                     g7813)
                                    (letrec*
                                     ((x-cnd7818
                                       (letrec*
                                        ((x7819
                                          (letrec*
                                           ((x7820
                                             (begin
                                               (write '(funapp 1239 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1240 44))
                                             (display "\n")
                                             (cdr x7820)))))
                                        (begin
                                          (write '(funapp 1241 41))
                                          (display "\n")
                                          (null? x7819)))))
                                     (if x-cnd7818
                                       (letrec*
                                        ((g7821
                                          (letrec*
                                           ((x7827
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (car args)))
                                            (x7826
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7825
                                             (begin
                                               (write '(funapp 1248 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7824
                                             (begin
                                               (write '(funapp 1249 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7822
                                             (letrec*
                                              ((x7823
                                                (begin
                                                  (write '(funapp 1252 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1253 47))
                                                (display "\n")
                                                (car x7823)))))
                                           (begin
                                             (write '(funapp 1254 44))
                                             (display "\n")
                                             (proc
                                              x7827
                                              x7826
                                              x7825
                                              x7824
                                              x7822)))))
                                        g7821)
                                       (letrec*
                                        ((x-cnd7828
                                          (letrec*
                                           ((x7829
                                             (letrec*
                                              ((x7830
                                                (begin
                                                  (write '(funapp 1266 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1267 47))
                                                (display "\n")
                                                (cddr x7830)))))
                                           (begin
                                             (write '(funapp 1268 44))
                                             (display "\n")
                                             (null? x7829)))))
                                        (if x-cnd7828
                                          (letrec*
                                           ((g7831
                                             (letrec*
                                              ((x7839
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7838
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7837
                                                (begin
                                                  (write '(funapp 1275 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7836
                                                (begin
                                                  (write '(funapp 1276 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7834
                                                (letrec*
                                                 ((x7835
                                                   (begin
                                                     (write '(funapp 1279 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1280 50))
                                                   (display "\n")
                                                   (car x7835))))
                                               (x7832
                                                (letrec*
                                                 ((x7833
                                                   (begin
                                                     (write '(funapp 1283 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1284 50))
                                                   (display "\n")
                                                   (cadr x7833)))))
                                              (begin
                                                (write '(funapp 1285 47))
                                                (display "\n")
                                                (proc
                                                 x7839
                                                 x7838
                                                 x7837
                                                 x7836
                                                 x7834
                                                 x7832)))))
                                           g7831)
                                          (letrec*
                                           ((x-cnd7840
                                             (letrec*
                                              ((x7841
                                                (letrec*
                                                 ((x7842
                                                   (begin
                                                     (write '(funapp 1298 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1299 50))
                                                   (display "\n")
                                                   (cdddr x7842)))))
                                              (begin
                                                (write '(funapp 1300 47))
                                                (display "\n")
                                                (null? x7841)))))
                                           (if x-cnd7840
                                             (letrec*
                                              ((g7843
                                                (letrec*
                                                 ((x7853
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7852
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7851
                                                   (begin
                                                     (write '(funapp 1307 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7850
                                                   (begin
                                                     (write '(funapp 1308 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7848
                                                   (letrec*
                                                    ((x7849
                                                      (begin
                                                        (write
                                                         '(funapp 1311 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1312 53))
                                                      (display "\n")
                                                      (car x7849))))
                                                  (x7846
                                                   (letrec*
                                                    ((x7847
                                                      (begin
                                                        (write
                                                         '(funapp 1315 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1316 53))
                                                      (display "\n")
                                                      (cadr x7847))))
                                                  (x7844
                                                   (letrec*
                                                    ((x7845
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (caddr x7845)))))
                                                 (begin
                                                   (write '(funapp 1321 50))
                                                   (display "\n")
                                                   (proc
                                                    x7853
                                                    x7852
                                                    x7851
                                                    x7850
                                                    x7848
                                                    x7846
                                                    x7844)))))
                                              g7843)
                                             (letrec*
                                              ((g7854
                                                (begin
                                                  (write '(funapp 1332 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7854)))))))))))))))))))
                   g7791)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7855
                     (letrec*
                      ((x7857
                        (begin
                          (write '(funapp 1338 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1338 57))
                        (display "\n")
                        (assert x7857))))
                    (g7856
                     (letrec*
                      ((x-cnd7858
                        (begin
                          (write '(funapp 1341 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7858
                        #f
                        (letrec*
                         ((x-cnd7859
                           (letrec*
                            ((x7860
                              (begin
                                (write '(funapp 1346 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1346 55))
                              (display "\n")
                              (equal? x7860 e)))))
                         (if x-cnd7859
                           l
                           (letrec*
                            ((x7861
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1349 55))
                              (display "\n")
                              (member e x7861)))))))))
                   g7856)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7862
                     (letrec*
                      ((x7863
                        (letrec*
                         ((x7864
                           (letrec*
                            ((x7865
                              (begin
                                (write '(funapp 1358 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1358 61))
                              (display "\n")
                              (cdr x7865)))))
                         (begin
                           (write '(funapp 1359 26))
                           (display "\n")
                           (cdr x7864)))))
                      (begin
                        (write '(funapp 1360 23))
                        (display "\n")
                        (cdr x7863)))))
                   g7862)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((x7867
                        (letrec*
                         ((x7868
                           (letrec*
                            ((x7869
                              (begin
                                (write '(funapp 1369 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1369 61))
                              (display "\n")
                              (cdr x7869)))))
                         (begin
                           (write '(funapp 1370 26))
                           (display "\n")
                           (cdr x7868)))))
                      (begin
                        (write '(funapp 1371 23))
                        (display "\n")
                        (car x7867)))))
                   g7866)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7870
                     (begin
                       (write '(funapp 1373 53))
                       (display "\n")
                       (random 42))))
                   g7870)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x7873
                        (begin
                          (write '(funapp 1377 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1377 59))
                        (display "\n")
                        (assert x7873))))
                    (g7872
                     (begin (write '(funapp 1378 28)) (display "\n") (= x 0))))
                   g7872)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1385 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7875
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1387 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7875))))
                   g7874)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x7877
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1393 55))
                        (display "\n")
                        (car x7877)))))
                   g7876)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7879
                           (begin
                             (write '(funapp 1403 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7879
                           (letrec*
                            ((x7880
                              (begin
                                (write '(funapp 1405 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1405 55))
                              (display "\n")
                              (list? x7880)))
                           #f))))
                      (letrec*
                       ((g7881
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1408 52))
                             (display "\n")
                             (null? l)))))
                       g7881))))
                   g7878)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x7883
                        (letrec*
                         ((x7884
                           (letrec*
                            ((x7885
                              (begin
                                (write '(funapp 1418 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1418 61))
                              (display "\n")
                              (car x7885)))))
                         (begin
                           (write '(funapp 1419 26))
                           (display "\n")
                           (cdr x7884)))))
                      (begin
                        (write '(funapp 1420 23))
                        (display "\n")
                        (cdr x7883)))))
                   g7882)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x-cnd7887
                        (letrec*
                         ((x7888 #\0))
                         (begin
                           (write '(funapp 1427 58))
                           (display "\n")
                           (char<=? x7888 c)))))
                      (if x-cnd7887
                        (letrec*
                         ((x7889 #\9))
                         (begin
                           (write '(funapp 1429 48))
                           (display "\n")
                           (char<=? c x7889)))
                        #f))))
                   g7886)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((x7892
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1436 57))
                        (display "\n")
                        (assert x7892))))
                    (g7891
                     (letrec*
                      ((x-cnd7893
                        (begin
                          (write '(funapp 1439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7893
                        #f
                        (letrec*
                         ((x-cnd7894
                           (letrec*
                            ((x7895
                              (begin
                                (write '(funapp 1444 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1444 56))
                              (display "\n")
                              (eqv? x7895 k)))))
                         (if x-cnd7894
                           (begin
                             (write '(funapp 1446 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7896
                              (begin
                                (write '(funapp 1447 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1447 55))
                              (display "\n")
                              (assq k x7896)))))))))
                   g7891)))
               (not (lambda (x) (letrec* ((g7897 (if x #f #t))) g7897)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7898
                     (begin
                       (write '(funapp 1451 50))
                       (display "\n")
                       (append l1 l2))))
                   g7898)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 1455 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1455 57))
                        (display "\n")
                        (assert x7901))))
                    (g7900
                     (letrec*
                      ((x-cnd7902
                        (begin
                          (write '(funapp 1458 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7902
                        #f
                        (letrec*
                         ((x-cnd7903
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 1463 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1463 55))
                              (display "\n")
                              (eq? x7904 e)))))
                         (if x-cnd7903
                           l
                           (letrec*
                            ((x7905
                              (begin
                                (write '(funapp 1466 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1466 55))
                              (display "\n")
                              (memq e x7905)))))))))
                   g7900)))
               (cadaar
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
                                (write '(funapp 1475 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1475 61))
                              (display "\n")
                              (car x7909)))))
                         (begin
                           (write '(funapp 1476 26))
                           (display "\n")
                           (cdr x7908)))))
                      (begin
                        (write '(funapp 1477 23))
                        (display "\n")
                        (car x7907)))))
                   g7906)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7910
                     (letrec*
                      ((x7912
                        (begin
                          (write '(funapp 1482 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1482 57))
                        (display "\n")
                        (assert x7912))))
                    (g7911
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7913
                             (letrec*
                              ((x-cnd7914
                                (begin
                                  (write '(funapp 1490 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7914
                                0
                                (letrec*
                                 ((x7915
                                   (letrec*
                                    ((x7916
                                      (begin
                                        (write '(funapp 1495 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1495 63))
                                      (display "\n")
                                      (rec x7916)))))
                                 (begin
                                   (write '(funapp 1496 34))
                                   (display "\n")
                                   (+ 1 x7915)))))))
                           g7913))))
                      (letrec*
                       ((g7917
                         (begin
                           (write '(funapp 1498 40))
                           (display "\n")
                           (rec l))))
                       g7917))))
                   g7911)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 1503 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1503 58))
                        (display "\n")
                        (assert x7921))))
                    (g7919
                     (letrec*
                      ((x7922
                        (begin
                          (write '(funapp 1504 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1504 58))
                        (display "\n")
                        (assert x7922))))
                    (g7920
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1507 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7923
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1509 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7923))))
                   g7920)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 1515 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1515 65))
                        (display "\n")
                        (not x7925)))))
                   g7924)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7927
                        (letrec*
                         ((x7928
                           (begin
                             (write '(funapp 1522 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1522 58))
                           (display "\n")
                           (car x7928)))))
                      (begin
                        (write '(funapp 1523 23))
                        (display "\n")
                        (cdr x7927)))))
                   g7926)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1528 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1528 57))
                        (display "\n")
                        (assert x7931))))
                    (g7930
                     (letrec*
                      ((x-cnd7932
                        (begin
                          (write '(funapp 1531 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7932
                        #f
                        (letrec*
                         ((x-cnd7933
                           (letrec*
                            ((x7934
                              (begin
                                (write '(funapp 1536 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1536 56))
                              (display "\n")
                              (equal? x7934 k)))))
                         (if x-cnd7933
                           (begin
                             (write '(funapp 1538 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7935
                              (begin
                                (write '(funapp 1539 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1539 55))
                              (display "\n")
                              (assoc k x7935)))))))))
                   g7930)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1544 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1544 55))
                        (display "\n")
                        (car x7937)))))
                   g7936)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7941))))
                    (g7939
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1550 58))
                        (display "\n")
                        (assert x7942))))
                    (g7940
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1551 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1551 63))
                        (display "\n")
                        (not x7943)))))
                   g7940)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1558 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7945
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1560 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7945))))
                   g7944)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7946
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1566 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1566 62))
                        (display "\n")
                        (assert x7949))))
                    (g7947
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1567 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1567 57))
                        (display "\n")
                        (assert x7950))))
                    (g7948
                     (letrec*
                      ((x-cnd7951
                        (begin
                          (write '(funapp 1570 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7951
                        #t
                        (letrec*
                         ((x-cnd7952
                           (begin
                             (write '(funapp 1574 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7952
                           (letrec*
                            ((g7953
                              (letrec*
                               ((x7955
                                 (begin
                                   (write '(funapp 1577 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1577 64))
                                 (display "\n")
                                 (f x7955))))
                             (g7954
                              (letrec*
                               ((x7956
                                 (begin
                                   (write '(funapp 1579 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1579 58))
                                 (display "\n")
                                 (for-each f x7956)))))
                            g7954)
                           (begin
                             (write '(funapp 1581 27))
                             (display "\n")
                             '())))))))
                   g7948)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7959
                        (begin
                          (write '(funapp 1586 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1586 59))
                        (display "\n")
                        (assert x7959))))
                    (g7958
                     (letrec*
                      ((x-cnd7960
                        (begin
                          (write '(funapp 1588 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7960
                        (begin
                          (write '(funapp 1588 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7958)))
               (char-ci>=?
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
                      ((val7260
                        (begin
                          (write '(funapp 1597 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7966
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1599 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7966))))
                   g7963)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7967
                     (letrec*
                      ((x7968
                        (letrec*
                         ((x7969
                           (letrec*
                            ((x7970
                              (begin
                                (write '(funapp 1609 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1609 61))
                              (display "\n")
                              (cdr x7970)))))
                         (begin
                           (write '(funapp 1610 26))
                           (display "\n")
                           (cdr x7969)))))
                      (begin
                        (write '(funapp 1611 23))
                        (display "\n")
                        (car x7968)))))
                   g7967)))
               (newline (lambda () (letrec* ((g7971 #f)) g7971)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x7974
                        (letrec*
                         ((x7975
                           (begin
                             (write '(funapp 1619 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1619 58))
                           (display "\n")
                           (abs x7975))))
                       (x7973
                        (begin
                          (write '(funapp 1620 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1621 23))
                        (display "\n")
                        (/ x7974 x7973)))))
                   g7972)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7976
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 1627 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1627 57))
                        (display "\n")
                        (assert x7980))))
                    (g7977
                     (letrec*
                      ((x7981
                        (begin
                          (write '(funapp 1628 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1628 63))
                        (display "\n")
                        (assert x7981))))
                    (g7978
                     (letrec*
                      ((x7982
                        (letrec*
                         ((x7983
                           (begin
                             (write '(funapp 1631 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1631 61))
                           (display "\n")
                           (< index x7983)))))
                      (begin
                        (write '(funapp 1632 23))
                        (display "\n")
                        (assert x7982))))
                    (g7979
                     (letrec*
                      ((x-cnd7984
                        (begin
                          (write '(funapp 1635 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7984
                        (begin
                          (write '(funapp 1637 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7986
                           (begin
                             (write '(funapp 1639 34))
                             (display "\n")
                             (cdr l)))
                          (x7985
                           (begin
                             (write '(funapp 1639 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1640 26))
                           (display "\n")
                           (list-ref x7986 x7985)))))))
                   g7979)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x-cnd7988
                        (begin
                          (write '(funapp 1647 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7988
                        a
                        (letrec*
                         ((x7989
                           (begin
                             (write '(funapp 1650 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1650 57))
                           (display "\n")
                           (gcd b x7989)))))))
                   g7987)))
               (mult
                (lambda (n m)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x-cnd7991
                        (letrec*
                         ((val7261
                           (begin
                             (write '(funapp 1659 36))
                             (display "\n")
                             (<= n 0))))
                         (letrec*
                          ((g7992
                            (if val7261
                              val7261
                              (begin
                                (write '(funapp 1661 55))
                                (display "\n")
                                (<= m 0)))))
                          g7992))))
                      (if x-cnd7991
                        0
                        (letrec*
                         ((x7993
                           (letrec*
                            ((x7994
                              (begin
                                (write '(funapp 1666 51))
                                (display "\n")
                                (- m 1))))
                            (begin
                              (write '(funapp 1666 61))
                              (display "\n")
                              (mult n x7994)))))
                         (begin
                           (write '(funapp 1667 26))
                           (display "\n")
                           (+ n x7993)))))))
                   g7990)))
               (sqr
                (lambda (n)
                  (letrec*
                   ((g7995
                     (begin
                       (write '(funapp 1669 50))
                       (display "\n")
                       (mult n n))))
                   g7995))))
              (letrec*
               ((g7996
                 (begin
                   (write '(funapp 1672 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1673 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x7999
                          (letrec*
                           ((xj7395
                             (begin
                               (write '(funapp 1677 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1677 37))
                                  (display "\n")
                                  'module))))
                            (xk7396
                             (begin
                               (write '(funapp 1677 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1677 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8000
                              (begin
                                (write '(funapp 1680 27))
                                (display "\n")
                                ((lambda (j7399 k7400 f7401)
                                   (letrec*
                                    ((g8001
                                      (lambda (g7397 g7398)
                                        (letrec*
                                         ((g8002
                                           (letrec*
                                            ((x8006
                                              (letrec*
                                               ((x8007
                                                 (begin
                                                   (write '(funapp 1689 50))
                                                   (display "\n")
                                                   (>=/c 0))))
                                               (begin
                                                 (write '(funapp 1690 42))
                                                 (display "\n")
                                                 (and/c integer?/c x8007))))
                                             (x8003
                                              (letrec*
                                               ((x8005
                                                 (begin
                                                   (write '(funapp 1694 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7399
                                                    k7400
                                                    g7397)))
                                                (x8004
                                                 (begin
                                                   (write '(funapp 1696 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7399
                                                    k7400
                                                    g7398))))
                                               (begin
                                                 (write '(funapp 1697 42))
                                                 (display "\n")
                                                 (f7401 x8005 x8004)))))
                                            (begin
                                              (write '(funapp 1698 39))
                                              (display "\n")
                                              (x8006 j7399 k7400 x8003)))))
                                         g8002))))
                                    g8001))
                                 xj7395
                                 xk7396
                                 mult))))
                            g8000)))
                         (x7998 (input))
                         (x7997 (input)))
                        (begin
                          (write '(funapp 1707 21))
                          (display "\n")
                          (x7999 x7998 x7997)))
                       (letrec*
                        ((xj7402
                          (begin
                            (write '(funapp 1709 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1709 34))
                               (display "\n")
                               'module))))
                         (xk7403
                          (begin
                            (write '(funapp 1709 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1709 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8008
                           (begin
                             (write '(funapp 1712 24))
                             (display "\n")
                             ((lambda (j7405 k7406 f7407)
                                (letrec*
                                 ((g8009
                                   (lambda (g7404)
                                     (letrec*
                                      ((g8010
                                        (letrec*
                                         ((x7408
                                           (begin
                                             (write '(funapp 1719 44))
                                             (display "\n")
                                             (integer?/c j7405 k7406 g7404))))
                                         (letrec*
                                          ((g8011
                                            (letrec*
                                             ((x8013
                                               (begin
                                                 (write '(funapp 1724 42))
                                                 (display "\n")
                                                 ((lambda (n)
                                                    (letrec*
                                                     ((g8014
                                                       (letrec*
                                                        ((x8015
                                                          (begin
                                                            (write
                                                             '(funapp 1728 57))
                                                            (display "\n")
                                                            (>=/c n))))
                                                        (begin
                                                          (write
                                                           '(funapp 1729 49))
                                                          (display "\n")
                                                          (and/c
                                                           integer?/c
                                                           x8015)))))
                                                     g8014))
                                                  x7408)))
                                              (x8012
                                               (begin
                                                 (write '(funapp 1732 48))
                                                 (display "\n")
                                                 (f7407 x7408))))
                                             (begin
                                               (write '(funapp 1733 40))
                                               (display "\n")
                                               (x8013 j7405 k7406 x8012)))))
                                          g8011))))
                                      g8010))))
                                 g8009))
                              xj7402
                              xk7403
                              sqr))))
                         g8008))))))))
               g7996))))
           g7436))))
       g7420)))
    g7419)))
