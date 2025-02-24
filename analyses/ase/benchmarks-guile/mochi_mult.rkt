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
          ((orig-+ +)
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
           ((g7421 (begin (write '(funapp 58 19)) (display "\n") '()))
            (g7422
             (letrec*
              ((empty (begin (write '(funapp 61 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7423
                     (lambda (k j lst)
                       (letrec*
                        ((g7424
                          (begin
                            (write '(funapp 69 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7425
                                  (begin
                                    (write '(funapp 71 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7425))
                             lst))))
                        g7424))))
                   g7423)))
               (real?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7426
                     (letrec*
                      ((x-cnd7427
                        (begin
                          (write '(funapp 80 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7427
                        g7264
                        (begin
                          (write '(blame g7262 81 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7426)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7428
                     (letrec*
                      ((x-cnd7429
                        (begin
                          (write '(funapp 88 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7429
                        g7267
                        (begin
                          (write '(blame g7265 89 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7428)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7430
                     (letrec*
                      ((x-cnd7431
                        (begin
                          (write '(funapp 96 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7431
                        g7270
                        (begin
                          (write '(blame g7268 97 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7430)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7432
                     (letrec*
                      ((x-cnd7433
                        (begin
                          (write '(funapp 105 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7434 #t)) g7434)) g7273))))
                      (if x-cnd7433
                        g7273
                        (begin
                          (write '(blame g7271 106 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7432)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7435
                     (letrec*
                      ((x-cnd7436
                        (begin
                          (write '(funapp 114 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7437 #t)) g7437)) g7276))))
                      (if x-cnd7436
                        g7276
                        (begin
                          (write '(blame g7274 115 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7435)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7438
                     (letrec*
                      ((x-cnd7439
                        (begin
                          (write '(funapp 122 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7439
                        g7279
                        (begin
                          (write '(blame g7277 123 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7438)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7440
                     (letrec*
                      ((x-cnd7441
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7441
                        g7282
                        (begin
                          (write '(blame g7280 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7440)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x-cnd7443
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7443
                        g7285
                        (begin
                          (write '(blame g7283 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7442)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7444
                     (letrec*
                      ((x-cnd7445
                        (begin
                          (write '(funapp 147 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7445
                        g7288
                        (begin
                          (write '(blame g7286 148 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7444)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7446
                     (lambda (k j v)
                       (letrec*
                        ((g7447
                          (letrec*
                           ((x-cnd7448
                             (begin
                               (write '(funapp 158 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7448
                             (begin
                               (write '(funapp 159 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7447))))
                   g7446)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7449
                     (lambda (k j v)
                       (letrec*
                        ((g7450
                          (letrec*
                           ((x-cnd7451
                             (begin
                               (write '(funapp 170 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7451
                             (begin
                               (write '(funapp 172 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7455
                                (letrec*
                                 ((x7456
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (contract k j x7456))))
                               (x7452
                                (letrec*
                                 ((x7454
                                   (begin
                                     (write '(funapp 180 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7453
                                   (begin
                                     (write '(funapp 180 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 181 34))
                                   (display "\n")
                                   (x7454 k j x7453)))))
                              (begin
                                (write '(funapp 182 31))
                                (display "\n")
                                (orig-cons x7455 x7452)))))))
                        g7450))))
                   g7449)))
               (any? (lambda (v) (letrec* ((g7457 #t)) g7457)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x7459
                        (begin
                          (write '(funapp 189 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 189 55))
                        (display "\n")
                        (not x7459)))))
                   g7458)))
               (nonzero?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x-cnd7461
                        (begin
                          (write '(funapp 197 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7462
                                (letrec*
                                 ((x7463
                                   (begin
                                     (write '(funapp 199 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 199 64))
                                   (display "\n")
                                   (not x7463)))))
                              g7462))
                           g7291))))
                      (if x-cnd7461
                        g7291
                        (begin
                          (write '(blame g7289 204 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7460)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7464
                     (lambda (g7292 g7293 g7294)
                       (letrec*
                        ((g7465
                          (letrec*
                           ((x-cnd7466
                             (begin
                               (write '(funapp 215 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7467
                                     (begin
                                       (write '(funapp 216 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7467))
                                g7294))))
                           (if x-cnd7466
                             g7294
                             (begin
                               (write '(blame g7292 220 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7292)))))))
                        g7465))))
                   g7464)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7468
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7469
                          (letrec*
                           ((x-cnd7470
                             (begin
                               (write '(funapp 232 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7471
                                     (begin
                                       (write '(funapp 233 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7471))
                                g7297))))
                           (if x-cnd7470
                             g7297
                             (begin
                               (write '(blame g7295 237 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7469))))
                   g7468)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7472
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7473
                          (letrec*
                           ((x-cnd7474
                             (begin
                               (write '(funapp 249 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7475
                                     (begin
                                       (write '(funapp 250 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7475))
                                g7300))))
                           (if x-cnd7474
                             g7300
                             (begin
                               (write '(blame g7298 254 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7473))))
                   g7472)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7476
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7477
                          (letrec*
                           ((x-cnd7478
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7479
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7479))
                                g7303))))
                           (if x-cnd7478
                             g7303
                             (begin
                               (write '(blame g7301 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7477))))
                   g7476)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7480
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7481
                          (letrec*
                           ((x-cnd7482
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7483
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7483))
                                g7306))))
                           (if x-cnd7482
                             g7306
                             (begin
                               (write '(blame g7304 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7481))))
                   g7480)))
               (meta (lambda (v) (letrec* ((g7484 v)) g7484)))
               (+
                (letrec*
                 ((xj7307
                   (begin (write '(funapp 294 26)) (display "\n") 'server))
                  (xk7308
                   (begin (write '(funapp 294 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7485
                    (begin
                      (write '(funapp 297 21))
                      (display "\n")
                      ((lambda (j7311 k7312 f7313)
                         (letrec*
                          ((g7487
                            (lambda (g7309 g7310)
                              (letrec*
                               ((g7488
                                 (letrec*
                                  ((x7489
                                    (letrec*
                                     ((x7491
                                       (begin
                                         (write '(funapp 306 44))
                                         (display "\n")
                                         (number?/c j7311 k7312 g7309)))
                                      (x7490
                                       (begin
                                         (write '(funapp 307 44))
                                         (display "\n")
                                         (number?/c j7311 k7312 g7310))))
                                     (begin
                                       (write '(funapp 308 36))
                                       (display "\n")
                                       (f7313 x7491 x7490)))))
                                  (begin
                                    (write '(funapp 309 33))
                                    (display "\n")
                                    (number?/c j7311 k7312 x7489)))))
                               g7488))))
                          g7487))
                       xj7307
                       xk7308
                       (lambda (a b)
                         (letrec*
                          ((g7486
                            (begin
                              (write '(funapp 314 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7486))))))
                  g7485)))
               (-
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 318 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 318 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7492
                    (begin
                      (write '(funapp 321 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7494
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7495
                                 (letrec*
                                  ((x7496
                                    (letrec*
                                     ((x7498
                                       (begin
                                         (write '(funapp 330 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7497
                                       (begin
                                         (write '(funapp 331 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 332 36))
                                       (display "\n")
                                       (f7320 x7498 x7497)))))
                                  (begin
                                    (write '(funapp 333 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7496)))))
                               g7495))))
                          g7494))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7493
                            (begin
                              (write '(funapp 338 53))
                              (display "\n")
                              (orig-- a b))))
                          g7493))))))
                  g7492)))
               (*
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 342 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 342 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7499
                    (begin
                      (write '(funapp 345 21))
                      (display "\n")
                      ((lambda (j7325 k7326 f7327)
                         (letrec*
                          ((g7501
                            (lambda (g7323 g7324)
                              (letrec*
                               ((g7502
                                 (letrec*
                                  ((x7503
                                    (letrec*
                                     ((x7505
                                       (begin
                                         (write '(funapp 354 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7323)))
                                      (x7504
                                       (begin
                                         (write '(funapp 355 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7324))))
                                     (begin
                                       (write '(funapp 356 36))
                                       (display "\n")
                                       (f7327 x7505 x7504)))))
                                  (begin
                                    (write '(funapp 357 33))
                                    (display "\n")
                                    (number?/c j7325 k7326 x7503)))))
                               g7502))))
                          g7501))
                       xj7321
                       xk7322
                       (lambda (a b)
                         (letrec*
                          ((g7500
                            (begin
                              (write '(funapp 362 53))
                              (display "\n")
                              (orig-* a b))))
                          g7500))))))
                  g7499)))
               (<
                (letrec*
                 ((xj7328
                   (begin (write '(funapp 366 26)) (display "\n") 'server))
                  (xk7329
                   (begin (write '(funapp 366 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7506
                    (begin
                      (write '(funapp 369 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7508
                            (lambda (g7330 g7331)
                              (letrec*
                               ((g7509
                                 (letrec*
                                  ((x7510
                                    (letrec*
                                     ((x7512
                                       (begin
                                         (write '(funapp 378 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7330)))
                                      (x7511
                                       (begin
                                         (write '(funapp 379 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 380 36))
                                       (display "\n")
                                       (f7334 x7512 x7511)))))
                                  (begin
                                    (write '(funapp 381 33))
                                    (display "\n")
                                    (boolean?/c j7332 k7333 x7510)))))
                               g7509))))
                          g7508))
                       xj7328
                       xk7329
                       (lambda (a b)
                         (letrec*
                          ((g7507
                            (begin
                              (write '(funapp 386 53))
                              (display "\n")
                              (orig-< a b))))
                          g7507))))))
                  g7506)))
               (>
                (letrec*
                 ((xj7335
                   (begin (write '(funapp 390 26)) (display "\n") 'server))
                  (xk7336
                   (begin (write '(funapp 390 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7513
                    (begin
                      (write '(funapp 393 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7515
                            (lambda (g7337 g7338)
                              (letrec*
                               ((g7516
                                 (letrec*
                                  ((x7517
                                    (letrec*
                                     ((x7519
                                       (begin
                                         (write '(funapp 402 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7337)))
                                      (x7518
                                       (begin
                                         (write '(funapp 403 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 404 36))
                                       (display "\n")
                                       (f7341 x7519 x7518)))))
                                  (begin
                                    (write '(funapp 405 33))
                                    (display "\n")
                                    (boolean?/c j7339 k7340 x7517)))))
                               g7516))))
                          g7515))
                       xj7335
                       xk7336
                       (lambda (a b)
                         (letrec*
                          ((g7514
                            (begin
                              (write '(funapp 410 53))
                              (display "\n")
                              (orig-> a b))))
                          g7514))))))
                  g7513)))
               (<=
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 414 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 414 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7520
                    (begin
                      (write '(funapp 417 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7522
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7523
                                 (letrec*
                                  ((x7524
                                    (letrec*
                                     ((x7526
                                       (begin
                                         (write '(funapp 426 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7344)))
                                      (x7525
                                       (begin
                                         (write '(funapp 427 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 428 36))
                                       (display "\n")
                                       (f7348 x7526 x7525)))))
                                  (begin
                                    (write '(funapp 429 33))
                                    (display "\n")
                                    (boolean?/c j7346 k7347 x7524)))))
                               g7523))))
                          g7522))
                       xj7342
                       xk7343
                       (lambda (a b)
                         (letrec*
                          ((g7521
                            (begin
                              (write '(funapp 434 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7521))))))
                  g7520)))
               (>=
                (letrec*
                 ((xj7349
                   (begin (write '(funapp 438 26)) (display "\n") 'server))
                  (xk7350
                   (begin (write '(funapp 438 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7527
                    (begin
                      (write '(funapp 441 21))
                      (display "\n")
                      ((lambda (j7353 k7354 f7355)
                         (letrec*
                          ((g7529
                            (lambda (g7351 g7352)
                              (letrec*
                               ((g7530
                                 (letrec*
                                  ((x7531
                                    (letrec*
                                     ((x7533
                                       (begin
                                         (write '(funapp 450 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7351)))
                                      (x7532
                                       (begin
                                         (write '(funapp 451 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7352))))
                                     (begin
                                       (write '(funapp 452 36))
                                       (display "\n")
                                       (f7355 x7533 x7532)))))
                                  (begin
                                    (write '(funapp 453 33))
                                    (display "\n")
                                    (boolean?/c j7353 k7354 x7531)))))
                               g7530))))
                          g7529))
                       xj7349
                       xk7350
                       (lambda (a b)
                         (letrec*
                          ((g7528
                            (begin
                              (write '(funapp 458 53))
                              (display "\n")
                              (orig->= a b))))
                          g7528))))))
                  g7527)))
               (/
                (letrec*
                 ((xj7356
                   (begin (write '(funapp 462 26)) (display "\n") 'server))
                  (xk7357
                   (begin (write '(funapp 462 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7534
                    (begin
                      (write '(funapp 465 21))
                      (display "\n")
                      ((lambda (j7360 k7361 f7362)
                         (letrec*
                          ((g7536
                            (lambda (g7358 g7359)
                              (letrec*
                               ((g7537
                                 (letrec*
                                  ((x7538
                                    (letrec*
                                     ((x7540
                                       (begin
                                         (write '(funapp 474 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7358)))
                                      (x7539
                                       (begin
                                         (write '(funapp 475 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7359))))
                                     (begin
                                       (write '(funapp 476 36))
                                       (display "\n")
                                       (f7362 x7540 x7539)))))
                                  (begin
                                    (write '(funapp 477 33))
                                    (display "\n")
                                    (number?/c j7360 k7361 x7538)))))
                               g7537))))
                          g7536))
                       xj7356
                       xk7357
                       (lambda (a b)
                         (letrec*
                          ((g7535
                            (begin
                              (write '(funapp 482 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7535))))))
                  g7534)))
               (car
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 486 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 486 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7541
                    (begin
                      (write '(funapp 489 21))
                      (display "\n")
                      ((lambda (j7366 k7367 f7368)
                         (letrec*
                          ((g7543
                            (lambda (g7365)
                              (letrec*
                               ((g7544
                                 (letrec*
                                  ((x7545
                                    (letrec*
                                     ((x7546
                                       (begin
                                         (write '(funapp 498 44))
                                         (display "\n")
                                         (pair?/c j7366 k7367 g7365))))
                                     (begin
                                       (write '(funapp 499 36))
                                       (display "\n")
                                       (f7368 x7546)))))
                                  (begin
                                    (write '(funapp 500 33))
                                    (display "\n")
                                    (any/c j7366 k7367 x7545)))))
                               g7544))))
                          g7543))
                       xj7363
                       xk7364
                       (lambda (p)
                         (letrec*
                          ((g7542
                            (begin
                              (write '(funapp 505 51))
                              (display "\n")
                              (orig-car p))))
                          g7542))))))
                  g7541)))
               (cdr
                (letrec*
                 ((xj7369
                   (begin (write '(funapp 509 26)) (display "\n") 'server))
                  (xk7370
                   (begin (write '(funapp 509 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7547
                    (begin
                      (write '(funapp 512 21))
                      (display "\n")
                      ((lambda (j7372 k7373 f7374)
                         (letrec*
                          ((g7549
                            (lambda (g7371)
                              (letrec*
                               ((g7550
                                 (letrec*
                                  ((x7551
                                    (letrec*
                                     ((x7552
                                       (begin
                                         (write '(funapp 521 44))
                                         (display "\n")
                                         (pair?/c j7372 k7373 g7371))))
                                     (begin
                                       (write '(funapp 522 36))
                                       (display "\n")
                                       (f7374 x7552)))))
                                  (begin
                                    (write '(funapp 523 33))
                                    (display "\n")
                                    (any/c j7372 k7373 x7551)))))
                               g7550))))
                          g7549))
                       xj7369
                       xk7370
                       (lambda (p)
                         (letrec*
                          ((g7548
                            (begin
                              (write '(funapp 528 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7548))))))
                  g7547)))
               (cons
                (letrec*
                 ((xj7375
                   (begin (write '(funapp 532 26)) (display "\n") 'server))
                  (xk7376
                   (begin (write '(funapp 532 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7553
                    (begin
                      (write '(funapp 535 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7555
                            (lambda (g7377 g7378)
                              (letrec*
                               ((g7556
                                 (letrec*
                                  ((x7557
                                    (letrec*
                                     ((x7559
                                       (begin
                                         (write '(funapp 544 44))
                                         (display "\n")
                                         (any/c j7379 k7380 g7377)))
                                      (x7558
                                       (begin
                                         (write '(funapp 545 44))
                                         (display "\n")
                                         (any/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 546 36))
                                       (display "\n")
                                       (f7381 x7559 x7558)))))
                                  (begin
                                    (write '(funapp 547 33))
                                    (display "\n")
                                    (pair?/c j7379 k7380 x7557)))))
                               g7556))))
                          g7555))
                       xj7375
                       xk7376
                       (lambda (a b)
                         (letrec*
                          ((g7554
                            (begin
                              (write '(funapp 553 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7554))))))
                  g7553)))
               (vector-ref
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 557 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 557 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7560
                    (begin
                      (write '(funapp 560 21))
                      (display "\n")
                      ((lambda (j7385 k7386 f7387)
                         (letrec*
                          ((g7562
                            (lambda (g7384)
                              (letrec*
                               ((g7563
                                 (letrec*
                                  ((x7564
                                    (letrec*
                                     ((x7565
                                       (begin
                                         (write '(funapp 569 44))
                                         (display "\n")
                                         (vector?/c j7385 k7386 g7384))))
                                     (begin
                                       (write '(funapp 570 36))
                                       (display "\n")
                                       (f7387 x7565)))))
                                  (begin
                                    (write '(funapp 571 33))
                                    (display "\n")
                                    (integer?/c j7385 k7386 x7564)))))
                               g7563))))
                          g7562))
                       xj7382
                       xk7383
                       (lambda (v i)
                         (letrec*
                          ((g7561
                            (begin
                              (write '(funapp 577 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7561))))))
                  g7560)))
               (vector-set!
                (letrec*
                 ((xj7388
                   (begin (write '(funapp 581 26)) (display "\n") 'server))
                  (xk7389
                   (begin (write '(funapp 581 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7566
                    (begin
                      (write '(funapp 584 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7568
                            (lambda (g7390 g7391)
                              (letrec*
                               ((g7569
                                 (letrec*
                                  ((x7570
                                    (letrec*
                                     ((x7572
                                       (begin
                                         (write '(funapp 593 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7390)))
                                      (x7571
                                       (begin
                                         (write '(funapp 594 44))
                                         (display "\n")
                                         (integer?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 595 36))
                                       (display "\n")
                                       (f7394 x7572 x7571)))))
                                  (begin
                                    (write '(funapp 596 33))
                                    (display "\n")
                                    (any/c j7392 k7393 x7570)))))
                               g7569))))
                          g7568))
                       xj7388
                       xk7389
                       (lambda (vec i v)
                         (letrec*
                          ((g7567
                            (begin
                              (write '(funapp 602 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7567))))))
                  g7566)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7573
                     (if cnd
                       (begin (write '(funapp 607 35)) (display "\n") '())
                       (begin
                         (write '(funapp 607 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7573)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7574
                     (letrec*
                      ((x7575
                        (letrec*
                         ((x7576
                           (begin
                             (write '(funapp 614 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 614 58))
                           (display "\n")
                           (cdr x7576)))))
                      (begin
                        (write '(funapp 615 23))
                        (display "\n")
                        (cdr x7575)))))
                   g7574)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7577
                     (letrec*
                      ((x7580
                        (begin
                          (write '(funapp 621 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 621 62))
                        (display "\n")
                        (assert x7580))))
                    (g7578
                     (letrec*
                      ((x7581
                        (begin
                          (write '(funapp 622 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 622 57))
                        (display "\n")
                        (assert x7581))))
                    (g7579
                     (letrec*
                      ((x-cnd7582
                        (begin
                          (write '(funapp 625 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7582
                        (begin (write '(funapp 627 24)) (display "\n") '())
                        (letrec*
                         ((x7585
                           (letrec*
                            ((x7586
                              (begin
                                (write '(funapp 629 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 629 61))
                              (display "\n")
                              (f x7586))))
                          (x7583
                           (letrec*
                            ((x7584
                              (begin
                                (write '(funapp 630 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 630 61))
                              (display "\n")
                              (map f x7584)))))
                         (begin
                           (write '(funapp 631 26))
                           (display "\n")
                           (cons x7585 x7583)))))))
                   g7579)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7587
                     (letrec*
                      ((x7588
                        (begin
                          (write '(funapp 636 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 636 55))
                        (display "\n")
                        (cdr x7588)))))
                   g7587)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7589
                     (letrec*
                      ((x7590
                        (letrec*
                         ((x7591
                           (letrec*
                            ((x7592
                              (begin
                                (write '(funapp 645 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 645 61))
                              (display "\n")
                              (car x7592)))))
                         (begin
                           (write '(funapp 646 26))
                           (display "\n")
                           (cdr x7591)))))
                      (begin
                        (write '(funapp 647 23))
                        (display "\n")
                        (car x7590)))))
                   g7589)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7593
                     (letrec*
                      ((x7594
                        (letrec*
                         ((x7595
                           (letrec*
                            ((x7596
                              (begin
                                (write '(funapp 656 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 656 61))
                              (display "\n")
                              (cdr x7596)))))
                         (begin
                           (write '(funapp 657 26))
                           (display "\n")
                           (car x7595)))))
                      (begin
                        (write '(funapp 658 23))
                        (display "\n")
                        (cdr x7594)))))
                   g7593)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7597
                     (letrec*
                      ((x7600
                        (begin
                          (write '(funapp 664 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 664 60))
                        (display "\n")
                        (assert x7600))))
                    (g7598
                     (letrec*
                      ((x7601
                        (begin
                          (write '(funapp 666 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 666 59))
                        (display "\n")
                        (assert x7601))))
                    (g7599
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 669 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 670 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7602
                         (begin
                           (write '(funapp 672 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7603 res))
                       g7603))))
                   g7599)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7605
                        (letrec*
                         ((x7606
                           (begin
                             (write '(funapp 680 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 680 58))
                           (display "\n")
                           (cdr x7606)))))
                      (begin
                        (write '(funapp 681 23))
                        (display "\n")
                        (car x7605)))))
                   g7604)))
               (cdaadr
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
                                (write '(funapp 690 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 690 61))
                              (display "\n")
                              (car x7610)))))
                         (begin
                           (write '(funapp 691 26))
                           (display "\n")
                           (car x7609)))))
                      (begin
                        (write '(funapp 692 23))
                        (display "\n")
                        (cdr x7608)))))
                   g7607)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 697 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 697 57))
                        (display "\n")
                        (assert x7613))))
                    (g7612
                     (letrec*
                      ((x-cnd7614
                        (begin
                          (write '(funapp 700 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7614
                        #f
                        (letrec*
                         ((x-cnd7615
                           (letrec*
                            ((x7616
                              (begin
                                (write '(funapp 705 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 705 56))
                              (display "\n")
                              (eq? x7616 k)))))
                         (if x-cnd7615
                           (begin
                             (write '(funapp 707 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7617
                              (begin
                                (write '(funapp 708 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 708 55))
                              (display "\n")
                              (assq k x7617)))))))))
                   g7612)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 713 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 713 60))
                        (display "\n")
                        (= 0 x7619)))))
                   g7618)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 718 57))
                        (display "\n")
                        (assert x7622))))
                    (g7621
                     (letrec*
                      ((x-cnd7623
                        (begin
                          (write '(funapp 721 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7623
                        ""
                        (letrec*
                         ((x7626
                           (letrec*
                            ((x7627
                              (begin
                                (write '(funapp 726 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 726 55))
                              (display "\n")
                              (char->string x7627))))
                          (x7624
                           (letrec*
                            ((x7625
                              (begin
                                (write '(funapp 728 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 728 55))
                              (display "\n")
                              (list->string x7625)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (string-append x7626 x7624)))))))
                   g7621)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 734 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 734 58))
                        (display "\n")
                        (assert x7631))))
                    (g7629
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 735 58))
                        (display "\n")
                        (assert x7632))))
                    (g7630
                     (letrec*
                      ((val7243
                        (begin
                          (write '(funapp 738 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7633
                         (if val7243
                           val7243
                           (begin
                             (write '(funapp 740 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7633))))
                   g7630)))
               (cdddar
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
                                (write '(funapp 750 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 750 61))
                              (display "\n")
                              (cdr x7637)))))
                         (begin
                           (write '(funapp 751 26))
                           (display "\n")
                           (cdr x7636)))))
                      (begin
                        (write '(funapp 752 23))
                        (display "\n")
                        (cdr x7635)))))
                   g7634)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 757 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 757 57))
                        (display "\n")
                        (assert x7641))))
                    (g7639
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 758 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 758 57))
                        (display "\n")
                        (assert x7642))))
                    (g7640
                     (letrec*
                      ((x-cnd7643
                        (begin
                          (write '(funapp 761 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7643
                        x
                        (letrec*
                         ((x7645
                           (begin
                             (write '(funapp 765 34))
                             (display "\n")
                             (cdr x)))
                          (x7644
                           (begin
                             (write '(funapp 765 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 766 26))
                           (display "\n")
                           (list-tail x7645 x7644)))))))
                   g7640)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7646
                     (begin (write '(funapp 768 49)) (display "\n") '())))
                   g7646)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x-cnd7648
                        (letrec*
                         ((x7649 #\a))
                         (begin
                           (write '(funapp 775 48))
                           (display "\n")
                           (char-ci>=? c x7649)))))
                      (if x-cnd7648
                        (letrec*
                         ((x7650 #\z))
                         (begin
                           (write '(funapp 777 48))
                           (display "\n")
                           (char-ci<=? c x7650)))
                        #f))))
                   g7647)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 783 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 783 59))
                        (display "\n")
                        (assert x7653))))
                    (g7652
                     (letrec*
                      ((val7244
                        (begin
                          (write '(funapp 786 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7654
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (begin
                                (write '(funapp 792 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7655 (if val7245 val7245 #f)))
                             g7655)))))
                       g7654))))
                   g7652)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((val7246
                        (letrec*
                         ((x7657
                           (begin
                             (write '(funapp 804 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 804 62))
                           (display "\n")
                           (= x7657 9)))))
                      (letrec*
                       ((g7658
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7659
                                 (begin
                                   (write '(funapp 812 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 813 32))
                                 (display "\n")
                                 (= x7659 10)))))
                            (letrec*
                             ((g7660
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((x7661
                                    (begin
                                      (write '(funapp 819 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 820 35))
                                    (display "\n")
                                    (= x7661 32))))))
                             g7660)))))
                       g7658))))
                   g7656)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7663
                        (letrec*
                         ((x7664
                           (begin
                             (write '(funapp 829 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 829 58))
                           (display "\n")
                           (cdr x7664)))))
                      (begin
                        (write '(funapp 830 23))
                        (display "\n")
                        (cdr x7663)))))
                   g7662)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 835 59))
                        (display "\n")
                        (assert x7667))))
                    (g7666
                     (begin (write '(funapp 836 28)) (display "\n") (> x 0))))
                   g7666)))
               ($pc (begin (write '(funapp 838 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7668 #f)) g7668)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x7670
                        (begin
                          (write '(funapp 844 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 844 55))
                        (display "\n")
                        (cdr x7670)))))
                   g7669)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7673
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 849 59))
                        (display "\n")
                        (assert x7673))))
                    (g7672
                     (letrec*
                      ((x-cnd7674
                        (begin
                          (write '(funapp 852 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7674
                        (begin
                          (write '(funapp 853 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 853 49))
                          (display "\n")
                          (floor x))))))
                   g7672)))
               ($cmp (begin (write '(funapp 855 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7675
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 861 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7676
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x-cnd7677
                                 (begin
                                   (write '(funapp 869 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7677
                                 (begin
                                   (write '(funapp 870 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7678
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((val7250
                                    (letrec*
                                     ((x-cnd7679
                                       (begin
                                         (write '(funapp 878 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7679
                                       (letrec*
                                        ((x-cnd7680
                                          (begin
                                            (write '(funapp 881 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7680
                                          (begin
                                            (write '(funapp 882 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7681
                                     (if val7250
                                       val7250
                                       (letrec*
                                        ((val7251
                                          (letrec*
                                           ((x-cnd7682
                                             (begin
                                               (write '(funapp 891 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7682
                                             (letrec*
                                              ((x-cnd7683
                                                (begin
                                                  (write '(funapp 894 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7683
                                                (letrec*
                                                 ((x-cnd7684
                                                   (letrec*
                                                    ((x7686
                                                      (begin
                                                        (write
                                                         '(funapp 899 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7685
                                                      (begin
                                                        (write
                                                         '(funapp 900 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 901 53))
                                                      (display "\n")
                                                      (equal? x7686 x7685)))))
                                                 (if x-cnd7684
                                                   (letrec*
                                                    ((x7688
                                                      (begin
                                                        (write
                                                         '(funapp 904 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7687
                                                      (begin
                                                        (write
                                                         '(funapp 905 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 906 53))
                                                      (display "\n")
                                                      (equal? x7688 x7687)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7689
                                           (if val7251
                                             val7251
                                             (letrec*
                                              ((x-cnd7690
                                                (begin
                                                  (write '(funapp 915 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7690
                                                (letrec*
                                                 ((x-cnd7691
                                                   (begin
                                                     (write '(funapp 918 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7691
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 921 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7692
                                                       (letrec*
                                                        ((x-cnd7693
                                                          (letrec*
                                                           ((x7694
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  928
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 930 60))
                                                             (display "\n")
                                                             (= x7694 n)))))
                                                        (if x-cnd7693
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7695
                                                                  (letrec*
                                                                   ((val7252
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          939
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7696
                                                                      (if val7252
                                                                        val7252
                                                                        (letrec*
                                                                         ((x-cnd7697
                                                                           (letrec*
                                                                            ((x7699
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   948
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7698
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   952
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 955
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7699
                                                                               x7698)))))
                                                                         (if x-cnd7697
                                                                           (letrec*
                                                                            ((x7700
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   961
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 964
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7700)))
                                                                           #f)))))
                                                                    g7696))))
                                                                g7695))))
                                                           (letrec*
                                                            ((g7701
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   970
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7701))
                                                          #f))))
                                                     g7692))
                                                   #f))
                                                #f)))))
                                         g7689)))))
                                   g7681)))))
                             g7678)))))
                       g7676))))
                   g7675)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7702
                     (letrec*
                      ((x7703
                        (letrec*
                         ((x7704
                           (letrec*
                            ((x7705
                              (begin
                                (write '(funapp 988 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 988 61))
                              (display "\n")
                              (car x7705)))))
                         (begin
                           (write '(funapp 989 26))
                           (display "\n")
                           (car x7704)))))
                      (begin
                        (write '(funapp 990 23))
                        (display "\n")
                        (cdr x7703)))))
                   g7702)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7706
                     (letrec*
                      ((x7707
                        (letrec*
                         ((x7708
                           (letrec*
                            ((x7709
                              (begin
                                (write '(funapp 999 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 999 61))
                              (display "\n")
                              (cdr x7709)))))
                         (begin
                           (write '(funapp 1000 26))
                           (display "\n")
                           (car x7708)))))
                      (begin
                        (write '(funapp 1001 23))
                        (display "\n")
                        (car x7707)))))
                   g7706)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7710
                     (begin
                       (write '(funapp 1003 53))
                       (display "\n")
                       (eq? x y))))
                   g7710)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7711
                     (letrec*
                      ((x7713
                        (begin
                          (write '(funapp 1007 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1007 59))
                        (display "\n")
                        (assert x7713))))
                    (g7712
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1010 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7714
                         (if val7253
                           val7253
                           (letrec*
                            ((val7254
                              (begin
                                (write '(funapp 1016 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7715 (if val7254 val7254 #f)))
                             g7715)))))
                       g7714))))
                   g7712)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7716
                     (letrec*
                      ((x7719
                        (begin
                          (write '(funapp 1026 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1026 60))
                        (display "\n")
                        (assert x7719))))
                    (g7717
                     (letrec*
                      ((x7720
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1028 59))
                        (display "\n")
                        (assert x7720))))
                    (g7718
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1031 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1032 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7721
                         (begin
                           (write '(funapp 1034 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7722 res))
                       g7722))))
                   g7718)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7723
                     (begin
                       (write '(funapp 1037 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1037 57))
                          (display "\n")
                          '())))))
                   g7723)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7724
                     (letrec*
                      ((x7727
                        (begin
                          (write '(funapp 1041 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1041 58))
                        (display "\n")
                        (assert x7727))))
                    (g7725
                     (letrec*
                      ((x7728
                        (begin
                          (write '(funapp 1042 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1042 58))
                        (display "\n")
                        (assert x7728))))
                    (g7726
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1045 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7729
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1047 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7729))))
                   g7726)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7730
                     (letrec*
                      ((x7731
                        (letrec*
                         ((x7732
                           (begin
                             (write '(funapp 1055 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1055 58))
                           (display "\n")
                           (car x7732)))))
                      (begin
                        (write '(funapp 1056 23))
                        (display "\n")
                        (cdr x7731)))))
                   g7730)))
               (cdaddr
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
                                (write '(funapp 1065 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1065 61))
                              (display "\n")
                              (cdr x7736)))))
                         (begin
                           (write '(funapp 1066 26))
                           (display "\n")
                           (car x7735)))))
                      (begin
                        (write '(funapp 1067 23))
                        (display "\n")
                        (cdr x7734)))))
                   g7733)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7738
                        (letrec*
                         ((x7739
                           (begin
                             (write '(funapp 1075 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1075 58))
                           (display "\n")
                           (cdr x7739)))))
                      (begin
                        (write '(funapp 1076 23))
                        (display "\n")
                        (car x7738)))))
                   g7737)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7741
                        (letrec*
                         ((x7742
                           (begin
                             (write '(funapp 1083 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1083 58))
                           (display "\n")
                           (car x7742)))))
                      (begin
                        (write '(funapp 1084 23))
                        (display "\n")
                        (car x7741)))))
                   g7740)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7746
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7746))))
                    (g7744
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 1090 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1090 58))
                        (display "\n")
                        (assert x7747))))
                    (g7745
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1091 66))
                        (display "\n")
                        (not x7748)))))
                   g7745)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7750
                        (letrec*
                         ((x7751
                           (letrec*
                            ((x7752
                              (begin
                                (write '(funapp 1101 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1101 61))
                              (display "\n")
                              (car x7752)))))
                         (begin
                           (write '(funapp 1102 26))
                           (display "\n")
                           (car x7751)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (car x7750)))))
                   g7749)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1108 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1108 59))
                        (display "\n")
                        (assert x7755))))
                    (g7754
                     (begin (write '(funapp 1109 28)) (display "\n") (< x 0))))
                   g7754)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7756
                     (begin
                       (write '(funapp 1111 53))
                       (display "\n")
                       (memq e l))))
                   g7756)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7758
                        (letrec*
                         ((x7759
                           (begin
                             (write '(funapp 1117 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1117 58))
                           (display "\n")
                           (car x7759)))))
                      (begin
                        (write '(funapp 1118 23))
                        (display "\n")
                        (car x7758)))))
                   g7757)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7760
                     (begin (write '(funapp 1120 51)) (display "\n") '())))
                   g7760)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 1124 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1124 57))
                        (display "\n")
                        (assert x7763))))
                    (g7762
                     (letrec*
                      ((x-cnd7764
                        (begin
                          (write '(funapp 1127 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7764
                        (begin (write '(funapp 1129 24)) (display "\n") '())
                        (letrec*
                         ((x7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1131 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1131 61))
                              (display "\n")
                              (reverse x7768))))
                          (x7765
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 1132 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1132 61))
                              (display "\n")
                              (list x7766)))))
                         (begin
                           (write '(funapp 1133 26))
                           (display "\n")
                           (append x7767 x7765)))))))
                   g7762)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7770
                        (letrec*
                         ((x7771
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (car x7772)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (car x7771)))))
                      (begin
                        (write '(funapp 1144 23))
                        (display "\n")
                        (car x7770)))))
                   g7769)))
               (cddadr
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
                                (write '(funapp 1153 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1153 61))
                              (display "\n")
                              (car x7776)))))
                         (begin
                           (write '(funapp 1154 26))
                           (display "\n")
                           (cdr x7775)))))
                      (begin
                        (write '(funapp 1155 23))
                        (display "\n")
                        (cdr x7774)))))
                   g7773)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 1160 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1160 59))
                        (display "\n")
                        (assert x7779))))
                    (g7778
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1161 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1161 60))
                        (display "\n")
                        (= 1 x7780)))))
                   g7778)))
               (caadar
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7784)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (car x7783)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (car x7782)))))
                   g7781)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1178 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1178 59))
                        (display "\n")
                        (assert x7788))))
                    (g7786
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1179 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1179 60))
                        (display "\n")
                        (assert x7789))))
                    (g7787
                     (letrec*
                      ((x-cnd7790
                        (begin
                          (write '(funapp 1182 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7790
                        (letrec*
                         ((g7791
                           (begin
                             (write '(funapp 1184 42))
                             (display "\n")
                             (proc))))
                         g7791)
                        (letrec*
                         ((x-cnd7792
                           (letrec*
                            ((x7793
                              (begin
                                (write '(funapp 1187 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1187 58))
                              (display "\n")
                              (null? x7793)))))
                         (if x-cnd7792
                           (letrec*
                            ((g7794
                              (letrec*
                               ((x7795
                                 (begin
                                   (write '(funapp 1191 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1191 61))
                                 (display "\n")
                                 (proc x7795)))))
                            g7794)
                           (letrec*
                            ((x-cnd7796
                              (letrec*
                               ((x7797
                                 (begin
                                   (write '(funapp 1195 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1195 62))
                                 (display "\n")
                                 (null? x7797)))))
                            (if x-cnd7796
                              (letrec*
                               ((g7798
                                 (letrec*
                                  ((x7800
                                    (begin
                                      (write '(funapp 1200 43))
                                      (display "\n")
                                      (car args)))
                                   (x7799
                                    (begin
                                      (write '(funapp 1200 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1201 35))
                                    (display "\n")
                                    (proc x7800 x7799)))))
                               g7798)
                              (letrec*
                               ((x-cnd7801
                                 (letrec*
                                  ((x7802
                                    (begin
                                      (write '(funapp 1206 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1207 35))
                                    (display "\n")
                                    (null? x7802)))))
                               (if x-cnd7801
                                 (letrec*
                                  ((g7803
                                    (letrec*
                                     ((x7806
                                       (begin
                                         (write '(funapp 1212 46))
                                         (display "\n")
                                         (car args)))
                                      (x7805
                                       (begin
                                         (write '(funapp 1213 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7804
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1215 38))
                                       (display "\n")
                                       (proc x7806 x7805 x7804)))))
                                  g7803)
                                 (letrec*
                                  ((x-cnd7807
                                    (letrec*
                                     ((x7808
                                       (begin
                                         (write '(funapp 1220 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1221 38))
                                       (display "\n")
                                       (null? x7808)))))
                                  (if x-cnd7807
                                    (letrec*
                                     ((g7809
                                       (letrec*
                                        ((x7813
                                          (begin
                                            (write '(funapp 1226 49))
                                            (display "\n")
                                            (car args)))
                                         (x7812
                                          (begin
                                            (write '(funapp 1227 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7811
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7810
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1230 41))
                                          (display "\n")
                                          (proc x7813 x7812 x7811 x7810)))))
                                     g7809)
                                    (letrec*
                                     ((x-cnd7814
                                       (letrec*
                                        ((x7815
                                          (letrec*
                                           ((x7816
                                             (begin
                                               (write '(funapp 1237 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1238 44))
                                             (display "\n")
                                             (cdr x7816)))))
                                        (begin
                                          (write '(funapp 1239 41))
                                          (display "\n")
                                          (null? x7815)))))
                                     (if x-cnd7814
                                       (letrec*
                                        ((g7817
                                          (letrec*
                                           ((x7823
                                             (begin
                                               (write '(funapp 1244 52))
                                               (display "\n")
                                               (car args)))
                                            (x7822
                                             (begin
                                               (write '(funapp 1245 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7821
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7820
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7818
                                             (letrec*
                                              ((x7819
                                                (begin
                                                  (write '(funapp 1250 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1251 47))
                                                (display "\n")
                                                (car x7819)))))
                                           (begin
                                             (write '(funapp 1252 44))
                                             (display "\n")
                                             (proc
                                              x7823
                                              x7822
                                              x7821
                                              x7820
                                              x7818)))))
                                        g7817)
                                       (letrec*
                                        ((x-cnd7824
                                          (letrec*
                                           ((x7825
                                             (letrec*
                                              ((x7826
                                                (begin
                                                  (write '(funapp 1264 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1265 47))
                                                (display "\n")
                                                (cddr x7826)))))
                                           (begin
                                             (write '(funapp 1266 44))
                                             (display "\n")
                                             (null? x7825)))))
                                        (if x-cnd7824
                                          (letrec*
                                           ((g7827
                                             (letrec*
                                              ((x7835
                                                (begin
                                                  (write '(funapp 1271 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7834
                                                (begin
                                                  (write '(funapp 1272 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7833
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7832
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7830
                                                (letrec*
                                                 ((x7831
                                                   (begin
                                                     (write '(funapp 1277 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1278 50))
                                                   (display "\n")
                                                   (car x7831))))
                                               (x7828
                                                (letrec*
                                                 ((x7829
                                                   (begin
                                                     (write '(funapp 1281 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1282 50))
                                                   (display "\n")
                                                   (cadr x7829)))))
                                              (begin
                                                (write '(funapp 1283 47))
                                                (display "\n")
                                                (proc
                                                 x7835
                                                 x7834
                                                 x7833
                                                 x7832
                                                 x7830
                                                 x7828)))))
                                           g7827)
                                          (letrec*
                                           ((x-cnd7836
                                             (letrec*
                                              ((x7837
                                                (letrec*
                                                 ((x7838
                                                   (begin
                                                     (write '(funapp 1296 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1297 50))
                                                   (display "\n")
                                                   (cdddr x7838)))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (null? x7837)))))
                                           (if x-cnd7836
                                             (letrec*
                                              ((g7839
                                                (letrec*
                                                 ((x7849
                                                   (begin
                                                     (write '(funapp 1303 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7848
                                                   (begin
                                                     (write '(funapp 1304 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7847
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7846
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7844
                                                   (letrec*
                                                    ((x7845
                                                      (begin
                                                        (write
                                                         '(funapp 1309 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1310 53))
                                                      (display "\n")
                                                      (car x7845))))
                                                  (x7842
                                                   (letrec*
                                                    ((x7843
                                                      (begin
                                                        (write
                                                         '(funapp 1313 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1314 53))
                                                      (display "\n")
                                                      (cadr x7843))))
                                                  (x7840
                                                   (letrec*
                                                    ((x7841
                                                      (begin
                                                        (write
                                                         '(funapp 1317 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1318 53))
                                                      (display "\n")
                                                      (caddr x7841)))))
                                                 (begin
                                                   (write '(funapp 1319 50))
                                                   (display "\n")
                                                   (proc
                                                    x7849
                                                    x7848
                                                    x7847
                                                    x7846
                                                    x7844
                                                    x7842
                                                    x7840)))))
                                              g7839)
                                             (letrec*
                                              ((g7850
                                                (begin
                                                  (write '(funapp 1330 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7850)))))))))))))))))))
                   g7787)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7851
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 1336 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1336 57))
                        (display "\n")
                        (assert x7853))))
                    (g7852
                     (letrec*
                      ((x-cnd7854
                        (begin
                          (write '(funapp 1339 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7854
                        #f
                        (letrec*
                         ((x-cnd7855
                           (letrec*
                            ((x7856
                              (begin
                                (write '(funapp 1344 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1344 55))
                              (display "\n")
                              (equal? x7856 e)))))
                         (if x-cnd7855
                           l
                           (letrec*
                            ((x7857
                              (begin
                                (write '(funapp 1347 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1347 55))
                              (display "\n")
                              (member e x7857)))))))))
                   g7852)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7858
                     (letrec*
                      ((x7859
                        (letrec*
                         ((x7860
                           (letrec*
                            ((x7861
                              (begin
                                (write '(funapp 1356 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1356 61))
                              (display "\n")
                              (cdr x7861)))))
                         (begin
                           (write '(funapp 1357 26))
                           (display "\n")
                           (cdr x7860)))))
                      (begin
                        (write '(funapp 1358 23))
                        (display "\n")
                        (cdr x7859)))))
                   g7858)))
               (cadddr
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
                                (write '(funapp 1367 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1367 61))
                              (display "\n")
                              (cdr x7865)))))
                         (begin
                           (write '(funapp 1368 26))
                           (display "\n")
                           (cdr x7864)))))
                      (begin
                        (write '(funapp 1369 23))
                        (display "\n")
                        (car x7863)))))
                   g7862)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7866
                     (begin
                       (write '(funapp 1371 53))
                       (display "\n")
                       (random 42))))
                   g7866)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x7869
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1375 59))
                        (display "\n")
                        (assert x7869))))
                    (g7868
                     (begin (write '(funapp 1376 28)) (display "\n") (= x 0))))
                   g7868)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1383 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7871
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1385 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7871))))
                   g7870)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x7873
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1391 55))
                        (display "\n")
                        (car x7873)))))
                   g7872)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7875
                           (begin
                             (write '(funapp 1401 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7875
                           (letrec*
                            ((x7876
                              (begin
                                (write '(funapp 1403 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1403 55))
                              (display "\n")
                              (list? x7876)))
                           #f))))
                      (letrec*
                       ((g7877
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1406 52))
                             (display "\n")
                             (null? l)))))
                       g7877))))
                   g7874)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((x7879
                        (letrec*
                         ((x7880
                           (letrec*
                            ((x7881
                              (begin
                                (write '(funapp 1416 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1416 61))
                              (display "\n")
                              (car x7881)))))
                         (begin
                           (write '(funapp 1417 26))
                           (display "\n")
                           (cdr x7880)))))
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        (cdr x7879)))))
                   g7878)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x-cnd7883
                        (letrec*
                         ((x7884 #\0))
                         (begin
                           (write '(funapp 1425 58))
                           (display "\n")
                           (char<=? x7884 c)))))
                      (if x-cnd7883
                        (letrec*
                         ((x7885 #\9))
                         (begin
                           (write '(funapp 1427 48))
                           (display "\n")
                           (char<=? c x7885)))
                        #f))))
                   g7882)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x7888
                        (begin
                          (write '(funapp 1434 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1434 57))
                        (display "\n")
                        (assert x7888))))
                    (g7887
                     (letrec*
                      ((x-cnd7889
                        (begin
                          (write '(funapp 1437 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7889
                        #f
                        (letrec*
                         ((x-cnd7890
                           (letrec*
                            ((x7891
                              (begin
                                (write '(funapp 1442 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1442 56))
                              (display "\n")
                              (eqv? x7891 k)))))
                         (if x-cnd7890
                           (begin
                             (write '(funapp 1444 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 1445 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1445 55))
                              (display "\n")
                              (assq k x7892)))))))))
                   g7887)))
               (not (lambda (x) (letrec* ((g7893 (if x #f #t))) g7893)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7894
                     (begin
                       (write '(funapp 1449 50))
                       (display "\n")
                       (append l1 l2))))
                   g7894)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7897
                        (begin
                          (write '(funapp 1453 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1453 57))
                        (display "\n")
                        (assert x7897))))
                    (g7896
                     (letrec*
                      ((x-cnd7898
                        (begin
                          (write '(funapp 1456 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7898
                        #f
                        (letrec*
                         ((x-cnd7899
                           (letrec*
                            ((x7900
                              (begin
                                (write '(funapp 1461 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1461 55))
                              (display "\n")
                              (eq? x7900 e)))))
                         (if x-cnd7899
                           l
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 1464 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1464 55))
                              (display "\n")
                              (memq e x7901)))))))))
                   g7896)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x7903
                        (letrec*
                         ((x7904
                           (letrec*
                            ((x7905
                              (begin
                                (write '(funapp 1473 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1473 61))
                              (display "\n")
                              (car x7905)))))
                         (begin
                           (write '(funapp 1474 26))
                           (display "\n")
                           (cdr x7904)))))
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        (car x7903)))))
                   g7902)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((x7908
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7908))))
                    (g7907
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7909
                             (letrec*
                              ((x-cnd7910
                                (begin
                                  (write '(funapp 1488 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7910
                                0
                                (letrec*
                                 ((x7911
                                   (letrec*
                                    ((x7912
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1493 63))
                                      (display "\n")
                                      (rec x7912)))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (+ 1 x7911)))))))
                           g7909))))
                      (letrec*
                       ((g7913
                         (begin
                           (write '(funapp 1496 40))
                           (display "\n")
                           (rec l))))
                       g7913))))
                   g7907)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7917
                        (begin
                          (write '(funapp 1501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1501 58))
                        (display "\n")
                        (assert x7917))))
                    (g7915
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1502 58))
                        (display "\n")
                        (assert x7918))))
                    (g7916
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1505 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7919
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1507 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7919))))
                   g7916)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 1513 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1513 65))
                        (display "\n")
                        (not x7921)))))
                   g7920)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((x7923
                        (letrec*
                         ((x7924
                           (begin
                             (write '(funapp 1520 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1520 58))
                           (display "\n")
                           (car x7924)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cdr x7923)))))
                   g7922)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7927))))
                    (g7926
                     (letrec*
                      ((x-cnd7928
                        (begin
                          (write '(funapp 1529 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7928
                        #f
                        (letrec*
                         ((x-cnd7929
                           (letrec*
                            ((x7930
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1534 56))
                              (display "\n")
                              (equal? x7930 k)))))
                         (if x-cnd7929
                           (begin
                             (write '(funapp 1536 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7931
                              (begin
                                (write '(funapp 1537 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1537 55))
                              (display "\n")
                              (assoc k x7931)))))))))
                   g7926)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 1542 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1542 55))
                        (display "\n")
                        (car x7933)))))
                   g7932)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7937))))
                    (g7935
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7938))))
                    (g7936
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1549 63))
                        (display "\n")
                        (not x7939)))))
                   g7936)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1556 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7941
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1558 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7941))))
                   g7940)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1564 62))
                        (display "\n")
                        (assert x7945))))
                    (g7943
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1565 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1565 57))
                        (display "\n")
                        (assert x7946))))
                    (g7944
                     (letrec*
                      ((x-cnd7947
                        (begin
                          (write '(funapp 1568 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7947
                        #t
                        (letrec*
                         ((x-cnd7948
                           (begin
                             (write '(funapp 1572 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7948
                           (letrec*
                            ((g7949
                              (letrec*
                               ((x7951
                                 (begin
                                   (write '(funapp 1575 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1575 64))
                                 (display "\n")
                                 (f x7951))))
                             (g7950
                              (letrec*
                               ((x7952
                                 (begin
                                   (write '(funapp 1577 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1577 58))
                                 (display "\n")
                                 (for-each f x7952)))))
                            g7950)
                           (begin
                             (write '(funapp 1579 27))
                             (display "\n")
                             '())))))))
                   g7944)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1584 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1584 59))
                        (display "\n")
                        (assert x7955))))
                    (g7954
                     (letrec*
                      ((x-cnd7956
                        (begin
                          (write '(funapp 1586 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7956
                        (begin
                          (write '(funapp 1586 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7954)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7960
                        (begin
                          (write '(funapp 1591 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1591 58))
                        (display "\n")
                        (assert x7960))))
                    (g7958
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7961))))
                    (g7959
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1595 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7962
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1597 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7962))))
                   g7959)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7963
                     (letrec*
                      ((x7964
                        (letrec*
                         ((x7965
                           (letrec*
                            ((x7966
                              (begin
                                (write '(funapp 1607 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1607 61))
                              (display "\n")
                              (cdr x7966)))))
                         (begin
                           (write '(funapp 1608 26))
                           (display "\n")
                           (cdr x7965)))))
                      (begin
                        (write '(funapp 1609 23))
                        (display "\n")
                        (car x7964)))))
                   g7963)))
               (newline (lambda () (letrec* ((g7967 #f)) g7967)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7970
                        (letrec*
                         ((x7971
                           (begin
                             (write '(funapp 1617 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1617 58))
                           (display "\n")
                           (abs x7971))))
                       (x7969
                        (begin
                          (write '(funapp 1618 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (/ x7970 x7969)))))
                   g7968)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1625 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1625 59))
                        (display "\n")
                        (assert x7974))))
                    (g7973
                     (letrec*
                      ((x7975
                        (begin
                          (write '(funapp 1626 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1626 56))
                        (display "\n")
                        (not x7975)))))
                   g7973)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7976
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1631 57))
                        (display "\n")
                        (assert x7980))))
                    (g7977
                     (letrec*
                      ((x7981
                        (begin
                          (write '(funapp 1632 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1632 63))
                        (display "\n")
                        (assert x7981))))
                    (g7978
                     (letrec*
                      ((x7982
                        (letrec*
                         ((x7983
                           (begin
                             (write '(funapp 1635 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1635 61))
                           (display "\n")
                           (< index x7983)))))
                      (begin
                        (write '(funapp 1636 23))
                        (display "\n")
                        (assert x7982))))
                    (g7979
                     (letrec*
                      ((x-cnd7984
                        (begin
                          (write '(funapp 1639 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7984
                        (begin
                          (write '(funapp 1641 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7986
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (cdr l)))
                          (x7985
                           (begin
                             (write '(funapp 1643 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1644 26))
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
                          (write '(funapp 1651 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7988
                        a
                        (letrec*
                         ((x7989
                           (begin
                             (write '(funapp 1654 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1654 57))
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
                             (write '(funapp 1663 36))
                             (display "\n")
                             (<= n 0))))
                         (letrec*
                          ((g7992
                            (if val7261
                              val7261
                              (begin
                                (write '(funapp 1665 55))
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
                                (write '(funapp 1670 51))
                                (display "\n")
                                (- m 1))))
                            (begin
                              (write '(funapp 1670 61))
                              (display "\n")
                              (mult n x7994)))))
                         (begin
                           (write '(funapp 1671 26))
                           (display "\n")
                           (+ n x7993)))))))
                   g7990)))
               (sqr
                (lambda (n)
                  (letrec*
                   ((g7995
                     (begin
                       (write '(funapp 1673 50))
                       (display "\n")
                       (mult n n))))
                   g7995))))
              (letrec*
               ((g7996
                 (begin
                   (write '(funapp 1676 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1677 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x7999
                          (letrec*
                           ((xj7395
                             (begin
                               (write '(funapp 1681 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1681 37))
                                  (display "\n")
                                  'module))))
                            (xk7396
                             (begin
                               (write '(funapp 1681 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1681 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8000
                              (begin
                                (write '(funapp 1684 27))
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
                                                   (write '(funapp 1693 50))
                                                   (display "\n")
                                                   (>=/c 0))))
                                               (begin
                                                 (write '(funapp 1694 42))
                                                 (display "\n")
                                                 (and/c integer?/c x8007))))
                                             (x8003
                                              (letrec*
                                               ((x8005
                                                 (begin
                                                   (write '(funapp 1698 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7399
                                                    k7400
                                                    g7397)))
                                                (x8004
                                                 (begin
                                                   (write '(funapp 1700 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7399
                                                    k7400
                                                    g7398))))
                                               (begin
                                                 (write '(funapp 1701 42))
                                                 (display "\n")
                                                 (f7401 x8005 x8004)))))
                                            (begin
                                              (write '(funapp 1702 39))
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
                          (write '(funapp 1711 21))
                          (display "\n")
                          (x7999 x7998 x7997)))
                       (letrec*
                        ((xj7402
                          (begin
                            (write '(funapp 1713 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1713 34))
                               (display "\n")
                               'module))))
                         (xk7403
                          (begin
                            (write '(funapp 1713 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1713 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8008
                           (begin
                             (write '(funapp 1716 24))
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
                                             (write '(funapp 1723 44))
                                             (display "\n")
                                             (integer?/c j7405 k7406 g7404))))
                                         (letrec*
                                          ((g8011
                                            (letrec*
                                             ((x8013
                                               (begin
                                                 (write '(funapp 1728 42))
                                                 (display "\n")
                                                 ((lambda (n)
                                                    (letrec*
                                                     ((g8014
                                                       (letrec*
                                                        ((x8015
                                                          (begin
                                                            (write
                                                             '(funapp 1732 57))
                                                            (display "\n")
                                                            (>=/c n))))
                                                        (begin
                                                          (write
                                                           '(funapp 1733 49))
                                                          (display "\n")
                                                          (and/c
                                                           integer?/c
                                                           x8015)))))
                                                     g8014))
                                                  x7408)))
                                              (x8012
                                               (begin
                                                 (write '(funapp 1736 48))
                                                 (display "\n")
                                                 (f7407 x7408))))
                                             (begin
                                               (write '(funapp 1737 40))
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
           g7422))))
       g7420)))
    g7419)))
