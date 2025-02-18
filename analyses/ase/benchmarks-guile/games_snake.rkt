(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7404 #t)) g7404)))
    (meta (lambda (v) (letrec* ((g7405 v)) g7405)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7406
          (letrec*
           ((g7407
             (letrec*
              ((x-e7408 lst))
              (letrec*
               ((v1742 x-e7408))
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
                   ((x-cnd7409
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7409
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
           g7407)))
        g7406)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7410 (lambda (v) (letrec* ((g7411 v)) g7411)))) g7410)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7412
          (letrec*
           ((x7413 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7413)))))
        g7412))))
   (letrec*
    ((g7414
      (letrec*
       ((g7415
         (letrec*
          ((orig-+ +)
           (orig-- -)
           (orig-* *)
           (orig-/ /)
           (orig-car car)
           (orig-cdr cdr)
           (orig-cons cons)
           (orig-vector-ref vector-ref)
           (orig-vector-set vector-set!))
          (letrec*
           ((g7416 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7417
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7418
                     (lambda (k j lst)
                       (letrec*
                        ((g7419
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7420
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7420))
                             lst))))
                        g7419))))
                   g7418)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7421
                     (letrec*
                      ((x-cnd7422
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7422
                        g7265
                        (begin
                          (write '(blame g7263 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7421)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7423
                     (letrec*
                      ((x-cnd7424
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7424
                        g7268
                        (begin
                          (write '(blame g7266 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7423)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7425
                     (letrec*
                      ((x-cnd7426
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7426
                        g7271
                        (begin
                          (write '(blame g7269 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7425)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7427
                     (letrec*
                      ((x-cnd7428
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7429 #t)) g7429)) g7274))))
                      (if x-cnd7428
                        g7274
                        (begin
                          (write '(blame g7272 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7427)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7430
                     (letrec*
                      ((x-cnd7431
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7432 #t)) g7432)) g7277))))
                      (if x-cnd7431
                        g7277
                        (begin
                          (write '(blame g7275 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7430)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7433
                     (letrec*
                      ((x-cnd7434
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7434
                        g7280
                        (begin
                          (write '(blame g7278 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7433)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7435
                     (letrec*
                      ((x-cnd7436
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7436
                        g7283
                        (begin
                          (write '(blame g7281 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7435)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7437
                     (letrec*
                      ((x-cnd7438
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7438
                        g7286
                        (begin
                          (write '(blame g7284 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7437)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7439
                     (letrec*
                      ((x-cnd7440
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7440
                        g7289
                        (begin
                          (write '(blame g7287 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7439)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7441
                     (lambda (k j v)
                       (letrec*
                        ((g7442
                          (letrec*
                           ((x-cnd7443
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7443
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7442))))
                   g7441)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7444
                     (lambda (k j v)
                       (letrec*
                        ((g7445
                          (letrec*
                           ((x-cnd7446
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7446
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7450
                                (letrec*
                                 ((x7451
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7451))))
                               (x7447
                                (letrec*
                                 ((x7449
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7448
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7449 k j x7448)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7450 x7447)))))))
                        g7445))))
                   g7444)))
               (any? (lambda (v) (letrec* ((g7452 #t)) g7452)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x7454
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7454)))))
                   g7453)))
               (nonzero?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7457
                                (letrec*
                                 ((x7458
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7458)))))
                              g7457))
                           g7292))))
                      (if x-cnd7456
                        g7292
                        (begin
                          (write '(blame g7290 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7455)))
               (meta (lambda (v) (letrec* ((g7459 v)) g7459)))
               (+
                (letrec*
                 ((xj7293
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7294
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7460
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7297 k7298 f7299)
                         (letrec*
                          ((g7462
                            (lambda (g7295 g7296)
                              (letrec*
                               ((g7463
                                 (letrec*
                                  ((x7464
                                    (letrec*
                                     ((x7466
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7297 k7298 g7295)))
                                      (x7465
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7297 k7298 g7296))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7299 x7466 x7465)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7297 k7298 x7464)))))
                               g7463))))
                          g7462))
                       xj7293
                       xk7294
                       (lambda (a b)
                         (letrec*
                          ((g7461
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7461))))))
                  g7460)))
               (-
                (letrec*
                 ((xj7300
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7301
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7467
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7304 k7305 f7306)
                         (letrec*
                          ((g7469
                            (lambda (g7302 g7303)
                              (letrec*
                               ((g7470
                                 (letrec*
                                  ((x7471
                                    (letrec*
                                     ((x7473
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7304 k7305 g7302)))
                                      (x7472
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7304 k7305 g7303))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7306 x7473 x7472)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7304 k7305 x7471)))))
                               g7470))))
                          g7469))
                       xj7300
                       xk7301
                       (lambda (a b)
                         (letrec*
                          ((g7468
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7468))))))
                  g7467)))
               (*
                (letrec*
                 ((xj7307
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7308
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7474
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7311 k7312 f7313)
                         (letrec*
                          ((g7476
                            (lambda (g7309 g7310)
                              (letrec*
                               ((g7477
                                 (letrec*
                                  ((x7478
                                    (letrec*
                                     ((x7480
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7311 k7312 g7309)))
                                      (x7479
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7311 k7312 g7310))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7313 x7480 x7479)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7311 k7312 x7478)))))
                               g7477))))
                          g7476))
                       xj7307
                       xk7308
                       (lambda (a b)
                         (letrec*
                          ((g7475
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7475))))))
                  g7474)))
               (/
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7481
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7483
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7484
                                 (letrec*
                                  ((x7485
                                    (letrec*
                                     ((x7487
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7486
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7320 x7487 x7486)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7485)))))
                               g7484))))
                          g7483))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7482
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7482))))))
                  g7481)))
               (car
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7488
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7490
                            (lambda (g7323)
                              (letrec*
                               ((g7491
                                 (letrec*
                                  ((x7492
                                    (letrec*
                                     ((x7493
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7326 x7493)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7324 k7325 x7492)))))
                               g7491))))
                          g7490))
                       xj7321
                       xk7322
                       (lambda (p)
                         (letrec*
                          ((g7489
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7489))))))
                  g7488)))
               (cdr
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7494
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7330 k7331 f7332)
                         (letrec*
                          ((g7496
                            (lambda (g7329)
                              (letrec*
                               ((g7497
                                 (letrec*
                                  ((x7498
                                    (letrec*
                                     ((x7499
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7330 k7331 g7329))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7332 x7499)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7330 k7331 x7498)))))
                               g7497))))
                          g7496))
                       xj7327
                       xk7328
                       (lambda (p)
                         (letrec*
                          ((g7495
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7495))))))
                  g7494)))
               (cons
                (letrec*
                 ((xj7333
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7334
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7500
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7337 k7338 f7339)
                         (letrec*
                          ((g7502
                            (lambda (g7335 g7336)
                              (letrec*
                               ((g7503
                                 (letrec*
                                  ((x7504
                                    (letrec*
                                     ((x7506
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7337 k7338 g7335)))
                                      (x7505
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7337 k7338 g7336))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7339 x7506 x7505)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7337 k7338 x7504)))))
                               g7503))))
                          g7502))
                       xj7333
                       xk7334
                       (lambda (a b)
                         (letrec*
                          ((g7501
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7501))))))
                  g7500)))
               (vector-ref
                (letrec*
                 ((xj7340
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7341
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7507
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7343 k7344 f7345)
                         (letrec*
                          ((g7509
                            (lambda (g7342)
                              (letrec*
                               ((g7510
                                 (letrec*
                                  ((x7511
                                    (letrec*
                                     ((x7512
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7343 k7344 g7342))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7345 x7512)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7343 k7344 x7511)))))
                               g7510))))
                          g7509))
                       xj7340
                       xk7341
                       (lambda (v i)
                         (letrec*
                          ((g7508
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7508))))))
                  g7507)))
               (vector-set!
                (letrec*
                 ((xj7346
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7347
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7513
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7350 k7351 f7352)
                         (letrec*
                          ((g7515
                            (lambda (g7348 g7349)
                              (letrec*
                               ((g7516
                                 (letrec*
                                  ((x7517
                                    (letrec*
                                     ((x7519
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7350 k7351 g7348)))
                                      (x7518
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7350 k7351 g7349))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7352 x7519 x7518)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7350 k7351 x7517)))))
                               g7516))))
                          g7515))
                       xj7346
                       xk7347
                       (lambda (vec i v)
                         (letrec*
                          ((g7514
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7514))))))
                  g7513)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7520
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7520)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7521
                     (letrec*
                      ((x7522
                        (letrec*
                         ((x7523
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7523)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7522)))))
                   g7521)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7524
                     (letrec*
                      ((x7527
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7527))))
                    (g7525
                     (letrec*
                      ((x7528
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7528))))
                    (g7526
                     (letrec*
                      ((x-cnd7529
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7529
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7532
                           (letrec*
                            ((x7533
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7533))))
                          (x7530
                           (letrec*
                            ((x7531
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7531)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7532 x7530)))))))
                   g7526)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7534
                     (letrec*
                      ((x7535
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7535)))))
                   g7534)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7536
                     (letrec*
                      ((x7537
                        (letrec*
                         ((x7538
                           (letrec*
                            ((x7539
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7539)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7538)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7537)))))
                   g7536)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7540
                     (letrec*
                      ((x7541
                        (letrec*
                         ((x7542
                           (letrec*
                            ((x7543
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7543)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7542)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7541)))))
                   g7540)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7544
                     (letrec*
                      ((x7547
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7547))))
                    (g7545
                     (letrec*
                      ((x7548
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7548))))
                    (g7546
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 484 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 485 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7549
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7550 res))
                       g7550))))
                   g7546)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7551
                     (letrec*
                      ((x7552
                        (letrec*
                         ((x7553
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7553)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7552)))))
                   g7551)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7554
                     (letrec*
                      ((x7555
                        (letrec*
                         ((x7556
                           (letrec*
                            ((x7557
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7557)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7556)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7555)))))
                   g7554)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7558
                     (letrec*
                      ((x7560
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7560))))
                    (g7559
                     (letrec*
                      ((x-cnd7561
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7561
                        #f
                        (letrec*
                         ((x-cnd7562
                           (letrec*
                            ((x7563
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7563 k)))))
                         (if x-cnd7562
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7564
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7564)))))))))
                   g7559)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7565
                     (letrec*
                      ((x7566
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7566)))))
                   g7565)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7567
                     (letrec*
                      ((x7569
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7569))))
                    (g7568
                     (letrec*
                      ((x-cnd7570
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7570
                        ""
                        (letrec*
                         ((x7573
                           (letrec*
                            ((x7574
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7574))))
                          (x7571
                           (letrec*
                            ((x7572
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7572)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7573 x7571)))))))
                   g7568)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7575
                     (letrec*
                      ((x7578
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7578))))
                    (g7576
                     (letrec*
                      ((x7579
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7579))))
                    (g7577
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7580
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7580))))
                   g7577)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7581
                     (letrec*
                      ((x7582
                        (letrec*
                         ((x7583
                           (letrec*
                            ((x7584
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7584)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7583)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7582)))))
                   g7581)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7585
                     (letrec*
                      ((x7588
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7588))))
                    (g7586
                     (letrec*
                      ((x7589
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7589))))
                    (g7587
                     (letrec*
                      ((x-cnd7590
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7590
                        x
                        (letrec*
                         ((x7592
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7591
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7592 x7591)))))))
                   g7587)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7593
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7593)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7594
                     (letrec*
                      ((x-cnd7595
                        (letrec*
                         ((x7596 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7596)))))
                      (if x-cnd7595
                        (letrec*
                         ((x7597 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7597)))
                        #f))))
                   g7594)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7598
                     (letrec*
                      ((x7600
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7600))))
                    (g7599
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7601
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7602 (if val7243 val7243 #f)))
                             g7602)))))
                       g7601))))
                   g7599)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7604
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7604 9)))))
                      (letrec*
                       ((g7605
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7606
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7606 10)))))
                            (letrec*
                             ((g7607
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7608
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7608 32))))))
                             g7607)))))
                       g7605))))
                   g7603)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (letrec*
                         ((x7611
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7611)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7610)))))
                   g7609)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7614))))
                    (g7613
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7613)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7615 #f)) g7615)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7617)))))
                   g7616)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7620))))
                    (g7619
                     (letrec*
                      ((x-cnd7621
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7621
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7619)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7623
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7624
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7624
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7625
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7626
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7626
                                       (letrec*
                                        ((x-cnd7627
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7627
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7628
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7629
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7629
                                             (letrec*
                                              ((x-cnd7630
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7630
                                                (letrec*
                                                 ((x-cnd7631
                                                   (letrec*
                                                    ((x7633
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7632
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7633 x7632)))))
                                                 (if x-cnd7631
                                                   (letrec*
                                                    ((x7635
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7634
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7635 x7634)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7636
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7637
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7637
                                                (letrec*
                                                 ((x-cnd7638
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7638
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7639
                                                       (letrec*
                                                        ((x-cnd7640
                                                          (letrec*
                                                           ((x7641
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  743
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 745 60))
                                                             (display "\n")
                                                             (= x7641 n)))))
                                                        (if x-cnd7640
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7642
                                                                  (letrec*
                                                                   ((val7250
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          754
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7643
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7644
                                                                           (letrec*
                                                                            ((x7646
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   763
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7645
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   767
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 770
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7646
                                                                               x7645)))))
                                                                         (if x-cnd7644
                                                                           (letrec*
                                                                            ((x7647
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   776
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 779
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7647)))
                                                                           #f)))))
                                                                    g7643))))
                                                                g7642))))
                                                           (letrec*
                                                            ((g7648
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7648))
                                                          #f))))
                                                     g7639))
                                                   #f))
                                                #f)))))
                                         g7636)))))
                                   g7628)))))
                             g7625)))))
                       g7623))))
                   g7622)))
               (cdaaar
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
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7652)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7651)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7650)))))
                   g7649)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7654
                        (letrec*
                         ((x7655
                           (letrec*
                            ((x7656
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7656)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7655)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7654)))))
                   g7653)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7657
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7657)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7660))))
                    (g7659
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7661
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7662 (if val7252 val7252 #f)))
                             g7662)))))
                       g7661))))
                   g7659)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7666
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7666))))
                    (g7664
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7667))))
                    (g7665
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 846 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 847 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7668
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7669 res))
                       g7669))))
                   g7665)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7670
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7670)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7674
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7674))))
                    (g7672
                     (letrec*
                      ((x7675
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7675))))
                    (g7673
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7676
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7676))))
                   g7673)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x7678
                        (letrec*
                         ((x7679
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7679)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7678)))))
                   g7677)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x7681
                        (letrec*
                         ((x7682
                           (letrec*
                            ((x7683
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7683)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7682)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7681)))))
                   g7680)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((x7685
                        (letrec*
                         ((x7686
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7686)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7685)))))
                   g7684)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((x7688
                        (letrec*
                         ((x7689
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7689)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7688)))))
                   g7687)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7690
                     (letrec*
                      ((x7693
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7693))))
                    (g7691
                     (letrec*
                      ((x7694
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7694))))
                    (g7692
                     (letrec*
                      ((x7695
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7695)))))
                   g7692)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7696
                     (letrec*
                      ((x7697
                        (letrec*
                         ((x7698
                           (letrec*
                            ((x7699
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7699)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7698)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7697)))))
                   g7696)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7700
                     (letrec*
                      ((x7702
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7702))))
                    (g7701
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7701)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7703
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7703)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7704
                     (letrec*
                      ((x7705
                        (letrec*
                         ((x7706
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7706)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7705)))))
                   g7704)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7707
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7707)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7708
                     (letrec*
                      ((x7710
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7710))))
                    (g7709
                     (letrec*
                      ((x-cnd7711
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7711
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7714
                           (letrec*
                            ((x7715
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7715))))
                          (x7712
                           (letrec*
                            ((x7713
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7713)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7714 x7712)))))))
                   g7709)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7716
                     (letrec*
                      ((x7717
                        (letrec*
                         ((x7718
                           (letrec*
                            ((x7719
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7719)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7718)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7717)))))
                   g7716)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7720
                     (letrec*
                      ((x7721
                        (letrec*
                         ((x7722
                           (letrec*
                            ((x7723
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7723)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7722)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7721)))))
                   g7720)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7724
                     (letrec*
                      ((x7726
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7726))))
                    (g7725
                     (letrec*
                      ((x7727
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7727)))))
                   g7725)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7728
                     (letrec*
                      ((x7729
                        (letrec*
                         ((x7730
                           (letrec*
                            ((x7731
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7731)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7730)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7729)))))
                   g7728)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7732
                     (letrec*
                      ((x7735
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7735))))
                    (g7733
                     (letrec*
                      ((x7736
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7736))))
                    (g7734
                     (letrec*
                      ((x-cnd7737
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7737
                        (letrec*
                         ((g7738
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7738)
                        (letrec*
                         ((x-cnd7739
                           (letrec*
                            ((x7740
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7740)))))
                         (if x-cnd7739
                           (letrec*
                            ((g7741
                              (letrec*
                               ((x7742
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7742)))))
                            g7741)
                           (letrec*
                            ((x-cnd7743
                              (letrec*
                               ((x7744
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7744)))))
                            (if x-cnd7743
                              (letrec*
                               ((g7745
                                 (letrec*
                                  ((x7747
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7746
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7747 x7746)))))
                               g7745)
                              (letrec*
                               ((x-cnd7748
                                 (letrec*
                                  ((x7749
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7749)))))
                               (if x-cnd7748
                                 (letrec*
                                  ((g7750
                                    (letrec*
                                     ((x7753
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7752
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7751
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7753 x7752 x7751)))))
                                  g7750)
                                 (letrec*
                                  ((x-cnd7754
                                    (letrec*
                                     ((x7755
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7755)))))
                                  (if x-cnd7754
                                    (letrec*
                                     ((g7756
                                       (letrec*
                                        ((x7760
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7759
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7758
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7757
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7760 x7759 x7758 x7757)))))
                                     g7756)
                                    (letrec*
                                     ((x-cnd7761
                                       (letrec*
                                        ((x7762
                                          (letrec*
                                           ((x7763
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7763)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7762)))))
                                     (if x-cnd7761
                                       (letrec*
                                        ((g7764
                                          (letrec*
                                           ((x7770
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7769
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7768
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7767
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7765
                                             (letrec*
                                              ((x7766
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7766)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7770
                                              x7769
                                              x7768
                                              x7767
                                              x7765)))))
                                        g7764)
                                       (letrec*
                                        ((x-cnd7771
                                          (letrec*
                                           ((x7772
                                             (letrec*
                                              ((x7773
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x7773)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x7772)))))
                                        (if x-cnd7771
                                          (letrec*
                                           ((g7774
                                             (letrec*
                                              ((x7782
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7781
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7780
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7779
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7777
                                                (letrec*
                                                 ((x7778
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x7778))))
                                               (x7775
                                                (letrec*
                                                 ((x7776
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x7776)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x7782
                                                 x7781
                                                 x7780
                                                 x7779
                                                 x7777
                                                 x7775)))))
                                           g7774)
                                          (letrec*
                                           ((x-cnd7783
                                             (letrec*
                                              ((x7784
                                                (letrec*
                                                 ((x7785
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x7785)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x7784)))))
                                           (if x-cnd7783
                                             (letrec*
                                              ((g7786
                                                (letrec*
                                                 ((x7796
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7795
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7794
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7793
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7791
                                                   (letrec*
                                                    ((x7792
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x7792))))
                                                  (x7789
                                                   (letrec*
                                                    ((x7790
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x7790))))
                                                  (x7787
                                                   (letrec*
                                                    ((x7788
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x7788)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x7796
                                                    x7795
                                                    x7794
                                                    x7793
                                                    x7791
                                                    x7789
                                                    x7787)))))
                                              g7786)
                                             (letrec*
                                              ((g7797
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7797)))))))))))))))))))
                   g7734)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x7800))))
                    (g7799
                     (letrec*
                      ((x-cnd7801
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7801
                        #f
                        (letrec*
                         ((x-cnd7802
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x7803 e)))))
                         (if x-cnd7802
                           l
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x7804)))))))))
                   g7799)))
               (cddddr
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
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x7808)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x7807)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x7806)))))
                   g7805)))
               (cadddr
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
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x7812)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x7811)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x7810)))))
                   g7809)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7813
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g7813)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x7816))))
                    (g7815
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g7815)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7818
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7818))))
                   g7817)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x7820)))))
                   g7819)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7821
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7822
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7822
                           (letrec*
                            ((x7823
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x7823)))
                           #f))))
                      (letrec*
                       ((g7824
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g7824))))
                   g7821)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7825
                     (letrec*
                      ((x7826
                        (letrec*
                         ((x7827
                           (letrec*
                            ((x7828
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x7828)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x7827)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x7826)))))
                   g7825)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7829
                     (letrec*
                      ((x-cnd7830
                        (letrec*
                         ((x7831 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x7831 c)))))
                      (if x-cnd7830
                        (letrec*
                         ((x7832 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x7832)))
                        #f))))
                   g7829)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7833
                     (letrec*
                      ((x7835
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x7835))))
                    (g7834
                     (letrec*
                      ((x-cnd7836
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7836
                        #f
                        (letrec*
                         ((x-cnd7837
                           (letrec*
                            ((x7838
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x7838 k)))))
                         (if x-cnd7837
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7839
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x7839)))))))))
                   g7834)))
               (not (lambda (x) (letrec* ((g7840 (if x #f #t))) g7840)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7841
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g7841)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7844
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x7844))))
                    (g7843
                     (letrec*
                      ((x-cnd7845
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7845
                        #f
                        (letrec*
                         ((x-cnd7846
                           (letrec*
                            ((x7847
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x7847 e)))))
                         (if x-cnd7846
                           l
                           (letrec*
                            ((x7848
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x7848)))))))))
                   g7843)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7850
                        (letrec*
                         ((x7851
                           (letrec*
                            ((x7852
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x7852)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x7851)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x7850)))))
                   g7849)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((x7855
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x7855))))
                    (g7854
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7856
                             (letrec*
                              ((x-cnd7857
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7857
                                0
                                (letrec*
                                 ((x7858
                                   (letrec*
                                    ((x7859
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x7859)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x7858)))))))
                           g7856))))
                      (letrec*
                       ((g7860
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g7860))))
                   g7854)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x7864
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7864))))
                    (g7862
                     (letrec*
                      ((x7865
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x7865))))
                    (g7863
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7866
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7866))))
                   g7863)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x7868
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x7868)))))
                   g7867)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x7870
                        (letrec*
                         ((x7871
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x7871)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x7870)))))
                   g7869)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x7874
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x7874))))
                    (g7873
                     (letrec*
                      ((x-cnd7875
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7875
                        #f
                        (letrec*
                         ((x-cnd7876
                           (letrec*
                            ((x7877
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x7877 k)))))
                         (if x-cnd7876
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7878
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x7878)))))))))
                   g7873)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7880
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x7880)))))
                   g7879)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((x7884
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7884))))
                    (g7882
                     (letrec*
                      ((x7885
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x7885))))
                    (g7883
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x7886)))))
                   g7883)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7888
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7888))))
                   g7887)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7892
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x7892))))
                    (g7890
                     (letrec*
                      ((x7893
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x7893))))
                    (g7891
                     (letrec*
                      ((x-cnd7894
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7894
                        #t
                        (letrec*
                         ((x-cnd7895
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7895
                           (letrec*
                            ((g7896
                              (letrec*
                               ((x7898
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x7898))))
                             (g7897
                              (letrec*
                               ((x7899
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x7899)))))
                            g7897)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g7891)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x7902
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x7902))))
                    (g7901
                     (letrec*
                      ((x-cnd7903
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7903
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7901)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7907
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7907))))
                    (g7905
                     (letrec*
                      ((x7908
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x7908))))
                    (g7906
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7909
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7909))))
                   g7906)))
               (caddar
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
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x7913)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x7912)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x7911)))))
                   g7910)))
               (newline (lambda () (letrec* ((g7914 #f)) g7914)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7917
                        (letrec*
                         ((x7918
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x7918))))
                       (x7916
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x7917 x7916)))))
                   g7915)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x7921))))
                    (g7920
                     (letrec*
                      ((x7922
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x7922)))))
                   g7920)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x7927))))
                    (g7924
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x7928))))
                    (g7925
                     (letrec*
                      ((x7929
                        (letrec*
                         ((x7930
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x7930)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x7929))))
                    (g7926
                     (letrec*
                      ((x-cnd7931
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7931
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7933
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x7932
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x7933 x7932)))))))
                   g7926)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x-cnd7935
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7935
                        a
                        (letrec*
                         ((x7936
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x7936)))))))
                   g7934)))
               (image
                (lambda ()
                  (letrec*
                   ((g7937
                     (begin
                       (write '(funapp 1472 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 1472 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 1472 62))
                          (display "\n")
                          '())))))
                   g7937)))
               (image?
                (lambda (image7388)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1477 39))
                          (display "\n")
                          (car image7388))))
                      (begin
                        (write '(funapp 1477 57))
                        (display "\n")
                        (eq?
                         x7939
                         (begin
                           (write '(funapp 1477 67))
                           (display "\n")
                           'image))))))
                   g7938)))
               (image/c
                (lambda (j7354 k7355 v7353)
                  (letrec*
                   ((g7940
                     (begin
                       (write '(funapp 1481 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 1481 47))
                          (display "\n")
                          '())))))
                   g7940)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g7941
                     (begin (write '(funapp 1482 57)) (display "\n") (image))))
                   g7941)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g7942
                     (begin (write '(funapp 1483 60)) (display "\n") (image))))
                   g7942)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g7943
                     (begin (write '(funapp 1485 54)) (display "\n") (image))))
                   g7943)))
               (posn
                (lambda (x7390 y7391)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7945
                        (letrec*
                         ((x7946
                           (begin
                             (write '(funapp 1493 34))
                             (display "\n")
                             (orig-cons
                              y7391
                              (begin
                                (write '(funapp 1493 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1494 26))
                           (display "\n")
                           (orig-cons x7390 x7946)))))
                      (begin
                        (write '(funapp 1495 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1495 33)) (display "\n") 'posn)
                         x7945)))))
                   g7944)))
               (posn?
                (lambda (posn7389)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1501 39))
                          (display "\n")
                          (car posn7389))))
                      (begin
                        (write '(funapp 1501 56))
                        (display "\n")
                        (eq?
                         x7948
                         (begin
                           (write '(funapp 1501 66))
                           (display "\n")
                           'posn))))))
                   g7947)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1507 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1507 57))
                        (display "\n")
                        (orig-car x7950)))))
                   g7949)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7952
                        (letrec*
                         ((x7953
                           (begin
                             (write '(funapp 1515 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1515 60))
                           (display "\n")
                           (orig-cdr x7953)))))
                      (begin
                        (write '(funapp 1516 23))
                        (display "\n")
                        (orig-car x7952)))))
                   g7951)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x-cnd7955
                        (letrec*
                         ((x7957
                           (begin
                             (write '(funapp 1525 34))
                             (display "\n")
                             (posn-x p1)))
                          (x7956
                           (begin
                             (write '(funapp 1525 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1526 26))
                           (display "\n")
                           (= x7957 x7956)))))
                      (if x-cnd7955
                        (letrec*
                         ((x7959
                           (begin
                             (write '(funapp 1529 34))
                             (display "\n")
                             (posn-y p1)))
                          (x7958
                           (begin
                             (write '(funapp 1529 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1530 26))
                           (display "\n")
                           (= x7959 x7958)))
                        #f))))
                   g7954)))
               (snake
                (lambda (dir7395 segs7396)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7961
                        (letrec*
                         ((x7962
                           (begin
                             (write '(funapp 1540 34))
                             (display "\n")
                             (orig-cons
                              segs7396
                              (begin
                                (write '(funapp 1540 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1541 26))
                           (display "\n")
                           (orig-cons dir7395 x7962)))))
                      (begin
                        (write '(funapp 1542 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1542 33))
                           (display "\n")
                           'snake)
                         x7961)))))
                   g7960)))
               (snake?
                (lambda (snake7394)
                  (letrec*
                   ((g7963
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1548 39))
                          (display "\n")
                          (car snake7394))))
                      (begin
                        (write '(funapp 1548 57))
                        (display "\n")
                        (eq?
                         x7964
                         (begin
                           (write '(funapp 1548 67))
                           (display "\n")
                           'snake))))))
                   g7963)))
               (snake-dir
                (lambda (snake)
                  (letrec*
                   ((g7965
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 1554 39))
                          (display "\n")
                          (orig-cdr snake))))
                      (begin
                        (write '(funapp 1554 58))
                        (display "\n")
                        (orig-car x7966)))))
                   g7965)))
               (snake-segs
                (lambda (snake)
                  (letrec*
                   ((g7967
                     (letrec*
                      ((x7968
                        (letrec*
                         ((x7969
                           (begin
                             (write '(funapp 1562 42))
                             (display "\n")
                             (orig-cdr snake))))
                         (begin
                           (write '(funapp 1562 61))
                           (display "\n")
                           (orig-cdr x7969)))))
                      (begin
                        (write '(funapp 1563 23))
                        (display "\n")
                        (orig-car x7968)))))
                   g7967)))
               (world
                (lambda (snake7400 food7401)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7971
                        (letrec*
                         ((x7972
                           (begin
                             (write '(funapp 1572 34))
                             (display "\n")
                             (orig-cons
                              food7401
                              (begin
                                (write '(funapp 1572 53))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1573 26))
                           (display "\n")
                           (orig-cons snake7400 x7972)))))
                      (begin
                        (write '(funapp 1574 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1574 33))
                           (display "\n")
                           'world)
                         x7971)))))
                   g7970)))
               (world?
                (lambda (world7399)
                  (letrec*
                   ((g7973
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1580 39))
                          (display "\n")
                          (car world7399))))
                      (begin
                        (write '(funapp 1580 57))
                        (display "\n")
                        (eq?
                         x7974
                         (begin
                           (write '(funapp 1580 67))
                           (display "\n")
                           'world))))))
                   g7973)))
               (world-snake
                (lambda (world)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((x7976
                        (begin
                          (write '(funapp 1586 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1586 58))
                        (display "\n")
                        (orig-car x7976)))))
                   g7975)))
               (world-food
                (lambda (world)
                  (letrec*
                   ((g7977
                     (letrec*
                      ((x7978
                        (letrec*
                         ((x7979
                           (begin
                             (write '(funapp 1594 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1594 61))
                           (display "\n")
                           (orig-cdr x7979)))))
                      (begin
                        (write '(funapp 1595 23))
                        (display "\n")
                        (orig-car x7978)))))
                   g7977)))
               (DIR/C
                (lambda (g7360 g7361 g7362)
                  (letrec*
                   ((g7980
                     (letrec*
                      ((x-cnd7981
                        (begin
                          (write '(funapp 1603 25))
                          (display "\n")
                          ((lambda (v7359)
                             (letrec*
                              ((g7982
                                (letrec*
                                 ((x-cnd7983
                                   (begin
                                     (write '(funapp 1607 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1607 48))
                                        (display "\n")
                                        'up)
                                      v7359))))
                                 (if x-cnd7983
                                   #t
                                   (letrec*
                                    ((x-cnd7984
                                      (begin
                                        (write '(funapp 1611 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1611 51))
                                           (display "\n")
                                           'down)
                                         v7359))))
                                    (if x-cnd7984
                                      #t
                                      (letrec*
                                       ((x-cnd7985
                                         (begin
                                           (write '(funapp 1615 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1615 54))
                                              (display "\n")
                                              'left)
                                            v7359))))
                                       (if x-cnd7985
                                         #t
                                         (begin
                                           (write '(funapp 1618 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1618 44))
                                              (display "\n")
                                              'right)
                                            v7359))))))))))
                              g7982))
                           g7362))))
                      (if x-cnd7981
                        g7362
                        (begin
                          (write '(blame g7360 1623 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7360)))))))
                   g7980)))
               (POSN/C
                (lambda (j7364 k7365 v7363)
                  (letrec*
                   ((g7986
                     (letrec*
                      ((checked7366
                        (letrec*
                         ((x7987
                           (letrec*
                            ((x7988
                              (begin
                                (write '(funapp 1643 37))
                                (display "\n")
                                (orig-cdr v7363))))
                            (begin
                              (write '(funapp 1644 29))
                              (display "\n")
                              (orig-car x7988)))))
                         (begin
                           (write '(funapp 1645 26))
                           (display "\n")
                           (real?/c j7364 k7365 x7987)))))
                      (letrec*
                       ((g7989
                         (letrec*
                          ((checked7367
                            (letrec*
                             ((x7990
                               (letrec*
                                ((x7991
                                  (letrec*
                                   ((x7992
                                     (begin
                                       (write '(funapp 1655 44))
                                       (display "\n")
                                       (orig-cdr v7363))))
                                   (begin
                                     (write '(funapp 1656 36))
                                     (display "\n")
                                     (orig-cdr x7992)))))
                                (begin
                                  (write '(funapp 1657 33))
                                  (display "\n")
                                  (orig-car x7991)))))
                             (begin
                               (write '(funapp 1658 30))
                               (display "\n")
                               (real?/c j7364 k7365 x7990)))))
                          (letrec*
                           ((g7993
                             (letrec*
                              ((x7994
                                (letrec*
                                 ((x7995
                                   (begin
                                     (write '(funapp 1664 42))
                                     (display "\n")
                                     (cons
                                      checked7367
                                      (begin
                                        (write '(funapp 1664 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1665 34))
                                   (display "\n")
                                   (cons checked7366 x7995)))))
                              (begin
                                (write '(funapp 1666 31))
                                (display "\n")
                                (cons posn x7994)))))
                           g7993))))
                       g7989))))
                   g7986)))
               (SNAKE/C
                (lambda (j7370 k7371 v7369)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((checked7372
                        (letrec*
                         ((x7997
                           (letrec*
                            ((x7998
                              (begin
                                (write '(funapp 1679 37))
                                (display "\n")
                                (orig-cdr v7369))))
                            (begin
                              (write '(funapp 1680 29))
                              (display "\n")
                              (orig-car x7998)))))
                         (begin
                           (write '(funapp 1681 26))
                           (display "\n")
                           (DIR/C j7370 k7371 x7997)))))
                      (letrec*
                       ((g7999
                         (letrec*
                          ((checked7373
                            (letrec*
                             ((x8003
                               (letrec*
                                ((x8004
                                  (begin
                                    (write '(funapp 1689 41))
                                    (display "\n")
                                    (listof POSN/C))))
                                (begin
                                  (write '(funapp 1690 33))
                                  (display "\n")
                                  (and/c cons?/c x8004))))
                              (x8000
                               (letrec*
                                ((x8001
                                  (letrec*
                                   ((x8002
                                     (begin
                                       (write '(funapp 1695 44))
                                       (display "\n")
                                       (orig-cdr v7369))))
                                   (begin
                                     (write '(funapp 1696 36))
                                     (display "\n")
                                     (orig-cdr x8002)))))
                                (begin
                                  (write '(funapp 1697 33))
                                  (display "\n")
                                  (orig-car x8001)))))
                             (begin
                               (write '(funapp 1698 30))
                               (display "\n")
                               (x8003 j7370 k7371 x8000)))))
                          (letrec*
                           ((g8005
                             (letrec*
                              ((x8006
                                (letrec*
                                 ((x8007
                                   (begin
                                     (write '(funapp 1704 42))
                                     (display "\n")
                                     (cons
                                      checked7373
                                      (begin
                                        (write '(funapp 1704 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1705 34))
                                   (display "\n")
                                   (cons checked7372 x8007)))))
                              (begin
                                (write '(funapp 1706 31))
                                (display "\n")
                                (cons snake x8006)))))
                           g8005))))
                       g7999))))
                   g7996)))
               (WORLD/C
                (lambda (j7376 k7377 v7375)
                  (letrec*
                   ((g8008
                     (letrec*
                      ((checked7378
                        (letrec*
                         ((x8009
                           (letrec*
                            ((x8010
                              (begin
                                (write '(funapp 1719 37))
                                (display "\n")
                                (orig-cdr v7375))))
                            (begin
                              (write '(funapp 1720 29))
                              (display "\n")
                              (orig-car x8010)))))
                         (begin
                           (write '(funapp 1721 26))
                           (display "\n")
                           (SNAKE/C j7376 k7377 x8009)))))
                      (letrec*
                       ((g8011
                         (letrec*
                          ((checked7379
                            (letrec*
                             ((x8012
                               (letrec*
                                ((x8013
                                  (letrec*
                                   ((x8014
                                     (begin
                                       (write '(funapp 1731 44))
                                       (display "\n")
                                       (orig-cdr v7375))))
                                   (begin
                                     (write '(funapp 1732 36))
                                     (display "\n")
                                     (orig-cdr x8014)))))
                                (begin
                                  (write '(funapp 1733 33))
                                  (display "\n")
                                  (orig-car x8013)))))
                             (begin
                               (write '(funapp 1734 30))
                               (display "\n")
                               (POSN/C j7376 k7377 x8012)))))
                          (letrec*
                           ((g8015
                             (letrec*
                              ((x8016
                                (letrec*
                                 ((x8017
                                   (begin
                                     (write '(funapp 1740 42))
                                     (display "\n")
                                     (cons
                                      checked7379
                                      (begin
                                        (write '(funapp 1740 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1741 34))
                                   (display "\n")
                                   (cons checked7378 x8017)))))
                              (begin
                                (write '(funapp 1742 31))
                                (display "\n")
                                (cons world x8016)))))
                           g8015))))
                       g8011))))
                   g8008)))
               (GRID-SIZE 30)
               (BOARD-HEIGHT 20)
               (BOARD-WIDTH 30)
               (BOARD-HEIGHT-PIXELS
                (begin
                  (write '(funapp 1749 37))
                  (display "\n")
                  (* GRID-SIZE BOARD-HEIGHT)))
               (BOARD-WIDTH-PIXELS
                (begin
                  (write '(funapp 1750 36))
                  (display "\n")
                  (* GRID-SIZE BOARD-WIDTH)))
               (BACKGROUND
                (begin
                  (write '(funapp 1752 17))
                  (display "\n")
                  (empty-scene BOARD-WIDTH-PIXELS BOARD-HEIGHT-PIXELS)))
               (SEGMENT-RADIUS
                (begin
                  (write '(funapp 1753 32))
                  (display "\n")
                  (/ GRID-SIZE 2)))
               (SEGMENT-IMAGE
                (begin
                  (write '(funapp 1754 31))
                  (display "\n")
                  (circle SEGMENT-RADIUS "solid" "red")))
               (FOOD-RADIUS SEGMENT-RADIUS)
               (FOOD-IMAGE
                (begin
                  (write '(funapp 1756 28))
                  (display "\n")
                  (circle FOOD-RADIUS "solid" "green")))
               (WORLD
                (letrec*
                 ((x8019
                   (letrec*
                    ((x8020
                      (letrec*
                       ((x8021
                         (begin
                           (write '(funapp 1761 46))
                           (display "\n")
                           (posn 5 3))))
                       (begin
                         (write '(funapp 1761 59))
                         (display "\n")
                         (cons x8021 empty)))))
                    (begin
                      (write '(funapp 1762 21))
                      (display "\n")
                      (snake
                       (begin (write '(funapp 1762 27)) (display "\n") 'right)
                       x8020))))
                  (x8018
                   (begin
                     (write '(funapp 1763 26))
                     (display "\n")
                     (posn 8 12))))
                 (begin
                   (write '(funapp 1764 18))
                   (display "\n")
                   (world x8019 x8018))))
               (snake-wall-collide?
                (lambda (snk)
                  (letrec*
                   ((g8022
                     (letrec*
                      ((x8023
                        (letrec*
                         ((x8024
                           (begin
                             (write '(funapp 1771 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1771 61))
                           (display "\n")
                           (car x8024)))))
                      (begin
                        (write '(funapp 1772 23))
                        (display "\n")
                        (head-collide? x8023)))))
                   g8022)))
               (head-collide?
                (lambda (p)
                  (letrec*
                   ((g8025
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x8026
                           (begin
                             (write '(funapp 1779 50))
                             (display "\n")
                             (posn-x p))))
                         (begin
                           (write '(funapp 1779 63))
                           (display "\n")
                           (<= x8026 0)))))
                      (letrec*
                       ((g8027
                         (if val7259
                           val7259
                           (letrec*
                            ((val7260
                              (letrec*
                               ((x8028
                                 (begin
                                   (write '(funapp 1787 40))
                                   (display "\n")
                                   (posn-x p))))
                               (begin
                                 (write '(funapp 1788 32))
                                 (display "\n")
                                 (>= x8028 BOARD-WIDTH)))))
                            (letrec*
                             ((g8029
                               (if val7260
                                 val7260
                                 (letrec*
                                  ((val7261
                                    (letrec*
                                     ((x8030
                                       (begin
                                         (write '(funapp 1796 46))
                                         (display "\n")
                                         (posn-y p))))
                                     (begin
                                       (write '(funapp 1797 38))
                                       (display "\n")
                                       (<= x8030 0)))))
                                  (letrec*
                                   ((g8031
                                     (if val7261
                                       val7261
                                       (letrec*
                                        ((x8032
                                          (begin
                                            (write '(funapp 1803 49))
                                            (display "\n")
                                            (posn-y p))))
                                        (begin
                                          (write '(funapp 1804 41))
                                          (display "\n")
                                          (>= x8032 BOARD-HEIGHT))))))
                                   g8031)))))
                             g8029)))))
                       g8027))))
                   g8025)))
               (snake-self-collide?
                (lambda (snk)
                  (letrec*
                   ((g8033
                     (letrec*
                      ((x8036
                        (letrec*
                         ((x8037
                           (begin
                             (write '(funapp 1814 48))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1814 67))
                           (display "\n")
                           (car x8037))))
                       (x8034
                        (letrec*
                         ((x8035
                           (begin
                             (write '(funapp 1816 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1816 61))
                           (display "\n")
                           (cdr x8035)))))
                      (begin
                        (write '(funapp 1817 23))
                        (display "\n")
                        (segs-self-collide? x8036 x8034)))))
                   g8033)))
               (segs-self-collide?
                (lambda (h segs)
                  (letrec*
                   ((g8038
                     (letrec*
                      ((x-cnd8039
                        (begin
                          (write '(funapp 1824 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8039
                        (letrec* ((g8040 #f)) g8040)
                        (letrec*
                         ((g8041
                           (letrec*
                            ((x8044
                              (letrec*
                               ((x8045
                                 (begin
                                   (write '(funapp 1831 48))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 1831 61))
                                 (display "\n")
                                 (posn=? x8045 h))))
                             (x8042
                              (letrec*
                               ((x8043
                                 (begin
                                   (write '(funapp 1834 40))
                                   (display "\n")
                                   (cdr segs))))
                               (begin
                                 (write '(funapp 1835 32))
                                 (display "\n")
                                 (segs-self-collide? h x8043)))))
                            (begin
                              (write '(funapp 1836 29))
                              (display "\n")
                              (or x8044 x8042)))))
                         g8041)))))
                   g8038)))
               (cut-tail
                (lambda (segs)
                  (letrec*
                   ((g8046
                     (letrec*
                      ((r
                        (begin
                          (write '(funapp 1844 27))
                          (display "\n")
                          (cdr segs))))
                      (letrec*
                       ((g8047
                         (letrec*
                          ((x-cnd8048
                            (begin
                              (write '(funapp 1848 39))
                              (display "\n")
                              (empty? r))))
                          (if x-cnd8048
                            (letrec* ((g8049 empty)) g8049)
                            (letrec*
                             ((g8050
                               (letrec*
                                ((x8052
                                  (begin
                                    (write '(funapp 1854 41))
                                    (display "\n")
                                    (car segs)))
                                 (x8051
                                  (begin
                                    (write '(funapp 1854 60))
                                    (display "\n")
                                    (cut-tail r))))
                                (begin
                                  (write '(funapp 1855 33))
                                  (display "\n")
                                  (cons x8052 x8051)))))
                             g8050)))))
                       g8047))))
                   g8046)))
               (next-head
                (lambda (seg dir)
                  (letrec*
                   ((g8053
                     (letrec*
                      ((x-cnd8054
                        (begin
                          (write '(funapp 1864 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1864 42))
                             (display "\n")
                             'right)
                           dir))))
                      (if x-cnd8054
                        (letrec*
                         ((g8055
                           (letrec*
                            ((x8057
                              (letrec*
                               ((x8058
                                 (begin
                                   (write '(funapp 1870 48))
                                   (display "\n")
                                   (posn-x seg))))
                               (begin
                                 (write '(funapp 1870 63))
                                 (display "\n")
                                 (add1 x8058))))
                             (x8056
                              (begin
                                (write '(funapp 1871 37))
                                (display "\n")
                                (posn-y seg))))
                            (begin
                              (write '(funapp 1872 29))
                              (display "\n")
                              (posn x8057 x8056)))))
                         g8055)
                        (letrec*
                         ((x-cnd8059
                           (begin
                             (write '(funapp 1875 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 1875 45))
                                (display "\n")
                                'left)
                              dir))))
                         (if x-cnd8059
                           (letrec*
                            ((g8060
                              (letrec*
                               ((x8062
                                 (letrec*
                                  ((x8063
                                    (begin
                                      (write '(funapp 1881 51))
                                      (display "\n")
                                      (posn-x seg))))
                                  (begin
                                    (write '(funapp 1881 66))
                                    (display "\n")
                                    (sub1 x8063))))
                                (x8061
                                 (begin
                                   (write '(funapp 1882 40))
                                   (display "\n")
                                   (posn-y seg))))
                               (begin
                                 (write '(funapp 1883 32))
                                 (display "\n")
                                 (posn x8062 x8061)))))
                            g8060)
                           (letrec*
                            ((x-cnd8064
                              (begin
                                (write '(funapp 1886 41))
                                (display "\n")
                                (equal?
                                 (begin
                                   (write '(funapp 1886 48))
                                   (display "\n")
                                   'down)
                                 dir))))
                            (if x-cnd8064
                              (letrec*
                               ((g8065
                                 (letrec*
                                  ((x8068
                                    (begin
                                      (write '(funapp 1891 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8066
                                    (letrec*
                                     ((x8067
                                       (begin
                                         (write '(funapp 1894 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 1895 38))
                                       (display "\n")
                                       (sub1 x8067)))))
                                  (begin
                                    (write '(funapp 1896 35))
                                    (display "\n")
                                    (posn x8068 x8066)))))
                               g8065)
                              (letrec*
                               ((g8069
                                 (letrec*
                                  ((x8072
                                    (begin
                                      (write '(funapp 1901 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8070
                                    (letrec*
                                     ((x8071
                                       (begin
                                         (write '(funapp 1904 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 1905 38))
                                       (display "\n")
                                       (add1 x8071)))))
                                  (begin
                                    (write '(funapp 1906 35))
                                    (display "\n")
                                    (posn x8072 x8070)))))
                               g8069)))))))))
                   g8053)))
               (snake-slither
                (lambda (snk)
                  (letrec*
                   ((g8073
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 1914 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8074
                         (letrec*
                          ((x8075
                            (letrec*
                             ((x8078
                               (letrec*
                                ((x8079
                                  (letrec*
                                   ((x8080
                                     (begin
                                       (write '(funapp 1924 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 1925 36))
                                     (display "\n")
                                     (car x8080)))))
                                (begin
                                  (write '(funapp 1926 33))
                                  (display "\n")
                                  (next-head x8079 d))))
                              (x8076
                               (letrec*
                                ((x8077
                                  (begin
                                    (write '(funapp 1929 41))
                                    (display "\n")
                                    (snake-segs snk))))
                                (begin
                                  (write '(funapp 1930 33))
                                  (display "\n")
                                  (cut-tail x8077)))))
                             (begin
                               (write '(funapp 1931 30))
                               (display "\n")
                               (cons x8078 x8076)))))
                          (begin
                            (write '(funapp 1932 27))
                            (display "\n")
                            (snake d x8075)))))
                       g8074))))
                   g8073)))
               (snake-grow
                (lambda (snk)
                  (letrec*
                   ((g8081
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 1940 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8082
                         (letrec*
                          ((x8083
                            (letrec*
                             ((x8085
                               (letrec*
                                ((x8086
                                  (letrec*
                                   ((x8087
                                     (begin
                                       (write '(funapp 1950 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 1951 36))
                                     (display "\n")
                                     (car x8087)))))
                                (begin
                                  (write '(funapp 1952 33))
                                  (display "\n")
                                  (next-head x8086 d))))
                              (x8084
                               (begin
                                 (write '(funapp 1953 38))
                                 (display "\n")
                                 (snake-segs snk))))
                             (begin
                               (write '(funapp 1954 30))
                               (display "\n")
                               (cons x8085 x8084)))))
                          (begin
                            (write '(funapp 1955 27))
                            (display "\n")
                            (snake d x8083)))))
                       g8082))))
                   g8081)))
               (world->world
                (lambda (w)
                  (letrec*
                   ((g8088
                     (letrec*
                      ((x-cnd8089
                        (begin
                          (write '(funapp 1963 35))
                          (display "\n")
                          (eating? w))))
                      (if x-cnd8089
                        (letrec*
                         ((g8090
                           (begin
                             (write '(funapp 1965 42))
                             (display "\n")
                             (snake-eat w))))
                         g8090)
                        (letrec*
                         ((g8091
                           (letrec*
                            ((x8093
                              (letrec*
                               ((x8094
                                 (begin
                                   (write '(funapp 1971 40))
                                   (display "\n")
                                   (world-snake w))))
                               (begin
                                 (write '(funapp 1972 32))
                                 (display "\n")
                                 (snake-slither x8094))))
                             (x8092
                              (begin
                                (write '(funapp 1973 37))
                                (display "\n")
                                (world-food w))))
                            (begin
                              (write '(funapp 1974 29))
                              (display "\n")
                              (world x8093 x8092)))))
                         g8091)))))
                   g8088)))
               (eating?
                (lambda (w)
                  (letrec*
                   ((g8095
                     (letrec*
                      ((x8099
                        (begin
                          (write '(funapp 1982 31))
                          (display "\n")
                          (world-food w)))
                       (x8096
                        (letrec*
                         ((x8097
                           (letrec*
                            ((x8098
                              (begin
                                (write '(funapp 1987 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 1988 29))
                              (display "\n")
                              (snake-segs x8098)))))
                         (begin
                           (write '(funapp 1989 26))
                           (display "\n")
                           (car x8097)))))
                      (begin
                        (write '(funapp 1990 23))
                        (display "\n")
                        (posn=? x8099 x8096)))))
                   g8095)))
               (snake-change-direction
                (lambda (snk dir)
                  (letrec*
                   ((g8100
                     (letrec*
                      ((x8101
                        (begin
                          (write '(funapp 1996 39))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 1996 58))
                        (display "\n")
                        (snake dir x8101)))))
                   g8100)))
               (world-change-dir
                (lambda (w dir)
                  (letrec*
                   ((g8102
                     (letrec*
                      ((x8104
                        (letrec*
                         ((x8105
                           (begin
                             (write '(funapp 2005 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2006 26))
                           (display "\n")
                           (snake-change-direction x8105 dir))))
                       (x8103
                        (begin
                          (write '(funapp 2007 31))
                          (display "\n")
                          (world-food w))))
                      (begin
                        (write '(funapp 2008 23))
                        (display "\n")
                        (world x8104 x8103)))))
                   g8102)))
               (snake-eat
                (lambda (w)
                  (letrec*
                   ((g8106
                     (letrec*
                      ((x8110
                        (letrec*
                         ((x8111
                           (begin
                             (write '(funapp 2016 42))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2016 60))
                           (display "\n")
                           (snake-grow x8111))))
                       (x8107
                        (letrec*
                         ((x8109
                           (begin
                             (write '(funapp 2019 34))
                             (display "\n")
                             (- BOARD-WIDTH 1)))
                          (x8108
                           (begin
                             (write '(funapp 2019 60))
                             (display "\n")
                             (- BOARD-HEIGHT 1))))
                         (begin
                           (write '(funapp 2020 26))
                           (display "\n")
                           (posn x8109 x8108)))))
                      (begin
                        (write '(funapp 2021 23))
                        (display "\n")
                        (world x8110 x8107)))))
                   g8106)))
               (handle-key
                (lambda (w ke)
                  (letrec*
                   ((g8112
                     (letrec*
                      ((x-cnd8113
                        (begin
                          (write '(funapp 2028 35))
                          (display "\n")
                          (equal? ke "w"))))
                      (if x-cnd8113
                        (letrec*
                         ((g8114
                           (begin
                             (write '(funapp 2030 42))
                             (display "\n")
                             (world-change-dir
                              w
                              (begin
                                (write '(funapp 2030 61))
                                (display "\n")
                                'up)))))
                         g8114)
                        (letrec*
                         ((x-cnd8115
                           (begin
                             (write '(funapp 2032 38))
                             (display "\n")
                             (equal? ke "s"))))
                         (if x-cnd8115
                           (letrec*
                            ((g8116
                              (begin
                                (write '(funapp 2034 45))
                                (display "\n")
                                (world-change-dir
                                 w
                                 (begin
                                   (write '(funapp 2034 64))
                                   (display "\n")
                                   'down)))))
                            g8116)
                           (letrec*
                            ((x-cnd8117
                              (begin
                                (write '(funapp 2036 41))
                                (display "\n")
                                (equal? ke "a"))))
                            (if x-cnd8117
                              (letrec*
                               ((g8118
                                 (begin
                                   (write '(funapp 2039 40))
                                   (display "\n")
                                   (world-change-dir
                                    w
                                    (begin
                                      (write '(funapp 2039 59))
                                      (display "\n")
                                      'left)))))
                               g8118)
                              (letrec*
                               ((x-cnd8119
                                 (begin
                                   (write '(funapp 2042 44))
                                   (display "\n")
                                   (equal? ke "d"))))
                               (if x-cnd8119
                                 (letrec*
                                  ((g8120
                                    (begin
                                      (write '(funapp 2045 43))
                                      (display "\n")
                                      (world-change-dir
                                       w
                                       (begin
                                         (write '(funapp 2045 62))
                                         (display "\n")
                                         'right)))))
                                  g8120)
                                 (letrec* ((g8121 w)) g8121)))))))))))
                   g8112)))
               (game-over?
                (lambda (w)
                  (letrec*
                   ((g8122
                     (letrec*
                      ((val7262
                        (letrec*
                         ((x8123
                           (begin
                             (write '(funapp 2056 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2057 26))
                           (display "\n")
                           (snake-wall-collide? x8123)))))
                      (letrec*
                       ((g8124
                         (if val7262
                           val7262
                           (letrec*
                            ((x8125
                              (begin
                                (write '(funapp 2063 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2064 29))
                              (display "\n")
                              (snake-self-collide? x8125))))))
                       g8124))))
                   g8122)))
               (world->scene
                (lambda (w)
                  (letrec*
                   ((g8126
                     (letrec*
                      ((x8129
                        (begin
                          (write '(funapp 2072 31))
                          (display "\n")
                          (world-snake w)))
                       (x8127
                        (letrec*
                         ((x8128
                           (begin
                             (write '(funapp 2075 34))
                             (display "\n")
                             (world-food w))))
                         (begin
                           (write '(funapp 2076 26))
                           (display "\n")
                           (food+scene x8128 BACKGROUND)))))
                      (begin
                        (write '(funapp 2077 23))
                        (display "\n")
                        (snake+scene x8129 x8127)))))
                   g8126)))
               (food+scene
                (lambda (f scn)
                  (letrec*
                   ((g8130
                     (letrec*
                      ((x8132
                        (begin
                          (write '(funapp 2084 31))
                          (display "\n")
                          (posn-x f)))
                       (x8131
                        (begin
                          (write '(funapp 2084 50))
                          (display "\n")
                          (posn-y f))))
                      (begin
                        (write '(funapp 2085 23))
                        (display "\n")
                        (place-image-on-grid FOOD-IMAGE x8132 x8131 scn)))))
                   g8130)))
               (place-image-on-grid
                (lambda (img x y scn)
                  (letrec*
                   ((g8133
                     (letrec*
                      ((x8136
                        (begin
                          (write '(funapp 2092 31))
                          (display "\n")
                          (* GRID-SIZE x)))
                       (x8134
                        (letrec*
                         ((x8135
                           (begin
                             (write '(funapp 2095 34))
                             (display "\n")
                             (* GRID-SIZE y))))
                         (begin
                           (write '(funapp 2096 26))
                           (display "\n")
                           (- BOARD-HEIGHT-PIXELS x8135)))))
                      (begin
                        (write '(funapp 2097 23))
                        (display "\n")
                        (place-image img x8136 x8134 scn)))))
                   g8133)))
               (snake+scene
                (lambda (snk scn)
                  (letrec*
                   ((g8137
                     (letrec*
                      ((x8138
                        (begin
                          (write '(funapp 2104 31))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2105 23))
                        (display "\n")
                        (segments+scene x8138 scn)))))
                   g8137)))
               (segments+scene
                (lambda (segs scn)
                  (letrec*
                   ((g8139
                     (letrec*
                      ((x-cnd8140
                        (begin
                          (write '(funapp 2112 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8140
                        (letrec* ((g8141 scn)) g8141)
                        (letrec*
                         ((g8142
                           (letrec*
                            ((x8145
                              (begin
                                (write '(funapp 2118 37))
                                (display "\n")
                                (cdr segs)))
                             (x8143
                              (letrec*
                               ((x8144
                                 (begin
                                   (write '(funapp 2121 40))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2122 32))
                                 (display "\n")
                                 (segment+scene x8144 scn)))))
                            (begin
                              (write '(funapp 2123 29))
                              (display "\n")
                              (segments+scene x8145 x8143)))))
                         g8142)))))
                   g8139)))
               (segment+scene
                (lambda (seg scn)
                  (letrec*
                   ((g8146
                     (letrec*
                      ((x8148
                        (begin
                          (write '(funapp 2131 31))
                          (display "\n")
                          (posn-x seg)))
                       (x8147
                        (begin
                          (write '(funapp 2131 52))
                          (display "\n")
                          (posn-y seg))))
                      (begin
                        (write '(funapp 2132 23))
                        (display "\n")
                        (place-image-on-grid SEGMENT-IMAGE x8148 x8147 scn)))))
                   g8146))))
              (letrec*
               ((g8149
                 (letrec*
                  ((x8160
                    (letrec*
                     ((xj7381
                       (begin
                         (write '(funapp 2139 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2139 35))
                            (display "\n")
                            'module))))
                      (xk7382
                       (begin
                         (write '(funapp 2139 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2139 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8161
                        (begin
                          (write '(funapp 2142 25))
                          (display "\n")
                          ((lambda (j7385 k7386 f7387)
                             (letrec*
                              ((g8162
                                (lambda (g7383 g7384)
                                  (letrec*
                                   ((g8163
                                     (letrec*
                                      ((x8164
                                        (letrec*
                                         ((x8166
                                           (begin
                                             (write '(funapp 2151 48))
                                             (display "\n")
                                             (POSN/C j7385 k7386 g7383)))
                                          (x8165
                                           (begin
                                             (write '(funapp 2152 48))
                                             (display "\n")
                                             (POSN/C j7385 k7386 g7384))))
                                         (begin
                                           (write '(funapp 2153 40))
                                           (display "\n")
                                           (f7387 x8166 x8165)))))
                                      (begin
                                        (write '(funapp 2154 37))
                                        (display "\n")
                                        (boolean?/c j7385 k7386 x8164)))))
                                   g8163))))
                              g8162))
                           xj7381
                           xk7382
                           posn=?))))
                      g8161)))
                   (x8155
                    (letrec*
                     ((x8156
                       (letrec*
                        ((x8159 (input))
                         (x8157
                          (letrec*
                           ((x8158 (input)))
                           (begin
                             (write '(funapp 2166 60))
                             (display "\n")
                             (cons
                              x8158
                              (begin
                                (write '(funapp 2166 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2167 25))
                          (display "\n")
                          (cons x8159 x8157)))))
                     (begin
                       (write '(funapp 2168 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2168 27)) (display "\n") 'posn)
                        x8156))))
                   (x8150
                    (letrec*
                     ((x8151
                       (letrec*
                        ((x8154 (input))
                         (x8152
                          (letrec*
                           ((x8153 (input)))
                           (begin
                             (write '(funapp 2174 60))
                             (display "\n")
                             (cons
                              x8153
                              (begin
                                (write '(funapp 2174 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2175 25))
                          (display "\n")
                          (cons x8154 x8152)))))
                     (begin
                       (write '(funapp 2176 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2176 27)) (display "\n") 'posn)
                        x8151)))))
                  (begin
                    (write '(funapp 2177 19))
                    (display "\n")
                    (x8160 x8155 x8150)))))
               g8149))))
           g7417))))
       g7415)))
    g7414)))
