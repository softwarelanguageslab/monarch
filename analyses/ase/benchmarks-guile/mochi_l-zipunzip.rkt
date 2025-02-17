(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7371 #t)) g7371)))
    (meta (lambda (v) (letrec* ((g7372 v)) g7372)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7373
          (letrec*
           ((g7374
             (letrec*
              ((x-e7375 lst))
              (letrec*
               ((v1742 x-e7375))
               (cond
                ((begin (write '(funapp 21 18)) (display "\n") (null? v1742))
                 (letrec* () #f))
                ((begin (write '(funapp 22 18)) (display "\n") (and #t #t))
                 (letrec*
                  ((v1
                    (begin (write '(funapp 24 24)) (display "\n") (car v1742)))
                   (vs
                    (begin
                      (write '(funapp 24 41))
                      (display "\n")
                      (cdr v1742))))
                  (letrec*
                   ((x-cnd7376
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7376
                     #t
                     (begin
                       (write '(funapp 27 37))
                       (display "\n")
                       (member v vs))))))
                (else
                 (begin
                   (write '(funapp 28 23))
                   (display "\n")
                   (error "no match found"))))))))
           g7374)))
        g7373)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7377 (lambda (v) (letrec* ((g7378 v)) g7378)))) g7377)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7379
          (letrec*
           ((x7380 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7380)))))
        g7379))))
   (letrec*
    ((g7381
      (letrec*
       ((g7382
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
           ((g7383 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7384
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7385
                     (lambda (k j lst)
                       (letrec*
                        ((g7386
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7387
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7387))
                             lst))))
                        g7386))))
                   g7385)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7388
                     (letrec*
                      ((x-cnd7389
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7389
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7388)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7390
                     (letrec*
                      ((x-cnd7391
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7391
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7390)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7392
                     (letrec*
                      ((x-cnd7393
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7393
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7392)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7394
                     (letrec*
                      ((x-cnd7395
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7396 #t)) g7396)) g7270))))
                      (if x-cnd7395
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7394)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7397
                     (letrec*
                      ((x-cnd7398
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7399 #t)) g7399)) g7273))))
                      (if x-cnd7398
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7397)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7400
                     (letrec*
                      ((x-cnd7401
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7401
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7400)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7402
                     (letrec*
                      ((x-cnd7403
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7403
                        g7279
                        (begin
                          (write '(blame g7277 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7402)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7404
                     (letrec*
                      ((x-cnd7405
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7405
                        g7282
                        (begin
                          (write '(blame g7280 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7404)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7406
                     (letrec*
                      ((x-cnd7407
                        (begin
                          (write '(funapp 142 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7407
                        g7285
                        (begin
                          (write '(blame g7283 143 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7406)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7408
                     (lambda (k j v)
                       (letrec*
                        ((g7409
                          (letrec*
                           ((x-cnd7410
                             (begin
                               (write '(funapp 153 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7410
                             (begin
                               (write '(funapp 154 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7409))))
                   g7408)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7411
                     (lambda (k j v)
                       (letrec*
                        ((g7412
                          (letrec*
                           ((x-cnd7413
                             (begin
                               (write '(funapp 165 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7413
                             (begin
                               (write '(funapp 167 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7417
                                (letrec*
                                 ((x7418
                                   (begin
                                     (write '(funapp 171 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 172 34))
                                   (display "\n")
                                   (contract k j x7418))))
                               (x7414
                                (letrec*
                                 ((x7416
                                   (begin
                                     (write '(funapp 175 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7415
                                   (begin
                                     (write '(funapp 175 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 176 34))
                                   (display "\n")
                                   (x7416 k j x7415)))))
                              (begin
                                (write '(funapp 177 31))
                                (display "\n")
                                (orig-cons x7417 x7414)))))))
                        g7412))))
                   g7411)))
               (any? (lambda (v) (letrec* ((g7419 #t)) g7419)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7420
                     (letrec*
                      ((x7421
                        (begin
                          (write '(funapp 184 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 184 55))
                        (display "\n")
                        (not x7421)))))
                   g7420)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7422
                     (letrec*
                      ((x-cnd7423
                        (begin
                          (write '(funapp 192 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7424
                                (letrec*
                                 ((x7425
                                   (begin
                                     (write '(funapp 194 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 194 64))
                                   (display "\n")
                                   (not x7425)))))
                              g7424))
                           g7288))))
                      (if x-cnd7423
                        g7288
                        (begin
                          (write '(blame g7286 199 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7422)))
               (meta (lambda (v) (letrec* ((g7426 v)) g7426)))
               (+
                (letrec*
                 ((xj7289
                   (begin (write '(funapp 204 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 204 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7427
                    (begin
                      (write '(funapp 207 21))
                      (display "\n")
                      ((lambda (j7293 k7294 f7295)
                         (letrec*
                          ((g7429
                            (lambda (g7291 g7292)
                              (letrec*
                               ((g7430
                                 (letrec*
                                  ((x7431
                                    (letrec*
                                     ((x7433
                                       (begin
                                         (write '(funapp 216 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7432
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 218 36))
                                       (display "\n")
                                       (f7295 x7433 x7432)))))
                                  (begin
                                    (write '(funapp 219 33))
                                    (display "\n")
                                    (number?/c j7293 k7294 x7431)))))
                               g7430))))
                          g7429))
                       xj7289
                       xk7290
                       (lambda (a b)
                         (letrec*
                          ((g7428
                            (begin
                              (write '(funapp 224 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7428))))))
                  g7427)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 228 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 228 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7434
                    (begin
                      (write '(funapp 231 21))
                      (display "\n")
                      ((lambda (j7300 k7301 f7302)
                         (letrec*
                          ((g7436
                            (lambda (g7298 g7299)
                              (letrec*
                               ((g7437
                                 (letrec*
                                  ((x7438
                                    (letrec*
                                     ((x7440
                                       (begin
                                         (write '(funapp 240 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7439
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 242 36))
                                       (display "\n")
                                       (f7302 x7440 x7439)))))
                                  (begin
                                    (write '(funapp 243 33))
                                    (display "\n")
                                    (number?/c j7300 k7301 x7438)))))
                               g7437))))
                          g7436))
                       xj7296
                       xk7297
                       (lambda (a b)
                         (letrec*
                          ((g7435
                            (begin
                              (write '(funapp 248 53))
                              (display "\n")
                              (orig-- a b))))
                          g7435))))))
                  g7434)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 252 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 252 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7441
                    (begin
                      (write '(funapp 255 21))
                      (display "\n")
                      ((lambda (j7307 k7308 f7309)
                         (letrec*
                          ((g7443
                            (lambda (g7305 g7306)
                              (letrec*
                               ((g7444
                                 (letrec*
                                  ((x7445
                                    (letrec*
                                     ((x7447
                                       (begin
                                         (write '(funapp 264 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7446
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 266 36))
                                       (display "\n")
                                       (f7309 x7447 x7446)))))
                                  (begin
                                    (write '(funapp 267 33))
                                    (display "\n")
                                    (number?/c j7307 k7308 x7445)))))
                               g7444))))
                          g7443))
                       xj7303
                       xk7304
                       (lambda (a b)
                         (letrec*
                          ((g7442
                            (begin
                              (write '(funapp 272 53))
                              (display "\n")
                              (orig-* a b))))
                          g7442))))))
                  g7441)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 276 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 276 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7448
                    (begin
                      (write '(funapp 279 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7450
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7451
                                 (letrec*
                                  ((x7452
                                    (letrec*
                                     ((x7454
                                       (begin
                                         (write '(funapp 288 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7453
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 290 36))
                                       (display "\n")
                                       (f7316 x7454 x7453)))))
                                  (begin
                                    (write '(funapp 291 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7452)))))
                               g7451))))
                          g7450))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7449
                            (begin
                              (write '(funapp 296 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7449))))))
                  g7448)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 300 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 300 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7455
                    (begin
                      (write '(funapp 303 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7457
                            (lambda (g7319)
                              (letrec*
                               ((g7458
                                 (letrec*
                                  ((x7459
                                    (letrec*
                                     ((x7460
                                       (begin
                                         (write '(funapp 312 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 313 36))
                                       (display "\n")
                                       (f7322 x7460)))))
                                  (begin
                                    (write '(funapp 314 33))
                                    (display "\n")
                                    (any/c j7320 k7321 x7459)))))
                               g7458))))
                          g7457))
                       xj7317
                       xk7318
                       (lambda (p)
                         (letrec*
                          ((g7456
                            (begin
                              (write '(funapp 319 51))
                              (display "\n")
                              (orig-car p))))
                          g7456))))))
                  g7455)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 323 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 323 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7461
                    (begin
                      (write '(funapp 326 21))
                      (display "\n")
                      ((lambda (j7326 k7327 f7328)
                         (letrec*
                          ((g7463
                            (lambda (g7325)
                              (letrec*
                               ((g7464
                                 (letrec*
                                  ((x7465
                                    (letrec*
                                     ((x7466
                                       (begin
                                         (write '(funapp 335 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 336 36))
                                       (display "\n")
                                       (f7328 x7466)))))
                                  (begin
                                    (write '(funapp 337 33))
                                    (display "\n")
                                    (any/c j7326 k7327 x7465)))))
                               g7464))))
                          g7463))
                       xj7323
                       xk7324
                       (lambda (p)
                         (letrec*
                          ((g7462
                            (begin
                              (write '(funapp 342 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7462))))))
                  g7461)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 346 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 346 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7467
                    (begin
                      (write '(funapp 349 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7469
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7470
                                 (letrec*
                                  ((x7471
                                    (letrec*
                                     ((x7473
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7472
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 360 36))
                                       (display "\n")
                                       (f7335 x7473 x7472)))))
                                  (begin
                                    (write '(funapp 361 33))
                                    (display "\n")
                                    (pair?/c j7333 k7334 x7471)))))
                               g7470))))
                          g7469))
                       xj7329
                       xk7330
                       (lambda (a b)
                         (letrec*
                          ((g7468
                            (begin
                              (write '(funapp 367 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7468))))))
                  g7467)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 371 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 371 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7474
                    (begin
                      (write '(funapp 374 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7476
                            (lambda (g7338)
                              (letrec*
                               ((g7477
                                 (letrec*
                                  ((x7478
                                    (letrec*
                                     ((x7479
                                       (begin
                                         (write '(funapp 383 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 384 36))
                                       (display "\n")
                                       (f7341 x7479)))))
                                  (begin
                                    (write '(funapp 385 33))
                                    (display "\n")
                                    (integer?/c j7339 k7340 x7478)))))
                               g7477))))
                          g7476))
                       xj7336
                       xk7337
                       (lambda (v i)
                         (letrec*
                          ((g7475
                            (begin
                              (write '(funapp 391 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7475))))))
                  g7474)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 395 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 395 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7480
                    (begin
                      (write '(funapp 398 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7482
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7483
                                 (letrec*
                                  ((x7484
                                    (letrec*
                                     ((x7486
                                       (begin
                                         (write '(funapp 407 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7485
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 409 36))
                                       (display "\n")
                                       (f7348 x7486 x7485)))))
                                  (begin
                                    (write '(funapp 410 33))
                                    (display "\n")
                                    (any/c j7346 k7347 x7484)))))
                               g7483))))
                          g7482))
                       xj7342
                       xk7343
                       (lambda (vec i v)
                         (letrec*
                          ((g7481
                            (begin
                              (write '(funapp 416 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7481))))))
                  g7480)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7487
                     (if cnd
                       (begin (write '(funapp 421 35)) (display "\n") '())
                       (begin
                         (write '(funapp 421 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7487)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7488
                     (letrec*
                      ((x7489
                        (letrec*
                         ((x7490
                           (begin
                             (write '(funapp 428 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 428 58))
                           (display "\n")
                           (cdr x7490)))))
                      (begin
                        (write '(funapp 429 23))
                        (display "\n")
                        (cdr x7489)))))
                   g7488)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7491
                     (letrec*
                      ((x7494
                        (begin
                          (write '(funapp 435 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 435 62))
                        (display "\n")
                        (assert x7494))))
                    (g7492
                     (letrec*
                      ((x7495
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 436 57))
                        (display "\n")
                        (assert x7495))))
                    (g7493
                     (letrec*
                      ((x-cnd7496
                        (begin
                          (write '(funapp 439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7496
                        (begin (write '(funapp 441 24)) (display "\n") '())
                        (letrec*
                         ((x7499
                           (letrec*
                            ((x7500
                              (begin
                                (write '(funapp 443 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 443 61))
                              (display "\n")
                              (f x7500))))
                          (x7497
                           (letrec*
                            ((x7498
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (map f x7498)))))
                         (begin
                           (write '(funapp 445 26))
                           (display "\n")
                           (cons x7499 x7497)))))))
                   g7493)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7501
                     (letrec*
                      ((x7502
                        (begin
                          (write '(funapp 450 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 450 55))
                        (display "\n")
                        (cdr x7502)))))
                   g7501)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7503
                     (letrec*
                      ((x7504
                        (letrec*
                         ((x7505
                           (letrec*
                            ((x7506
                              (begin
                                (write '(funapp 459 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 459 61))
                              (display "\n")
                              (car x7506)))))
                         (begin
                           (write '(funapp 460 26))
                           (display "\n")
                           (cdr x7505)))))
                      (begin
                        (write '(funapp 461 23))
                        (display "\n")
                        (car x7504)))))
                   g7503)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7507
                     (letrec*
                      ((x7508
                        (letrec*
                         ((x7509
                           (letrec*
                            ((x7510
                              (begin
                                (write '(funapp 470 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 470 61))
                              (display "\n")
                              (cdr x7510)))))
                         (begin
                           (write '(funapp 471 26))
                           (display "\n")
                           (car x7509)))))
                      (begin
                        (write '(funapp 472 23))
                        (display "\n")
                        (cdr x7508)))))
                   g7507)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7511
                     (letrec*
                      ((x7514
                        (begin
                          (write '(funapp 478 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 478 60))
                        (display "\n")
                        (assert x7514))))
                    (g7512
                     (letrec*
                      ((x7515
                        (begin
                          (write '(funapp 480 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 480 59))
                        (display "\n")
                        (assert x7515))))
                    (g7513
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 483 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 484 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7516
                         (begin
                           (write '(funapp 486 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7517 res))
                       g7517))))
                   g7513)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7518
                     (letrec*
                      ((x7519
                        (letrec*
                         ((x7520
                           (begin
                             (write '(funapp 494 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 494 58))
                           (display "\n")
                           (cdr x7520)))))
                      (begin
                        (write '(funapp 495 23))
                        (display "\n")
                        (car x7519)))))
                   g7518)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7521
                     (letrec*
                      ((x7522
                        (letrec*
                         ((x7523
                           (letrec*
                            ((x7524
                              (begin
                                (write '(funapp 504 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 504 61))
                              (display "\n")
                              (car x7524)))))
                         (begin
                           (write '(funapp 505 26))
                           (display "\n")
                           (car x7523)))))
                      (begin
                        (write '(funapp 506 23))
                        (display "\n")
                        (cdr x7522)))))
                   g7521)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7525
                     (letrec*
                      ((x7527
                        (begin
                          (write '(funapp 511 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 511 57))
                        (display "\n")
                        (assert x7527))))
                    (g7526
                     (letrec*
                      ((x-cnd7528
                        (begin
                          (write '(funapp 514 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7528
                        #f
                        (letrec*
                         ((x-cnd7529
                           (letrec*
                            ((x7530
                              (begin
                                (write '(funapp 519 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 519 56))
                              (display "\n")
                              (eq? x7530 k)))))
                         (if x-cnd7529
                           (begin
                             (write '(funapp 521 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7531
                              (begin
                                (write '(funapp 522 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 522 55))
                              (display "\n")
                              (assq k x7531)))))))))
                   g7526)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7532
                     (letrec*
                      ((x7533
                        (begin
                          (write '(funapp 527 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 527 60))
                        (display "\n")
                        (= 0 x7533)))))
                   g7532)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7534
                     (letrec*
                      ((x7536
                        (begin
                          (write '(funapp 532 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 532 57))
                        (display "\n")
                        (assert x7536))))
                    (g7535
                     (letrec*
                      ((x-cnd7537
                        (begin
                          (write '(funapp 535 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7537
                        ""
                        (letrec*
                         ((x7540
                           (letrec*
                            ((x7541
                              (begin
                                (write '(funapp 540 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 540 55))
                              (display "\n")
                              (char->string x7541))))
                          (x7538
                           (letrec*
                            ((x7539
                              (begin
                                (write '(funapp 542 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 542 55))
                              (display "\n")
                              (list->string x7539)))))
                         (begin
                           (write '(funapp 543 26))
                           (display "\n")
                           (string-append x7540 x7538)))))))
                   g7535)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7542
                     (letrec*
                      ((x7545
                        (begin
                          (write '(funapp 548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 548 58))
                        (display "\n")
                        (assert x7545))))
                    (g7543
                     (letrec*
                      ((x7546
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7546))))
                    (g7544
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 552 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7547
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 554 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7547))))
                   g7544)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7548
                     (letrec*
                      ((x7549
                        (letrec*
                         ((x7550
                           (letrec*
                            ((x7551
                              (begin
                                (write '(funapp 564 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 564 61))
                              (display "\n")
                              (cdr x7551)))))
                         (begin
                           (write '(funapp 565 26))
                           (display "\n")
                           (cdr x7550)))))
                      (begin
                        (write '(funapp 566 23))
                        (display "\n")
                        (cdr x7549)))))
                   g7548)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7552
                     (letrec*
                      ((x7555
                        (begin
                          (write '(funapp 571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 571 57))
                        (display "\n")
                        (assert x7555))))
                    (g7553
                     (letrec*
                      ((x7556
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7556))))
                    (g7554
                     (letrec*
                      ((x-cnd7557
                        (begin
                          (write '(funapp 575 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7557
                        x
                        (letrec*
                         ((x7559
                           (begin
                             (write '(funapp 579 34))
                             (display "\n")
                             (cdr x)))
                          (x7558
                           (begin
                             (write '(funapp 579 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 580 26))
                           (display "\n")
                           (list-tail x7559 x7558)))))))
                   g7554)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7560
                     (begin (write '(funapp 582 49)) (display "\n") '())))
                   g7560)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7561
                     (letrec*
                      ((x-cnd7562
                        (letrec*
                         ((x7563 #\a))
                         (begin
                           (write '(funapp 589 48))
                           (display "\n")
                           (char-ci>=? c x7563)))))
                      (if x-cnd7562
                        (letrec*
                         ((x7564 #\z))
                         (begin
                           (write '(funapp 591 48))
                           (display "\n")
                           (char-ci<=? c x7564)))
                        #f))))
                   g7561)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7565
                     (letrec*
                      ((x7567
                        (begin
                          (write '(funapp 597 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 597 59))
                        (display "\n")
                        (assert x7567))))
                    (g7566
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 600 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7568
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 606 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7569 (if val7243 val7243 #f)))
                             g7569)))))
                       g7568))))
                   g7566)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7570
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7571
                           (begin
                             (write '(funapp 618 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 618 62))
                           (display "\n")
                           (= x7571 9)))))
                      (letrec*
                       ((g7572
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7573
                                 (begin
                                   (write '(funapp 626 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 627 32))
                                 (display "\n")
                                 (= x7573 10)))))
                            (letrec*
                             ((g7574
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7575
                                    (begin
                                      (write '(funapp 633 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 634 35))
                                    (display "\n")
                                    (= x7575 32))))))
                             g7574)))))
                       g7572))))
                   g7570)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7576
                     (letrec*
                      ((x7577
                        (letrec*
                         ((x7578
                           (begin
                             (write '(funapp 643 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 643 58))
                           (display "\n")
                           (cdr x7578)))))
                      (begin
                        (write '(funapp 644 23))
                        (display "\n")
                        (cdr x7577)))))
                   g7576)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7579
                     (letrec*
                      ((x7581
                        (begin
                          (write '(funapp 649 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 649 59))
                        (display "\n")
                        (assert x7581))))
                    (g7580
                     (begin (write '(funapp 650 28)) (display "\n") (> x 0))))
                   g7580)))
               ($pc (begin (write '(funapp 652 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7582 #f)) g7582)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7583
                     (letrec*
                      ((x7584
                        (begin
                          (write '(funapp 658 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 658 55))
                        (display "\n")
                        (cdr x7584)))))
                   g7583)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7585
                     (letrec*
                      ((x7587
                        (begin
                          (write '(funapp 663 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 663 59))
                        (display "\n")
                        (assert x7587))))
                    (g7586
                     (letrec*
                      ((x-cnd7588
                        (begin
                          (write '(funapp 666 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7588
                        (begin
                          (write '(funapp 667 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 667 49))
                          (display "\n")
                          (floor x))))))
                   g7586)))
               ($cmp (begin (write '(funapp 669 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7589
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 675 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7590
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7591
                                 (begin
                                   (write '(funapp 683 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7591
                                 (begin
                                   (write '(funapp 684 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7592
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7593
                                       (begin
                                         (write '(funapp 692 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7593
                                       (letrec*
                                        ((x-cnd7594
                                          (begin
                                            (write '(funapp 695 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7594
                                          (begin
                                            (write '(funapp 696 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7595
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7596
                                             (begin
                                               (write '(funapp 705 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7596
                                             (letrec*
                                              ((x-cnd7597
                                                (begin
                                                  (write '(funapp 708 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7597
                                                (letrec*
                                                 ((x-cnd7598
                                                   (letrec*
                                                    ((x7600
                                                      (begin
                                                        (write
                                                         '(funapp 713 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7599
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 715 53))
                                                      (display "\n")
                                                      (equal? x7600 x7599)))))
                                                 (if x-cnd7598
                                                   (letrec*
                                                    ((x7602
                                                      (begin
                                                        (write
                                                         '(funapp 718 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7601
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 720 53))
                                                      (display "\n")
                                                      (equal? x7602 x7601)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7603
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7604
                                                (begin
                                                  (write '(funapp 729 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7604
                                                (letrec*
                                                 ((x-cnd7605
                                                   (begin
                                                     (write '(funapp 732 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7605
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 735 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7606
                                                       (letrec*
                                                        ((x-cnd7607
                                                          (letrec*
                                                           ((x7608
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  742
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 744 60))
                                                             (display "\n")
                                                             (= x7608 n)))))
                                                        (if x-cnd7607
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7609
                                                                  (letrec*
                                                                   ((val7250
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          753
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7610
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7611
                                                                           (letrec*
                                                                            ((x7613
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   762
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7612
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   766
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 769
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7613
                                                                               x7612)))))
                                                                         (if x-cnd7611
                                                                           (letrec*
                                                                            ((x7614
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   775
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 778
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7614)))
                                                                           #f)))))
                                                                    g7610))))
                                                                g7609))))
                                                           (letrec*
                                                            ((g7615
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   784
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7615))
                                                          #f))))
                                                     g7606))
                                                   #f))
                                                #f)))))
                                         g7603)))))
                                   g7595)))))
                             g7592)))))
                       g7590))))
                   g7589)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (letrec*
                         ((x7618
                           (letrec*
                            ((x7619
                              (begin
                                (write '(funapp 802 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 802 61))
                              (display "\n")
                              (car x7619)))))
                         (begin
                           (write '(funapp 803 26))
                           (display "\n")
                           (car x7618)))))
                      (begin
                        (write '(funapp 804 23))
                        (display "\n")
                        (cdr x7617)))))
                   g7616)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7621
                        (letrec*
                         ((x7622
                           (letrec*
                            ((x7623
                              (begin
                                (write '(funapp 813 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 813 61))
                              (display "\n")
                              (cdr x7623)))))
                         (begin
                           (write '(funapp 814 26))
                           (display "\n")
                           (car x7622)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (car x7621)))))
                   g7620)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7624
                     (begin
                       (write '(funapp 817 53))
                       (display "\n")
                       (eq? x y))))
                   g7624)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 821 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 821 59))
                        (display "\n")
                        (assert x7627))))
                    (g7626
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 824 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7628
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 830 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7629 (if val7252 val7252 #f)))
                             g7629)))))
                       g7628))))
                   g7626)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 840 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 840 60))
                        (display "\n")
                        (assert x7633))))
                    (g7631
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 842 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 842 59))
                        (display "\n")
                        (assert x7634))))
                    (g7632
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 845 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 846 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7635
                         (begin
                           (write '(funapp 848 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7636 res))
                       g7636))))
                   g7632)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7637
                     (begin
                       (write '(funapp 851 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 851 57)) (display "\n") '())))))
                   g7637)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 855 58))
                        (display "\n")
                        (assert x7641))))
                    (g7639
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7642))))
                    (g7640
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 859 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7643
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 861 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7643))))
                   g7640)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7645
                        (letrec*
                         ((x7646
                           (begin
                             (write '(funapp 869 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 869 58))
                           (display "\n")
                           (car x7646)))))
                      (begin
                        (write '(funapp 870 23))
                        (display "\n")
                        (cdr x7645)))))
                   g7644)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7648
                        (letrec*
                         ((x7649
                           (letrec*
                            ((x7650
                              (begin
                                (write '(funapp 879 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 879 61))
                              (display "\n")
                              (cdr x7650)))))
                         (begin
                           (write '(funapp 880 26))
                           (display "\n")
                           (car x7649)))))
                      (begin
                        (write '(funapp 881 23))
                        (display "\n")
                        (cdr x7648)))))
                   g7647)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7652
                        (letrec*
                         ((x7653
                           (begin
                             (write '(funapp 889 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 889 58))
                           (display "\n")
                           (cdr x7653)))))
                      (begin
                        (write '(funapp 890 23))
                        (display "\n")
                        (car x7652)))))
                   g7651)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7655
                        (letrec*
                         ((x7656
                           (begin
                             (write '(funapp 897 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 897 58))
                           (display "\n")
                           (car x7656)))))
                      (begin
                        (write '(funapp 898 23))
                        (display "\n")
                        (car x7655)))))
                   g7654)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 903 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 903 58))
                        (display "\n")
                        (assert x7660))))
                    (g7658
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7661))))
                    (g7659
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 905 66))
                        (display "\n")
                        (not x7662)))))
                   g7659)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7664
                        (letrec*
                         ((x7665
                           (letrec*
                            ((x7666
                              (begin
                                (write '(funapp 915 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 915 61))
                              (display "\n")
                              (car x7666)))))
                         (begin
                           (write '(funapp 916 26))
                           (display "\n")
                           (car x7665)))))
                      (begin
                        (write '(funapp 917 23))
                        (display "\n")
                        (car x7664)))))
                   g7663)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x7669
                        (begin
                          (write '(funapp 922 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7669))))
                    (g7668
                     (begin (write '(funapp 923 28)) (display "\n") (< x 0))))
                   g7668)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7670
                     (begin
                       (write '(funapp 925 53))
                       (display "\n")
                       (memq e l))))
                   g7670)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7672
                        (letrec*
                         ((x7673
                           (begin
                             (write '(funapp 931 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 931 58))
                           (display "\n")
                           (car x7673)))))
                      (begin
                        (write '(funapp 932 23))
                        (display "\n")
                        (car x7672)))))
                   g7671)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7674
                     (begin (write '(funapp 934 51)) (display "\n") '())))
                   g7674)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7675
                     (letrec*
                      ((x7677
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 938 57))
                        (display "\n")
                        (assert x7677))))
                    (g7676
                     (letrec*
                      ((x-cnd7678
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7678
                        (begin (write '(funapp 943 24)) (display "\n") '())
                        (letrec*
                         ((x7681
                           (letrec*
                            ((x7682
                              (begin
                                (write '(funapp 945 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 945 61))
                              (display "\n")
                              (reverse x7682))))
                          (x7679
                           (letrec*
                            ((x7680
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (list x7680)))))
                         (begin
                           (write '(funapp 947 26))
                           (display "\n")
                           (append x7681 x7679)))))))
                   g7676)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7683
                     (letrec*
                      ((x7684
                        (letrec*
                         ((x7685
                           (letrec*
                            ((x7686
                              (begin
                                (write '(funapp 956 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 956 61))
                              (display "\n")
                              (car x7686)))))
                         (begin
                           (write '(funapp 957 26))
                           (display "\n")
                           (car x7685)))))
                      (begin
                        (write '(funapp 958 23))
                        (display "\n")
                        (car x7684)))))
                   g7683)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((x7688
                        (letrec*
                         ((x7689
                           (letrec*
                            ((x7690
                              (begin
                                (write '(funapp 967 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 967 61))
                              (display "\n")
                              (car x7690)))))
                         (begin
                           (write '(funapp 968 26))
                           (display "\n")
                           (cdr x7689)))))
                      (begin
                        (write '(funapp 969 23))
                        (display "\n")
                        (cdr x7688)))))
                   g7687)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7691
                     (letrec*
                      ((x7693
                        (begin
                          (write '(funapp 974 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 974 59))
                        (display "\n")
                        (assert x7693))))
                    (g7692
                     (letrec*
                      ((x7694
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 975 60))
                        (display "\n")
                        (= 1 x7694)))))
                   g7692)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7695
                     (letrec*
                      ((x7696
                        (letrec*
                         ((x7697
                           (letrec*
                            ((x7698
                              (begin
                                (write '(funapp 984 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 984 61))
                              (display "\n")
                              (cdr x7698)))))
                         (begin
                           (write '(funapp 985 26))
                           (display "\n")
                           (car x7697)))))
                      (begin
                        (write '(funapp 986 23))
                        (display "\n")
                        (car x7696)))))
                   g7695)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7699
                     (letrec*
                      ((x7702
                        (begin
                          (write '(funapp 992 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 992 59))
                        (display "\n")
                        (assert x7702))))
                    (g7700
                     (letrec*
                      ((x7703
                        (begin
                          (write '(funapp 993 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 993 60))
                        (display "\n")
                        (assert x7703))))
                    (g7701
                     (letrec*
                      ((x-cnd7704
                        (begin
                          (write '(funapp 996 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7704
                        (letrec*
                         ((g7705
                           (begin
                             (write '(funapp 998 42))
                             (display "\n")
                             (proc))))
                         g7705)
                        (letrec*
                         ((x-cnd7706
                           (letrec*
                            ((x7707
                              (begin
                                (write '(funapp 1001 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1001 58))
                              (display "\n")
                              (null? x7707)))))
                         (if x-cnd7706
                           (letrec*
                            ((g7708
                              (letrec*
                               ((x7709
                                 (begin
                                   (write '(funapp 1005 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1005 61))
                                 (display "\n")
                                 (proc x7709)))))
                            g7708)
                           (letrec*
                            ((x-cnd7710
                              (letrec*
                               ((x7711
                                 (begin
                                   (write '(funapp 1009 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1009 62))
                                 (display "\n")
                                 (null? x7711)))))
                            (if x-cnd7710
                              (letrec*
                               ((g7712
                                 (letrec*
                                  ((x7714
                                    (begin
                                      (write '(funapp 1014 43))
                                      (display "\n")
                                      (car args)))
                                   (x7713
                                    (begin
                                      (write '(funapp 1014 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1015 35))
                                    (display "\n")
                                    (proc x7714 x7713)))))
                               g7712)
                              (letrec*
                               ((x-cnd7715
                                 (letrec*
                                  ((x7716
                                    (begin
                                      (write '(funapp 1020 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1021 35))
                                    (display "\n")
                                    (null? x7716)))))
                               (if x-cnd7715
                                 (letrec*
                                  ((g7717
                                    (letrec*
                                     ((x7720
                                       (begin
                                         (write '(funapp 1026 46))
                                         (display "\n")
                                         (car args)))
                                      (x7719
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7718
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1029 38))
                                       (display "\n")
                                       (proc x7720 x7719 x7718)))))
                                  g7717)
                                 (letrec*
                                  ((x-cnd7721
                                    (letrec*
                                     ((x7722
                                       (begin
                                         (write '(funapp 1034 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1035 38))
                                       (display "\n")
                                       (null? x7722)))))
                                  (if x-cnd7721
                                    (letrec*
                                     ((g7723
                                       (letrec*
                                        ((x7727
                                          (begin
                                            (write '(funapp 1040 49))
                                            (display "\n")
                                            (car args)))
                                         (x7726
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7725
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7724
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1044 41))
                                          (display "\n")
                                          (proc x7727 x7726 x7725 x7724)))))
                                     g7723)
                                    (letrec*
                                     ((x-cnd7728
                                       (letrec*
                                        ((x7729
                                          (letrec*
                                           ((x7730
                                             (begin
                                               (write '(funapp 1051 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1052 44))
                                             (display "\n")
                                             (cdr x7730)))))
                                        (begin
                                          (write '(funapp 1053 41))
                                          (display "\n")
                                          (null? x7729)))))
                                     (if x-cnd7728
                                       (letrec*
                                        ((g7731
                                          (letrec*
                                           ((x7737
                                             (begin
                                               (write '(funapp 1058 52))
                                               (display "\n")
                                               (car args)))
                                            (x7736
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7735
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7734
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7732
                                             (letrec*
                                              ((x7733
                                                (begin
                                                  (write '(funapp 1064 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (car x7733)))))
                                           (begin
                                             (write '(funapp 1066 44))
                                             (display "\n")
                                             (proc
                                              x7737
                                              x7736
                                              x7735
                                              x7734
                                              x7732)))))
                                        g7731)
                                       (letrec*
                                        ((x-cnd7738
                                          (letrec*
                                           ((x7739
                                             (letrec*
                                              ((x7740
                                                (begin
                                                  (write '(funapp 1078 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1079 47))
                                                (display "\n")
                                                (cddr x7740)))))
                                           (begin
                                             (write '(funapp 1080 44))
                                             (display "\n")
                                             (null? x7739)))))
                                        (if x-cnd7738
                                          (letrec*
                                           ((g7741
                                             (letrec*
                                              ((x7749
                                                (begin
                                                  (write '(funapp 1085 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7748
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7747
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7746
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7744
                                                (letrec*
                                                 ((x7745
                                                   (begin
                                                     (write '(funapp 1091 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1092 50))
                                                   (display "\n")
                                                   (car x7745))))
                                               (x7742
                                                (letrec*
                                                 ((x7743
                                                   (begin
                                                     (write '(funapp 1095 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1096 50))
                                                   (display "\n")
                                                   (cadr x7743)))))
                                              (begin
                                                (write '(funapp 1097 47))
                                                (display "\n")
                                                (proc
                                                 x7749
                                                 x7748
                                                 x7747
                                                 x7746
                                                 x7744
                                                 x7742)))))
                                           g7741)
                                          (letrec*
                                           ((x-cnd7750
                                             (letrec*
                                              ((x7751
                                                (letrec*
                                                 ((x7752
                                                   (begin
                                                     (write '(funapp 1110 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1111 50))
                                                   (display "\n")
                                                   (cdddr x7752)))))
                                              (begin
                                                (write '(funapp 1112 47))
                                                (display "\n")
                                                (null? x7751)))))
                                           (if x-cnd7750
                                             (letrec*
                                              ((g7753
                                                (letrec*
                                                 ((x7763
                                                   (begin
                                                     (write '(funapp 1117 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7762
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7761
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7760
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7758
                                                   (letrec*
                                                    ((x7759
                                                      (begin
                                                        (write
                                                         '(funapp 1123 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1124 53))
                                                      (display "\n")
                                                      (car x7759))))
                                                  (x7756
                                                   (letrec*
                                                    ((x7757
                                                      (begin
                                                        (write
                                                         '(funapp 1127 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1128 53))
                                                      (display "\n")
                                                      (cadr x7757))))
                                                  (x7754
                                                   (letrec*
                                                    ((x7755
                                                      (begin
                                                        (write
                                                         '(funapp 1131 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1132 53))
                                                      (display "\n")
                                                      (caddr x7755)))))
                                                 (begin
                                                   (write '(funapp 1133 50))
                                                   (display "\n")
                                                   (proc
                                                    x7763
                                                    x7762
                                                    x7761
                                                    x7760
                                                    x7758
                                                    x7756
                                                    x7754)))))
                                              g7753)
                                             (letrec*
                                              ((g7764
                                                (begin
                                                  (write '(funapp 1144 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7764)))))))))))))))))))
                   g7701)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 1150 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1150 57))
                        (display "\n")
                        (assert x7767))))
                    (g7766
                     (letrec*
                      ((x-cnd7768
                        (begin
                          (write '(funapp 1153 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7768
                        #f
                        (letrec*
                         ((x-cnd7769
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1158 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1158 55))
                              (display "\n")
                              (equal? x7770 e)))))
                         (if x-cnd7769
                           l
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 1161 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1161 55))
                              (display "\n")
                              (member e x7771)))))))))
                   g7766)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7773
                        (letrec*
                         ((x7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1170 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7775)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (cdr x7774)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (cdr x7773)))))
                   g7772)))
               (cadddr
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
                                (write '(funapp 1181 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1181 61))
                              (display "\n")
                              (cdr x7779)))))
                         (begin
                           (write '(funapp 1182 26))
                           (display "\n")
                           (cdr x7778)))))
                      (begin
                        (write '(funapp 1183 23))
                        (display "\n")
                        (car x7777)))))
                   g7776)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7780
                     (begin
                       (write '(funapp 1185 53))
                       (display "\n")
                       (random 42))))
                   g7780)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1189 59))
                        (display "\n")
                        (assert x7783))))
                    (g7782
                     (begin (write '(funapp 1190 28)) (display "\n") (= x 0))))
                   g7782)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1197 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7785
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1199 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7785))))
                   g7784)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1205 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1205 55))
                        (display "\n")
                        (car x7787)))))
                   g7786)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7789
                           (begin
                             (write '(funapp 1215 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7789
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 1217 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1217 55))
                              (display "\n")
                              (list? x7790)))
                           #f))))
                      (letrec*
                       ((g7791
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1220 52))
                             (display "\n")
                             (null? l)))))
                       g7791))))
                   g7788)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7793
                        (letrec*
                         ((x7794
                           (letrec*
                            ((x7795
                              (begin
                                (write '(funapp 1230 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1230 61))
                              (display "\n")
                              (car x7795)))))
                         (begin
                           (write '(funapp 1231 26))
                           (display "\n")
                           (cdr x7794)))))
                      (begin
                        (write '(funapp 1232 23))
                        (display "\n")
                        (cdr x7793)))))
                   g7792)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x-cnd7797
                        (letrec*
                         ((x7798 #\0))
                         (begin
                           (write '(funapp 1239 58))
                           (display "\n")
                           (char<=? x7798 c)))))
                      (if x-cnd7797
                        (letrec*
                         ((x7799 #\9))
                         (begin
                           (write '(funapp 1241 48))
                           (display "\n")
                           (char<=? c x7799)))
                        #f))))
                   g7796)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7802
                        (begin
                          (write '(funapp 1248 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1248 57))
                        (display "\n")
                        (assert x7802))))
                    (g7801
                     (letrec*
                      ((x-cnd7803
                        (begin
                          (write '(funapp 1251 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7803
                        #f
                        (letrec*
                         ((x-cnd7804
                           (letrec*
                            ((x7805
                              (begin
                                (write '(funapp 1256 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1256 56))
                              (display "\n")
                              (eqv? x7805 k)))))
                         (if x-cnd7804
                           (begin
                             (write '(funapp 1258 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7806
                              (begin
                                (write '(funapp 1259 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1259 55))
                              (display "\n")
                              (assq k x7806)))))))))
                   g7801)))
               (not (lambda (x) (letrec* ((g7807 (if x #f #t))) g7807)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7808
                     (begin
                       (write '(funapp 1263 50))
                       (display "\n")
                       (append l1 l2))))
                   g7808)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1267 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1267 57))
                        (display "\n")
                        (assert x7811))))
                    (g7810
                     (letrec*
                      ((x-cnd7812
                        (begin
                          (write '(funapp 1270 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7812
                        #f
                        (letrec*
                         ((x-cnd7813
                           (letrec*
                            ((x7814
                              (begin
                                (write '(funapp 1275 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1275 55))
                              (display "\n")
                              (eq? x7814 e)))))
                         (if x-cnd7813
                           l
                           (letrec*
                            ((x7815
                              (begin
                                (write '(funapp 1278 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1278 55))
                              (display "\n")
                              (memq e x7815)))))))))
                   g7810)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7816
                     (letrec*
                      ((x7817
                        (letrec*
                         ((x7818
                           (letrec*
                            ((x7819
                              (begin
                                (write '(funapp 1287 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1287 61))
                              (display "\n")
                              (car x7819)))))
                         (begin
                           (write '(funapp 1288 26))
                           (display "\n")
                           (cdr x7818)))))
                      (begin
                        (write '(funapp 1289 23))
                        (display "\n")
                        (car x7817)))))
                   g7816)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7820
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1294 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1294 57))
                        (display "\n")
                        (assert x7822))))
                    (g7821
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7823
                             (letrec*
                              ((x-cnd7824
                                (begin
                                  (write '(funapp 1302 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7824
                                0
                                (letrec*
                                 ((x7825
                                   (letrec*
                                    ((x7826
                                      (begin
                                        (write '(funapp 1307 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1307 63))
                                      (display "\n")
                                      (rec x7826)))))
                                 (begin
                                   (write '(funapp 1308 34))
                                   (display "\n")
                                   (+ 1 x7825)))))))
                           g7823))))
                      (letrec*
                       ((g7827
                         (begin
                           (write '(funapp 1310 40))
                           (display "\n")
                           (rec l))))
                       g7827))))
                   g7821)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7828
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7831))))
                    (g7829
                     (letrec*
                      ((x7832
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7832))))
                    (g7830
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1319 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7833
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1321 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7833))))
                   g7830)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x7835
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1327 65))
                        (display "\n")
                        (not x7835)))))
                   g7834)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7836
                     (letrec*
                      ((x7837
                        (letrec*
                         ((x7838
                           (begin
                             (write '(funapp 1334 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1334 58))
                           (display "\n")
                           (car x7838)))))
                      (begin
                        (write '(funapp 1335 23))
                        (display "\n")
                        (cdr x7837)))))
                   g7836)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7839
                     (letrec*
                      ((x7841
                        (begin
                          (write '(funapp 1340 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1340 57))
                        (display "\n")
                        (assert x7841))))
                    (g7840
                     (letrec*
                      ((x-cnd7842
                        (begin
                          (write '(funapp 1343 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7842
                        #f
                        (letrec*
                         ((x-cnd7843
                           (letrec*
                            ((x7844
                              (begin
                                (write '(funapp 1348 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1348 56))
                              (display "\n")
                              (equal? x7844 k)))))
                         (if x-cnd7843
                           (begin
                             (write '(funapp 1350 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7845
                              (begin
                                (write '(funapp 1351 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1351 55))
                              (display "\n")
                              (assoc k x7845)))))))))
                   g7840)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7846
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 1356 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1356 55))
                        (display "\n")
                        (car x7847)))))
                   g7846)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 1361 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1361 58))
                        (display "\n")
                        (assert x7851))))
                    (g7849
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7852))))
                    (g7850
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1363 63))
                        (display "\n")
                        (not x7853)))))
                   g7850)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7854
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1370 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7855
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1372 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7855))))
                   g7854)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 1378 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1378 62))
                        (display "\n")
                        (assert x7859))))
                    (g7857
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1379 57))
                        (display "\n")
                        (assert x7860))))
                    (g7858
                     (letrec*
                      ((x-cnd7861
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7861
                        #t
                        (letrec*
                         ((x-cnd7862
                           (begin
                             (write '(funapp 1386 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7862
                           (letrec*
                            ((g7863
                              (letrec*
                               ((x7865
                                 (begin
                                   (write '(funapp 1389 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1389 64))
                                 (display "\n")
                                 (f x7865))))
                             (g7864
                              (letrec*
                               ((x7866
                                 (begin
                                   (write '(funapp 1391 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1391 58))
                                 (display "\n")
                                 (for-each f x7866)))))
                            g7864)
                           (begin
                             (write '(funapp 1393 27))
                             (display "\n")
                             '())))))))
                   g7858)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x7869
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1398 59))
                        (display "\n")
                        (assert x7869))))
                    (g7868
                     (letrec*
                      ((x-cnd7870
                        (begin
                          (write '(funapp 1400 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7870
                        (begin
                          (write '(funapp 1400 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7868)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x7874
                        (begin
                          (write '(funapp 1405 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1405 58))
                        (display "\n")
                        (assert x7874))))
                    (g7872
                     (letrec*
                      ((x7875
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7875))))
                    (g7873
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1409 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7876
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1411 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7876))))
                   g7873)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x7878
                        (letrec*
                         ((x7879
                           (letrec*
                            ((x7880
                              (begin
                                (write '(funapp 1421 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1421 61))
                              (display "\n")
                              (cdr x7880)))))
                         (begin
                           (write '(funapp 1422 26))
                           (display "\n")
                           (cdr x7879)))))
                      (begin
                        (write '(funapp 1423 23))
                        (display "\n")
                        (car x7878)))))
                   g7877)))
               (newline (lambda () (letrec* ((g7881 #f)) g7881)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x7884
                        (letrec*
                         ((x7885
                           (begin
                             (write '(funapp 1431 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1431 58))
                           (display "\n")
                           (abs x7885))))
                       (x7883
                        (begin
                          (write '(funapp 1432 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1433 23))
                        (display "\n")
                        (/ x7884 x7883)))))
                   g7882)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x7888
                        (begin
                          (write '(funapp 1439 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1439 59))
                        (display "\n")
                        (assert x7888))))
                    (g7887
                     (letrec*
                      ((x7889
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1440 56))
                        (display "\n")
                        (not x7889)))))
                   g7887)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((x7894
                        (begin
                          (write '(funapp 1445 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1445 57))
                        (display "\n")
                        (assert x7894))))
                    (g7891
                     (letrec*
                      ((x7895
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1446 63))
                        (display "\n")
                        (assert x7895))))
                    (g7892
                     (letrec*
                      ((x7896
                        (letrec*
                         ((x7897
                           (begin
                             (write '(funapp 1449 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1449 61))
                           (display "\n")
                           (< index x7897)))))
                      (begin
                        (write '(funapp 1450 23))
                        (display "\n")
                        (assert x7896))))
                    (g7893
                     (letrec*
                      ((x-cnd7898
                        (begin
                          (write '(funapp 1453 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7898
                        (begin
                          (write '(funapp 1455 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7900
                           (begin
                             (write '(funapp 1457 34))
                             (display "\n")
                             (cdr l)))
                          (x7899
                           (begin
                             (write '(funapp 1457 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1458 26))
                           (display "\n")
                           (list-ref x7900 x7899)))))))
                   g7893)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x-cnd7902
                        (begin
                          (write '(funapp 1465 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7902
                        a
                        (letrec*
                         ((x7903
                           (begin
                             (write '(funapp 1468 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1468 57))
                           (display "\n")
                           (gcd b x7903)))))))
                   g7901)))
               (f
                (lambda (g)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7908
                        (begin (write '(funapp 1475 31)) (display "\n") (x y)))
                       (x7905
                        (letrec*
                         ((x7907
                           (begin
                             (write '(funapp 1478 34))
                             (display "\n")
                             (+ x 1)))
                          (x7906
                           (begin
                             (write '(funapp 1478 50))
                             (display "\n")
                             (+ y 1))))
                         (begin
                           (write '(funapp 1479 26))
                           (display "\n")
                           (g x7907 x7906)))))
                      (begin
                        (write '(funapp 1480 23))
                        (display "\n")
                        (λ x7908 x7905)))))
                   g7904)))
               (unzip
                (lambda (x k)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x-cnd7910
                        (begin
                          (write '(funapp 1487 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd7910
                        (begin
                          (write '(funapp 1489 25))
                          (display "\n")
                          (k 0 0))
                        (letrec*
                         ((x7912
                           (begin
                             (write '(funapp 1491 34))
                             (display "\n")
                             (- x 1)))
                          (x7911
                           (begin
                             (write '(funapp 1491 50))
                             (display "\n")
                             (f k))))
                         (begin
                           (write '(funapp 1492 26))
                           (display "\n")
                           (unzip x7912 x7911)))))))
                   g7909)))
               (zip
                (lambda (x y)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x-cnd7914
                        (begin
                          (write '(funapp 1499 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd7914
                        (letrec*
                         ((x-cnd7915
                           (begin
                             (write '(funapp 1501 46))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd7915
                           0
                           (begin
                             (write '(funapp 1501 71))
                             (display "\n")
                             'fail)))
                        (letrec*
                         ((x-cnd7916
                           (begin
                             (write '(funapp 1503 38))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd7916
                           (begin
                             (write '(funapp 1505 27))
                             (display "\n")
                             'fail)
                           (letrec*
                            ((x7917
                              (letrec*
                               ((x7919
                                 (begin
                                   (write '(funapp 1509 40))
                                   (display "\n")
                                   (- x 1)))
                                (x7918
                                 (begin
                                   (write '(funapp 1509 56))
                                   (display "\n")
                                   (- y 1))))
                               (begin
                                 (write '(funapp 1510 32))
                                 (display "\n")
                                 (zip x7919 x7918)))))
                            (begin
                              (write '(funapp 1511 29))
                              (display "\n")
                              (+ 1 x7917)))))))))
                   g7913)))
               (main
                (lambda (n)
                  (letrec*
                   ((g7920
                     (begin
                       (write '(funapp 1513 51))
                       (display "\n")
                       (unzip n zip))))
                   g7920))))
              (letrec*
               ((g7921
                 (letrec*
                  ((x7924
                    (letrec*
                     ((xj7349
                       (letrec*
                        ((x7925
                          (begin
                            (write '(funapp 1519 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 1519 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1519 61))
                             (display "\n")
                             'module)
                           x7925))))
                      (xk7350
                       (letrec*
                        ((x7926
                          (begin
                            (write '(funapp 1521 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 1521 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1521 54))
                             (display "\n")
                             'importer)
                           x7926)))))
                     (letrec*
                      ((g7927
                        (begin
                          (write '(funapp 1524 25))
                          (display "\n")
                          ((lambda (j7352 k7353 f7354)
                             (letrec*
                              ((g7928
                                (lambda (g7351)
                                  (letrec*
                                   ((g7929
                                     (letrec*
                                      ((x7930
                                        (letrec*
                                         ((x7931
                                           (begin
                                             (write '(funapp 1534 42))
                                             (display "\n")
                                             ((lambda (j7362 k7363 f7364)
                                                (letrec*
                                                 ((g7932
                                                   (lambda (g7360 g7361)
                                                     (letrec*
                                                      ((g7933
                                                        (letrec*
                                                         ((x7934
                                                           (letrec*
                                                            ((x7936
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1544
                                                                   59))
                                                                (display "\n")
                                                                (integer?/c
                                                                 j7362
                                                                 k7363
                                                                 g7360)))
                                                             (x7935
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1549
                                                                   59))
                                                                (display "\n")
                                                                (integer?/c
                                                                 j7362
                                                                 k7363
                                                                 g7361))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1553
                                                                 57))
                                                              (display "\n")
                                                              (f7364
                                                               x7936
                                                               x7935)))))
                                                         (begin
                                                           (write
                                                            '(funapp 1554 54))
                                                           (display "\n")
                                                           (integer?/c
                                                            j7362
                                                            k7363
                                                            x7934)))))
                                                      g7933))))
                                                 g7932))
                                              j7352
                                              k7353
                                              g7351))))
                                         (begin
                                           (write '(funapp 1563 40))
                                           (display "\n")
                                           (f7354 x7931)))))
                                      (begin
                                        (write '(funapp 1564 37))
                                        (display "\n")
                                        ((lambda (j7357 k7358 f7359)
                                           (letrec*
                                            ((g7937
                                              (lambda (g7355 g7356)
                                                (letrec*
                                                 ((g7938
                                                   (letrec*
                                                    ((x7939
                                                      (letrec*
                                                       ((x7941
                                                         (begin
                                                           (write
                                                            '(funapp 1574 54))
                                                           (display "\n")
                                                           (integer?/c
                                                            j7357
                                                            k7358
                                                            g7355)))
                                                        (x7940
                                                         (begin
                                                           (write
                                                            '(funapp 1579 54))
                                                           (display "\n")
                                                           (integer?/c
                                                            j7357
                                                            k7358
                                                            g7356))))
                                                       (begin
                                                         (write
                                                          '(funapp 1583 52))
                                                         (display "\n")
                                                         (f7359
                                                          x7941
                                                          x7940)))))
                                                    (begin
                                                      (write '(funapp 1584 49))
                                                      (display "\n")
                                                      (integer?/c
                                                       j7357
                                                       k7358
                                                       x7939)))))
                                                 g7938))))
                                            g7937))
                                         j7352
                                         k7353
                                         x7930)))))
                                   g7929))))
                              g7928))
                           xj7349
                           xk7350
                           f))))
                      g7927)))
                   (x7923 (input)))
                  (begin
                    (write '(funapp 1600 19))
                    (display "\n")
                    (x7924 x7923))))
                (g7922
                 (letrec*
                  ((x7943
                    (letrec*
                     ((xj7365
                       (letrec*
                        ((x7944
                          (begin
                            (write '(funapp 1605 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 1605 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1605 61))
                             (display "\n")
                             'module)
                           x7944))))
                      (xk7366
                       (letrec*
                        ((x7945
                          (begin
                            (write '(funapp 1607 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 1607 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1607 54))
                             (display "\n")
                             'importer)
                           x7945)))))
                     (letrec*
                      ((g7946
                        (begin
                          (write '(funapp 1610 25))
                          (display "\n")
                          ((lambda (j7368 k7369 f7370)
                             (letrec*
                              ((g7947
                                (lambda (g7367)
                                  (letrec*
                                   ((g7948
                                     (letrec*
                                      ((x7949
                                        (letrec*
                                         ((x7950
                                           (begin
                                             (write '(funapp 1619 48))
                                             (display "\n")
                                             (integer?/c j7368 k7369 g7367))))
                                         (begin
                                           (write '(funapp 1620 40))
                                           (display "\n")
                                           (f7370 x7950)))))
                                      (begin
                                        (write '(funapp 1621 37))
                                        (display "\n")
                                        (integer?/c j7368 k7369 x7949)))))
                                   g7948))))
                              g7947))
                           xj7365
                           xk7366
                           main))))
                      g7946)))
                   (x7942 (input)))
                  (begin
                    (write '(funapp 1629 19))
                    (display "\n")
                    (x7943 x7942)))))
               g7922))))
           g7384))))
       g7382)))
    g7381)))
