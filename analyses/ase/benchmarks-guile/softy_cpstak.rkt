(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7357 #t)) g7357)))
    (meta (lambda (v) (letrec* ((g7358 v)) g7358)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7359
          (letrec*
           ((g7360
             (letrec*
              ((x-e7361 lst))
              (letrec*
               ((v1742 x-e7361))
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
                   ((x-cnd7362
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7362
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
           g7360)))
        g7359)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7363 (lambda (v) (letrec* ((g7364 v)) g7364)))) g7363)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7365
          (letrec*
           ((x7366 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7366)))))
        g7365))))
   (letrec*
    ((g7367
      (letrec*
       ((g7368
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
           ((g7369 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7370
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7371
                     (lambda (k j lst)
                       (letrec*
                        ((g7372
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7373
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7373))
                             lst))))
                        g7372))))
                   g7371)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7374
                     (letrec*
                      ((x-cnd7375
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7375
                        g7261
                        (begin
                          (write '(blame g7259 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7374)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7376
                     (letrec*
                      ((x-cnd7377
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7377
                        g7264
                        (begin
                          (write '(blame g7262 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7376)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7378
                     (letrec*
                      ((x-cnd7379
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7379
                        g7267
                        (begin
                          (write '(blame g7265 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7378)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7380
                     (letrec*
                      ((x-cnd7381
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7382 #t)) g7382)) g7270))))
                      (if x-cnd7381
                        g7270
                        (begin
                          (write '(blame g7268 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7380)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7383
                     (letrec*
                      ((x-cnd7384
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7385 #t)) g7385)) g7273))))
                      (if x-cnd7384
                        g7273
                        (begin
                          (write '(blame g7271 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7383)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7386
                     (letrec*
                      ((x-cnd7387
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7387
                        g7276
                        (begin
                          (write '(blame g7274 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7386)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7388
                     (letrec*
                      ((x-cnd7389
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7389
                        g7279
                        (begin
                          (write '(blame g7277 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7388)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7390
                     (letrec*
                      ((x-cnd7391
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7391
                        g7282
                        (begin
                          (write '(blame g7280 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7390)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7392
                     (letrec*
                      ((x-cnd7393
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7393
                        g7285
                        (begin
                          (write '(blame g7283 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7392)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7394
                     (lambda (k j v)
                       (letrec*
                        ((g7395
                          (letrec*
                           ((x-cnd7396
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7396
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7395))))
                   g7394)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7397
                     (lambda (k j v)
                       (letrec*
                        ((g7398
                          (letrec*
                           ((x-cnd7399
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7399
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7403
                                (letrec*
                                 ((x7404
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7404))))
                               (x7400
                                (letrec*
                                 ((x7402
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7401
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7402 k j x7401)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7403 x7400)))))))
                        g7398))))
                   g7397)))
               (any? (lambda (v) (letrec* ((g7405 #t)) g7405)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7406
                     (letrec*
                      ((x7407
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7407)))))
                   g7406)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7408
                     (letrec*
                      ((x-cnd7409
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7410
                                (letrec*
                                 ((x7411
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7411)))))
                              g7410))
                           g7288))))
                      (if x-cnd7409
                        g7288
                        (begin
                          (write '(blame g7286 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7408)))
               (meta (lambda (v) (letrec* ((g7412 v)) g7412)))
               (+
                (letrec*
                 ((xj7289
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7413
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7293 k7294 f7295)
                         (letrec*
                          ((g7415
                            (lambda (g7291 g7292)
                              (letrec*
                               ((g7416
                                 (letrec*
                                  ((x7417
                                    (letrec*
                                     ((x7419
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7418
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7295 x7419 x7418)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7293 k7294 x7417)))))
                               g7416))))
                          g7415))
                       xj7289
                       xk7290
                       (lambda (a b)
                         (letrec*
                          ((g7414
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7414))))))
                  g7413)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7420
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7300 k7301 f7302)
                         (letrec*
                          ((g7422
                            (lambda (g7298 g7299)
                              (letrec*
                               ((g7423
                                 (letrec*
                                  ((x7424
                                    (letrec*
                                     ((x7426
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7425
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7302 x7426 x7425)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7300 k7301 x7424)))))
                               g7423))))
                          g7422))
                       xj7296
                       xk7297
                       (lambda (a b)
                         (letrec*
                          ((g7421
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7421))))))
                  g7420)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7427
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7307 k7308 f7309)
                         (letrec*
                          ((g7429
                            (lambda (g7305 g7306)
                              (letrec*
                               ((g7430
                                 (letrec*
                                  ((x7431
                                    (letrec*
                                     ((x7433
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7432
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7309 x7433 x7432)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7307 k7308 x7431)))))
                               g7430))))
                          g7429))
                       xj7303
                       xk7304
                       (lambda (a b)
                         (letrec*
                          ((g7428
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7428))))))
                  g7427)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7434
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7436
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7437
                                 (letrec*
                                  ((x7438
                                    (letrec*
                                     ((x7440
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7439
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7316 x7440 x7439)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7438)))))
                               g7437))))
                          g7436))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7435
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7435))))))
                  g7434)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7441
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7443
                            (lambda (g7319)
                              (letrec*
                               ((g7444
                                 (letrec*
                                  ((x7445
                                    (letrec*
                                     ((x7446
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7322 x7446)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7320 k7321 x7445)))))
                               g7444))))
                          g7443))
                       xj7317
                       xk7318
                       (lambda (p)
                         (letrec*
                          ((g7442
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7442))))))
                  g7441)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7447
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7326 k7327 f7328)
                         (letrec*
                          ((g7449
                            (lambda (g7325)
                              (letrec*
                               ((g7450
                                 (letrec*
                                  ((x7451
                                    (letrec*
                                     ((x7452
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7328 x7452)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7326 k7327 x7451)))))
                               g7450))))
                          g7449))
                       xj7323
                       xk7324
                       (lambda (p)
                         (letrec*
                          ((g7448
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7448))))))
                  g7447)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7453
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7455
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7456
                                 (letrec*
                                  ((x7457
                                    (letrec*
                                     ((x7459
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7458
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7335 x7459 x7458)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7333 k7334 x7457)))))
                               g7456))))
                          g7455))
                       xj7329
                       xk7330
                       (lambda (a b)
                         (letrec*
                          ((g7454
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7454))))))
                  g7453)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7460
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7462
                            (lambda (g7338)
                              (letrec*
                               ((g7463
                                 (letrec*
                                  ((x7464
                                    (letrec*
                                     ((x7465
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7341 x7465)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7339 k7340 x7464)))))
                               g7463))))
                          g7462))
                       xj7336
                       xk7337
                       (lambda (v i)
                         (letrec*
                          ((g7461
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7461))))))
                  g7460)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7466
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7468
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7469
                                 (letrec*
                                  ((x7470
                                    (letrec*
                                     ((x7472
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7471
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7348 x7472 x7471)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7346 k7347 x7470)))))
                               g7469))))
                          g7468))
                       xj7342
                       xk7343
                       (lambda (vec i v)
                         (letrec*
                          ((g7467
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7467))))))
                  g7466)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7473
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7473)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7474
                     (letrec*
                      ((x7475
                        (letrec*
                         ((x7476
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7476)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7475)))))
                   g7474)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7477
                     (letrec*
                      ((x7480
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7480))))
                    (g7478
                     (letrec*
                      ((x7481
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7481))))
                    (g7479
                     (letrec*
                      ((x-cnd7482
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7482
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7485
                           (letrec*
                            ((x7486
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7486))))
                          (x7483
                           (letrec*
                            ((x7484
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7484)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7485 x7483)))))))
                   g7479)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7487
                     (letrec*
                      ((x7488
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7488)))))
                   g7487)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7489
                     (letrec*
                      ((x7490
                        (letrec*
                         ((x7491
                           (letrec*
                            ((x7492
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7492)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7491)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7490)))))
                   g7489)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7493
                     (letrec*
                      ((x7494
                        (letrec*
                         ((x7495
                           (letrec*
                            ((x7496
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7496)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7495)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7494)))))
                   g7493)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7497
                     (letrec*
                      ((x7500
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7500))))
                    (g7498
                     (letrec*
                      ((x7501
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7501))))
                    (g7499
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
                       ((g7502
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7503 res))
                       g7503))))
                   g7499)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7504
                     (letrec*
                      ((x7505
                        (letrec*
                         ((x7506
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7506)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7505)))))
                   g7504)))
               (cdaadr
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
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7510)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7509)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7508)))))
                   g7507)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7511
                     (letrec*
                      ((x7513
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7513))))
                    (g7512
                     (letrec*
                      ((x-cnd7514
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7514
                        #f
                        (letrec*
                         ((x-cnd7515
                           (letrec*
                            ((x7516
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7516 k)))))
                         (if x-cnd7515
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7517
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7517)))))))))
                   g7512)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7518
                     (letrec*
                      ((x7519
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7519)))))
                   g7518)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7520
                     (letrec*
                      ((x7522
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7522))))
                    (g7521
                     (letrec*
                      ((x-cnd7523
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7523
                        ""
                        (letrec*
                         ((x7526
                           (letrec*
                            ((x7527
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7527))))
                          (x7524
                           (letrec*
                            ((x7525
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7525)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7526 x7524)))))))
                   g7521)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7528
                     (letrec*
                      ((x7531
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7531))))
                    (g7529
                     (letrec*
                      ((x7532
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7532))))
                    (g7530
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7533
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7533))))
                   g7530)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7534
                     (letrec*
                      ((x7535
                        (letrec*
                         ((x7536
                           (letrec*
                            ((x7537
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7537)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7536)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7535)))))
                   g7534)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7538
                     (letrec*
                      ((x7541
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7541))))
                    (g7539
                     (letrec*
                      ((x7542
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7542))))
                    (g7540
                     (letrec*
                      ((x-cnd7543
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7543
                        x
                        (letrec*
                         ((x7545
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7544
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7545 x7544)))))))
                   g7540)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7546
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7546)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7547
                     (letrec*
                      ((x-cnd7548
                        (letrec*
                         ((x7549 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7549)))))
                      (if x-cnd7548
                        (letrec*
                         ((x7550 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7550)))
                        #f))))
                   g7547)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7551
                     (letrec*
                      ((x7553
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7553))))
                    (g7552
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7554
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7555 (if val7243 val7243 #f)))
                             g7555)))))
                       g7554))))
                   g7552)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7556
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7557
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7557 9)))))
                      (letrec*
                       ((g7558
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7559
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7559 10)))))
                            (letrec*
                             ((g7560
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7561
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7561 32))))))
                             g7560)))))
                       g7558))))
                   g7556)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7562
                     (letrec*
                      ((x7563
                        (letrec*
                         ((x7564
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7564)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7563)))))
                   g7562)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7565
                     (letrec*
                      ((x7567
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7567))))
                    (g7566
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7566)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7568 #f)) g7568)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7569
                     (letrec*
                      ((x7570
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7570)))))
                   g7569)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7571
                     (letrec*
                      ((x7573
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7573))))
                    (g7572
                     (letrec*
                      ((x-cnd7574
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7574
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7572)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7575
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7576
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7577
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7577
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7578
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7579
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7579
                                       (letrec*
                                        ((x-cnd7580
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7580
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7581
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7582
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7582
                                             (letrec*
                                              ((x-cnd7583
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7583
                                                (letrec*
                                                 ((x-cnd7584
                                                   (letrec*
                                                    ((x7586
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7585
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7586 x7585)))))
                                                 (if x-cnd7584
                                                   (letrec*
                                                    ((x7588
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7587
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7588 x7587)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7589
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7590
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7590
                                                (letrec*
                                                 ((x-cnd7591
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7591
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7592
                                                       (letrec*
                                                        ((x-cnd7593
                                                          (letrec*
                                                           ((x7594
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
                                                             (= x7594 n)))))
                                                        (if x-cnd7593
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7595
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
                                                                    ((g7596
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7597
                                                                           (letrec*
                                                                            ((x7599
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
                                                                             (x7598
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
                                                                               x7599
                                                                               x7598)))))
                                                                         (if x-cnd7597
                                                                           (letrec*
                                                                            ((x7600
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
                                                                               x7600)))
                                                                           #f)))))
                                                                    g7596))))
                                                                g7595))))
                                                           (letrec*
                                                            ((g7601
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7601))
                                                          #f))))
                                                     g7592))
                                                   #f))
                                                #f)))))
                                         g7589)))))
                                   g7581)))))
                             g7578)))))
                       g7576))))
                   g7575)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7603
                        (letrec*
                         ((x7604
                           (letrec*
                            ((x7605
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7605)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7604)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7603)))))
                   g7602)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7606
                     (letrec*
                      ((x7607
                        (letrec*
                         ((x7608
                           (letrec*
                            ((x7609
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7609)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7608)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7607)))))
                   g7606)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7610
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7610)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7613))))
                    (g7612
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7614
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7615 (if val7252 val7252 #f)))
                             g7615)))))
                       g7614))))
                   g7612)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7619))))
                    (g7617
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7620))))
                    (g7618
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
                       ((g7621
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7622 res))
                       g7622))))
                   g7618)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7623
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7623)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7627))))
                    (g7625
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7628))))
                    (g7626
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7629
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7629))))
                   g7626)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7631
                        (letrec*
                         ((x7632
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7632)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7631)))))
                   g7630)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7634
                        (letrec*
                         ((x7635
                           (letrec*
                            ((x7636
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7636)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7635)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7634)))))
                   g7633)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7638
                        (letrec*
                         ((x7639
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7639)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7638)))))
                   g7637)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7641
                        (letrec*
                         ((x7642
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7642)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7641)))))
                   g7640)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7646))))
                    (g7644
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7647))))
                    (g7645
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7648)))))
                   g7645)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7652)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7651)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7650)))))
                   g7649)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7655))))
                    (g7654
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7654)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7656
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7656)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7658
                        (letrec*
                         ((x7659
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7659)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7658)))))
                   g7657)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7660
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7660)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7663))))
                    (g7662
                     (letrec*
                      ((x-cnd7664
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7664
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7667
                           (letrec*
                            ((x7668
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7668))))
                          (x7665
                           (letrec*
                            ((x7666
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7666)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7667 x7665)))))))
                   g7662)))
               (caaadr
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
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7672)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7671)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7670)))))
                   g7669)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((x7674
                        (letrec*
                         ((x7675
                           (letrec*
                            ((x7676
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7676)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7675)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7674)))))
                   g7673)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x7679
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7679))))
                    (g7678
                     (letrec*
                      ((x7680
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7680)))))
                   g7678)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7681
                     (letrec*
                      ((x7682
                        (letrec*
                         ((x7683
                           (letrec*
                            ((x7684
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7684)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7683)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7682)))))
                   g7681)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7685
                     (letrec*
                      ((x7688
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7688))))
                    (g7686
                     (letrec*
                      ((x7689
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7689))))
                    (g7687
                     (letrec*
                      ((x-cnd7690
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7690
                        (letrec*
                         ((g7691
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7691)
                        (letrec*
                         ((x-cnd7692
                           (letrec*
                            ((x7693
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7693)))))
                         (if x-cnd7692
                           (letrec*
                            ((g7694
                              (letrec*
                               ((x7695
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7695)))))
                            g7694)
                           (letrec*
                            ((x-cnd7696
                              (letrec*
                               ((x7697
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7697)))))
                            (if x-cnd7696
                              (letrec*
                               ((g7698
                                 (letrec*
                                  ((x7700
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7699
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7700 x7699)))))
                               g7698)
                              (letrec*
                               ((x-cnd7701
                                 (letrec*
                                  ((x7702
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7702)))))
                               (if x-cnd7701
                                 (letrec*
                                  ((g7703
                                    (letrec*
                                     ((x7706
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7705
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7704
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7706 x7705 x7704)))))
                                  g7703)
                                 (letrec*
                                  ((x-cnd7707
                                    (letrec*
                                     ((x7708
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7708)))))
                                  (if x-cnd7707
                                    (letrec*
                                     ((g7709
                                       (letrec*
                                        ((x7713
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7712
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7711
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7710
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7713 x7712 x7711 x7710)))))
                                     g7709)
                                    (letrec*
                                     ((x-cnd7714
                                       (letrec*
                                        ((x7715
                                          (letrec*
                                           ((x7716
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7716)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7715)))))
                                     (if x-cnd7714
                                       (letrec*
                                        ((g7717
                                          (letrec*
                                           ((x7723
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7722
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7721
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7720
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7718
                                             (letrec*
                                              ((x7719
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7719)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7723
                                              x7722
                                              x7721
                                              x7720
                                              x7718)))))
                                        g7717)
                                       (letrec*
                                        ((x-cnd7724
                                          (letrec*
                                           ((x7725
                                             (letrec*
                                              ((x7726
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x7726)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x7725)))))
                                        (if x-cnd7724
                                          (letrec*
                                           ((g7727
                                             (letrec*
                                              ((x7735
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7734
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7733
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7732
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7730
                                                (letrec*
                                                 ((x7731
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x7731))))
                                               (x7728
                                                (letrec*
                                                 ((x7729
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x7729)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x7735
                                                 x7734
                                                 x7733
                                                 x7732
                                                 x7730
                                                 x7728)))))
                                           g7727)
                                          (letrec*
                                           ((x-cnd7736
                                             (letrec*
                                              ((x7737
                                                (letrec*
                                                 ((x7738
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x7738)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x7737)))))
                                           (if x-cnd7736
                                             (letrec*
                                              ((g7739
                                                (letrec*
                                                 ((x7749
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7748
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7747
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7746
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7744
                                                   (letrec*
                                                    ((x7745
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x7745))))
                                                  (x7742
                                                   (letrec*
                                                    ((x7743
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x7743))))
                                                  (x7740
                                                   (letrec*
                                                    ((x7741
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x7741)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x7749
                                                    x7748
                                                    x7747
                                                    x7746
                                                    x7744
                                                    x7742
                                                    x7740)))))
                                              g7739)
                                             (letrec*
                                              ((g7750
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7750)))))))))))))))))))
                   g7687)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x7753))))
                    (g7752
                     (letrec*
                      ((x-cnd7754
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7754
                        #f
                        (letrec*
                         ((x-cnd7755
                           (letrec*
                            ((x7756
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x7756 e)))))
                         (if x-cnd7755
                           l
                           (letrec*
                            ((x7757
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x7757)))))))))
                   g7752)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7759
                        (letrec*
                         ((x7760
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x7761)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x7760)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x7759)))))
                   g7758)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7763
                        (letrec*
                         ((x7764
                           (letrec*
                            ((x7765
                              (begin
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x7765)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x7764)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x7763)))))
                   g7762)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7766
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g7766)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7769
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x7769))))
                    (g7768
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g7768)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7771
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7771))))
                   g7770)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x7773)))))
                   g7772)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7775
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x7776)))
                           #f))))
                      (letrec*
                       ((g7777
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g7777))))
                   g7774)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7779
                        (letrec*
                         ((x7780
                           (letrec*
                            ((x7781
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x7781)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x7780)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x7779)))))
                   g7778)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x-cnd7783
                        (letrec*
                         ((x7784 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x7784 c)))))
                      (if x-cnd7783
                        (letrec*
                         ((x7785 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x7785)))
                        #f))))
                   g7782)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x7788))))
                    (g7787
                     (letrec*
                      ((x-cnd7789
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7789
                        #f
                        (letrec*
                         ((x-cnd7790
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x7791 k)))))
                         (if x-cnd7790
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7792
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x7792)))))))))
                   g7787)))
               (not (lambda (x) (letrec* ((g7793 (if x #f #t))) g7793)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7794
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g7794)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x7797))))
                    (g7796
                     (letrec*
                      ((x-cnd7798
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7798
                        #f
                        (letrec*
                         ((x-cnd7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x7800 e)))))
                         (if x-cnd7799
                           l
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x7801)))))))))
                   g7796)))
               (cadaar
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
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x7805)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x7804)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x7803)))))
                   g7802)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x7808))))
                    (g7807
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7809
                             (letrec*
                              ((x-cnd7810
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7810
                                0
                                (letrec*
                                 ((x7811
                                   (letrec*
                                    ((x7812
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x7812)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x7811)))))))
                           g7809))))
                      (letrec*
                       ((g7813
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g7813))))
                   g7807)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7817))))
                    (g7815
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x7818))))
                    (g7816
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7819
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7819))))
                   g7816)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7820
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x7821)))))
                   g7820)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7822
                     (letrec*
                      ((x7823
                        (letrec*
                         ((x7824
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x7824)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x7823)))))
                   g7822)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7825
                     (letrec*
                      ((x7827
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x7827))))
                    (g7826
                     (letrec*
                      ((x-cnd7828
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7828
                        #f
                        (letrec*
                         ((x-cnd7829
                           (letrec*
                            ((x7830
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x7830 k)))))
                         (if x-cnd7829
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7831
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x7831)))))))))
                   g7826)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7832
                     (letrec*
                      ((x7833
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x7833)))))
                   g7832)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x7837
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7837))))
                    (g7835
                     (letrec*
                      ((x7838
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x7838))))
                    (g7836
                     (letrec*
                      ((x7839
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x7839)))))
                   g7836)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7841
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7841))))
                   g7840)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x7845))))
                    (g7843
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x7846))))
                    (g7844
                     (letrec*
                      ((x-cnd7847
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7847
                        #t
                        (letrec*
                         ((x-cnd7848
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7848
                           (letrec*
                            ((g7849
                              (letrec*
                               ((x7851
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x7851))))
                             (g7850
                              (letrec*
                               ((x7852
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x7852)))))
                            g7850)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g7844)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((x7855
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x7855))))
                    (g7854
                     (letrec*
                      ((x-cnd7856
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7856
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7854)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7860))))
                    (g7858
                     (letrec*
                      ((x7861
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x7861))))
                    (g7859
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7862
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7862))))
                   g7859)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7863
                     (letrec*
                      ((x7864
                        (letrec*
                         ((x7865
                           (letrec*
                            ((x7866
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x7866)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x7865)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x7864)))))
                   g7863)))
               (newline (lambda () (letrec* ((g7867 #f)) g7867)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x7870
                        (letrec*
                         ((x7871
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x7871))))
                       (x7869
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x7870 x7869)))))
                   g7868)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x7874
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x7874))))
                    (g7873
                     (letrec*
                      ((x7875
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x7875)))))
                   g7873)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x7880
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x7880))))
                    (g7877
                     (letrec*
                      ((x7881
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x7881))))
                    (g7878
                     (letrec*
                      ((x7882
                        (letrec*
                         ((x7883
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x7883)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x7882))))
                    (g7879
                     (letrec*
                      ((x-cnd7884
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7884
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7886
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x7885
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x7886 x7885)))))))
                   g7879)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((x-cnd7888
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7888
                        a
                        (letrec*
                         ((x7889
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x7889)))))))
                   g7887)))
               (tak
                (lambda (x y z k)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((x-cnd7891
                        (letrec*
                         ((x7892
                           (begin
                             (write '(funapp 1476 52))
                             (display "\n")
                             (< y x))))
                         (begin
                           (write '(funapp 1476 62))
                           (display "\n")
                           (not x7892)))))
                      (if x-cnd7891
                        (begin (write '(funapp 1478 25)) (display "\n") (k z))
                        (letrec*
                         ((x7898
                           (begin
                             (write '(funapp 1480 34))
                             (display "\n")
                             (- x 1))))
                         (begin
                           (write '(funapp 1481 26))
                           (display "\n")
                           (tak
                            x7898
                            y
                            z
                            (lambda (v1)
                              (letrec*
                               ((g7893
                                 (letrec*
                                  ((x7897
                                    (begin
                                      (write '(funapp 1489 41))
                                      (display "\n")
                                      (- y 1))))
                                  (begin
                                    (write '(funapp 1490 33))
                                    (display "\n")
                                    (tak
                                     x7897
                                     z
                                     x
                                     (lambda (v2)
                                       (letrec*
                                        ((g7894
                                          (letrec*
                                           ((x7896
                                             (begin
                                               (write '(funapp 1498 48))
                                               (display "\n")
                                               (- z 1))))
                                           (begin
                                             (write '(funapp 1499 40))
                                             (display "\n")
                                             (tak
                                              x7896
                                              x
                                              y
                                              (lambda (v3)
                                                (letrec*
                                                 ((g7895
                                                   (begin
                                                     (write '(funapp 1505 52))
                                                     (display "\n")
                                                     (tak v1 v2 v3 k))))
                                                 g7895)))))))
                                        g7894)))))))
                               g7893)))))))))
                   g7890)))
               (tak-main
                (lambda (x y z)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7900
                        (letrec*
                         ((x7901
                           (begin
                             (write '(funapp 1515 48))
                             (display "\n")
                             (x))))
                         (begin
                           (write '(funapp 1515 54))
                           (display "\n")
                           (λ x7901 x)))))
                      (begin
                        (write '(funapp 1516 23))
                        (display "\n")
                        (tak x y z x7900)))))
                   g7899))))
              (letrec*
               ((g7902
                 (letrec*
                  ((x7906
                    (letrec*
                     ((xj7349
                       (begin
                         (write '(funapp 1523 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1523 35))
                            (display "\n")
                            'module))))
                      (xk7350
                       (begin
                         (write '(funapp 1523 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1523 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g7907
                        (begin
                          (write '(funapp 1526 25))
                          (display "\n")
                          ((lambda (j7354 k7355 f7356)
                             (letrec*
                              ((g7908
                                (lambda (g7351 g7352 g7353)
                                  (letrec*
                                   ((g7909
                                     (letrec*
                                      ((x7910
                                        (letrec*
                                         ((x7913
                                           (begin
                                             (write '(funapp 1535 48))
                                             (display "\n")
                                             (integer?/c j7354 k7355 g7351)))
                                          (x7912
                                           (begin
                                             (write '(funapp 1536 48))
                                             (display "\n")
                                             (integer?/c j7354 k7355 g7352)))
                                          (x7911
                                           (begin
                                             (write '(funapp 1537 48))
                                             (display "\n")
                                             (integer?/c j7354 k7355 g7353))))
                                         (begin
                                           (write '(funapp 1538 40))
                                           (display "\n")
                                           (f7356 x7913 x7912 x7911)))))
                                      (begin
                                        (write '(funapp 1539 37))
                                        (display "\n")
                                        (integer?/c j7354 k7355 x7910)))))
                                   g7909))))
                              g7908))
                           xj7349
                           xk7350
                           tak-main))))
                      g7907)))
                   (x7905 (input))
                   (x7904 (input))
                   (x7903 (input)))
                  (begin
                    (write '(funapp 1549 19))
                    (display "\n")
                    (x7906 x7905 x7904 x7903)))))
               g7902))))
           g7370))))
       g7368)))
    g7367)))
