(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
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
                   ((x-cnd7362
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7362
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
           ((x7366 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7366)))))
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
           ((g7369 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7370
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7371
                     (lambda (k j lst)
                       (letrec*
                        ((g7372
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7373
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7373))
                             lst))))
                        g7372))))
                   g7371)))
               (real?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7374
                     (letrec*
                      ((x-cnd7375
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7269))))
                      (if x-cnd7375
                        g7269
                        (begin
                          (write '(blame g7267 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7374)))
               (boolean?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7376
                     (letrec*
                      ((x-cnd7377
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7272))))
                      (if x-cnd7377
                        g7272
                        (begin
                          (write '(blame g7270 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7376)))
               (number?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7378
                     (letrec*
                      ((x-cnd7379
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7275))))
                      (if x-cnd7379
                        g7275
                        (begin
                          (write '(blame g7273 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7378)))
               (any/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7380
                     (letrec*
                      ((x-cnd7381
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7382 #t)) g7382)) g7278))))
                      (if x-cnd7381
                        g7278
                        (begin
                          (write '(blame g7276 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7380)))
               (any?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7383
                     (letrec*
                      ((x-cnd7384
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7385 #t)) g7385)) g7281))))
                      (if x-cnd7384
                        g7281
                        (begin
                          (write '(blame g7279 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7383)))
               (cons?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7386
                     (letrec*
                      ((x-cnd7387
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7284))))
                      (if x-cnd7387
                        g7284
                        (begin
                          (write '(blame g7282 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7386)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7388
                     (letrec*
                      ((x-cnd7389
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (pair? g7287))))
                      (if x-cnd7389
                        g7287
                        (begin
                          (write '(blame g7285 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7388)))
               (integer?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7390
                     (letrec*
                      ((x-cnd7391
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (integer? g7290))))
                      (if x-cnd7391
                        g7290
                        (begin
                          (write '(blame g7288 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7390)))
               (symbol?/c
                (lambda (g7291 g7292 g7293)
                  (letrec*
                   ((g7392
                     (letrec*
                      ((x-cnd7393
                        (begin
                          (write '(funapp 142 35))
                          (display "\n")
                          (symbol? g7293))))
                      (if x-cnd7393
                        g7293
                        (begin
                          (write '(blame g7291 143 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7291)))))))
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
                               (write '(funapp 153 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7396
                             (begin
                               (write '(funapp 154 42))
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
                               (write '(funapp 165 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7399
                             (begin
                               (write '(funapp 167 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7403
                                (letrec*
                                 ((x7404
                                   (begin
                                     (write '(funapp 171 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 172 34))
                                   (display "\n")
                                   (contract k j x7404))))
                               (x7400
                                (letrec*
                                 ((x7402
                                   (begin
                                     (write '(funapp 175 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7401
                                   (begin
                                     (write '(funapp 175 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 176 34))
                                   (display "\n")
                                   (x7402 k j x7401)))))
                              (begin
                                (write '(funapp 177 31))
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
                          (write '(funapp 184 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 184 55))
                        (display "\n")
                        (not x7407)))))
                   g7406)))
               (nonzero?/c
                (lambda (g7294 g7295 g7296)
                  (letrec*
                   ((g7408
                     (letrec*
                      ((x-cnd7409
                        (begin
                          (write '(funapp 192 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7410
                                (letrec*
                                 ((x7411
                                   (begin
                                     (write '(funapp 194 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 194 64))
                                   (display "\n")
                                   (not x7411)))))
                              g7410))
                           g7296))))
                      (if x-cnd7409
                        g7296
                        (begin
                          (write '(blame g7294 199 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7294)))))))
                   g7408)))
               (meta (lambda (v) (letrec* ((g7412 v)) g7412)))
               (+
                (letrec*
                 ((xj7297
                   (begin (write '(funapp 204 26)) (display "\n") 'server))
                  (xk7298
                   (begin (write '(funapp 204 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7413
                    (begin
                      (write '(funapp 207 21))
                      (display "\n")
                      ((lambda (j7301 k7302 f7303)
                         (letrec*
                          ((g7415
                            (lambda (g7299 g7300)
                              (letrec*
                               ((g7416
                                 (letrec*
                                  ((x7417
                                    (letrec*
                                     ((x7419
                                       (begin
                                         (write '(funapp 216 44))
                                         (display "\n")
                                         (number?/c j7301 k7302 g7299)))
                                      (x7418
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7301 k7302 g7300))))
                                     (begin
                                       (write '(funapp 218 36))
                                       (display "\n")
                                       (f7303 x7419 x7418)))))
                                  (begin
                                    (write '(funapp 219 33))
                                    (display "\n")
                                    (number?/c j7301 k7302 x7417)))))
                               g7416))))
                          g7415))
                       xj7297
                       xk7298
                       (lambda (a b)
                         (letrec*
                          ((g7414
                            (begin
                              (write '(funapp 224 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7414))))))
                  g7413)))
               (-
                (letrec*
                 ((xj7304
                   (begin (write '(funapp 228 26)) (display "\n") 'server))
                  (xk7305
                   (begin (write '(funapp 228 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7420
                    (begin
                      (write '(funapp 231 21))
                      (display "\n")
                      ((lambda (j7308 k7309 f7310)
                         (letrec*
                          ((g7422
                            (lambda (g7306 g7307)
                              (letrec*
                               ((g7423
                                 (letrec*
                                  ((x7424
                                    (letrec*
                                     ((x7426
                                       (begin
                                         (write '(funapp 240 44))
                                         (display "\n")
                                         (number?/c j7308 k7309 g7306)))
                                      (x7425
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7308 k7309 g7307))))
                                     (begin
                                       (write '(funapp 242 36))
                                       (display "\n")
                                       (f7310 x7426 x7425)))))
                                  (begin
                                    (write '(funapp 243 33))
                                    (display "\n")
                                    (number?/c j7308 k7309 x7424)))))
                               g7423))))
                          g7422))
                       xj7304
                       xk7305
                       (lambda (a b)
                         (letrec*
                          ((g7421
                            (begin
                              (write '(funapp 248 53))
                              (display "\n")
                              (orig-- a b))))
                          g7421))))))
                  g7420)))
               (*
                (letrec*
                 ((xj7311
                   (begin (write '(funapp 252 26)) (display "\n") 'server))
                  (xk7312
                   (begin (write '(funapp 252 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7427
                    (begin
                      (write '(funapp 255 21))
                      (display "\n")
                      ((lambda (j7315 k7316 f7317)
                         (letrec*
                          ((g7429
                            (lambda (g7313 g7314)
                              (letrec*
                               ((g7430
                                 (letrec*
                                  ((x7431
                                    (letrec*
                                     ((x7433
                                       (begin
                                         (write '(funapp 264 44))
                                         (display "\n")
                                         (number?/c j7315 k7316 g7313)))
                                      (x7432
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7315 k7316 g7314))))
                                     (begin
                                       (write '(funapp 266 36))
                                       (display "\n")
                                       (f7317 x7433 x7432)))))
                                  (begin
                                    (write '(funapp 267 33))
                                    (display "\n")
                                    (number?/c j7315 k7316 x7431)))))
                               g7430))))
                          g7429))
                       xj7311
                       xk7312
                       (lambda (a b)
                         (letrec*
                          ((g7428
                            (begin
                              (write '(funapp 272 53))
                              (display "\n")
                              (orig-* a b))))
                          g7428))))))
                  g7427)))
               (/
                (letrec*
                 ((xj7318
                   (begin (write '(funapp 276 26)) (display "\n") 'server))
                  (xk7319
                   (begin (write '(funapp 276 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7434
                    (begin
                      (write '(funapp 279 21))
                      (display "\n")
                      ((lambda (j7322 k7323 f7324)
                         (letrec*
                          ((g7436
                            (lambda (g7320 g7321)
                              (letrec*
                               ((g7437
                                 (letrec*
                                  ((x7438
                                    (letrec*
                                     ((x7440
                                       (begin
                                         (write '(funapp 288 44))
                                         (display "\n")
                                         (number?/c j7322 k7323 g7320)))
                                      (x7439
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7322 k7323 g7321))))
                                     (begin
                                       (write '(funapp 290 36))
                                       (display "\n")
                                       (f7324 x7440 x7439)))))
                                  (begin
                                    (write '(funapp 291 33))
                                    (display "\n")
                                    (number?/c j7322 k7323 x7438)))))
                               g7437))))
                          g7436))
                       xj7318
                       xk7319
                       (lambda (a b)
                         (letrec*
                          ((g7435
                            (begin
                              (write '(funapp 296 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7435))))))
                  g7434)))
               (car
                (letrec*
                 ((xj7325
                   (begin (write '(funapp 300 26)) (display "\n") 'server))
                  (xk7326
                   (begin (write '(funapp 300 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7441
                    (begin
                      (write '(funapp 303 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7443
                            (lambda (g7327)
                              (letrec*
                               ((g7444
                                 (letrec*
                                  ((x7445
                                    (letrec*
                                     ((x7446
                                       (begin
                                         (write '(funapp 312 44))
                                         (display "\n")
                                         (pair?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 313 36))
                                       (display "\n")
                                       (f7330 x7446)))))
                                  (begin
                                    (write '(funapp 314 33))
                                    (display "\n")
                                    (any/c j7328 k7329 x7445)))))
                               g7444))))
                          g7443))
                       xj7325
                       xk7326
                       (lambda (p)
                         (letrec*
                          ((g7442
                            (begin
                              (write '(funapp 319 51))
                              (display "\n")
                              (orig-car p))))
                          g7442))))))
                  g7441)))
               (cdr
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 323 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 323 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7447
                    (begin
                      (write '(funapp 326 21))
                      (display "\n")
                      ((lambda (j7334 k7335 f7336)
                         (letrec*
                          ((g7449
                            (lambda (g7333)
                              (letrec*
                               ((g7450
                                 (letrec*
                                  ((x7451
                                    (letrec*
                                     ((x7452
                                       (begin
                                         (write '(funapp 335 44))
                                         (display "\n")
                                         (pair?/c j7334 k7335 g7333))))
                                     (begin
                                       (write '(funapp 336 36))
                                       (display "\n")
                                       (f7336 x7452)))))
                                  (begin
                                    (write '(funapp 337 33))
                                    (display "\n")
                                    (any/c j7334 k7335 x7451)))))
                               g7450))))
                          g7449))
                       xj7331
                       xk7332
                       (lambda (p)
                         (letrec*
                          ((g7448
                            (begin
                              (write '(funapp 342 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7448))))))
                  g7447)))
               (cons
                (letrec*
                 ((xj7337
                   (begin (write '(funapp 346 26)) (display "\n") 'server))
                  (xk7338
                   (begin (write '(funapp 346 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7453
                    (begin
                      (write '(funapp 349 21))
                      (display "\n")
                      ((lambda (j7341 k7342 f7343)
                         (letrec*
                          ((g7455
                            (lambda (g7339 g7340)
                              (letrec*
                               ((g7456
                                 (letrec*
                                  ((x7457
                                    (letrec*
                                     ((x7459
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (any/c j7341 k7342 g7339)))
                                      (x7458
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7341 k7342 g7340))))
                                     (begin
                                       (write '(funapp 360 36))
                                       (display "\n")
                                       (f7343 x7459 x7458)))))
                                  (begin
                                    (write '(funapp 361 33))
                                    (display "\n")
                                    (pair?/c j7341 k7342 x7457)))))
                               g7456))))
                          g7455))
                       xj7337
                       xk7338
                       (lambda (a b)
                         (letrec*
                          ((g7454
                            (begin
                              (write '(funapp 367 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7454))))))
                  g7453)))
               (vector-ref
                (letrec*
                 ((xj7344
                   (begin (write '(funapp 371 26)) (display "\n") 'server))
                  (xk7345
                   (begin (write '(funapp 371 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7460
                    (begin
                      (write '(funapp 374 21))
                      (display "\n")
                      ((lambda (j7347 k7348 f7349)
                         (letrec*
                          ((g7462
                            (lambda (g7346)
                              (letrec*
                               ((g7463
                                 (letrec*
                                  ((x7464
                                    (letrec*
                                     ((x7465
                                       (begin
                                         (write '(funapp 383 44))
                                         (display "\n")
                                         (vector?/c j7347 k7348 g7346))))
                                     (begin
                                       (write '(funapp 384 36))
                                       (display "\n")
                                       (f7349 x7465)))))
                                  (begin
                                    (write '(funapp 385 33))
                                    (display "\n")
                                    (integer?/c j7347 k7348 x7464)))))
                               g7463))))
                          g7462))
                       xj7344
                       xk7345
                       (lambda (v i)
                         (letrec*
                          ((g7461
                            (begin
                              (write '(funapp 391 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7461))))))
                  g7460)))
               (vector-set!
                (letrec*
                 ((xj7350
                   (begin (write '(funapp 395 26)) (display "\n") 'server))
                  (xk7351
                   (begin (write '(funapp 395 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7466
                    (begin
                      (write '(funapp 398 21))
                      (display "\n")
                      ((lambda (j7354 k7355 f7356)
                         (letrec*
                          ((g7468
                            (lambda (g7352 g7353)
                              (letrec*
                               ((g7469
                                 (letrec*
                                  ((x7470
                                    (letrec*
                                     ((x7472
                                       (begin
                                         (write '(funapp 407 44))
                                         (display "\n")
                                         (vector?/c j7354 k7355 g7352)))
                                      (x7471
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (integer?/c j7354 k7355 g7353))))
                                     (begin
                                       (write '(funapp 409 36))
                                       (display "\n")
                                       (f7356 x7472 x7471)))))
                                  (begin
                                    (write '(funapp 410 33))
                                    (display "\n")
                                    (any/c j7354 k7355 x7470)))))
                               g7469))))
                          g7468))
                       xj7350
                       xk7351
                       (lambda (vec i v)
                         (letrec*
                          ((g7467
                            (begin
                              (write '(funapp 416 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7467))))))
                  g7466)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7473
                     (if cnd
                       (begin (write '(funapp 421 35)) (display "\n") '())
                       (begin
                         (write '(funapp 421 40))
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
                             (write '(funapp 428 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 428 58))
                           (display "\n")
                           (cdr x7476)))))
                      (begin
                        (write '(funapp 429 23))
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
                          (write '(funapp 435 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 435 62))
                        (display "\n")
                        (assert x7480))))
                    (g7478
                     (letrec*
                      ((x7481
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 436 57))
                        (display "\n")
                        (assert x7481))))
                    (g7479
                     (letrec*
                      ((x-cnd7482
                        (begin
                          (write '(funapp 439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7482
                        (begin (write '(funapp 441 24)) (display "\n") '())
                        (letrec*
                         ((x7485
                           (letrec*
                            ((x7486
                              (begin
                                (write '(funapp 443 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 443 61))
                              (display "\n")
                              (f x7486))))
                          (x7483
                           (letrec*
                            ((x7484
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (map f x7484)))))
                         (begin
                           (write '(funapp 445 26))
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
                          (write '(funapp 450 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 450 55))
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
                                (write '(funapp 459 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 459 61))
                              (display "\n")
                              (car x7492)))))
                         (begin
                           (write '(funapp 460 26))
                           (display "\n")
                           (cdr x7491)))))
                      (begin
                        (write '(funapp 461 23))
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
                                (write '(funapp 470 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 470 61))
                              (display "\n")
                              (cdr x7496)))))
                         (begin
                           (write '(funapp 471 26))
                           (display "\n")
                           (car x7495)))))
                      (begin
                        (write '(funapp 472 23))
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
                          (write '(funapp 478 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 478 60))
                        (display "\n")
                        (assert x7500))))
                    (g7498
                     (letrec*
                      ((x7501
                        (begin
                          (write '(funapp 480 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 480 59))
                        (display "\n")
                        (assert x7501))))
                    (g7499
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
                       ((g7502
                         (begin
                           (write '(funapp 486 32))
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
                             (write '(funapp 494 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 494 58))
                           (display "\n")
                           (cdr x7506)))))
                      (begin
                        (write '(funapp 495 23))
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
                                (write '(funapp 504 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 504 61))
                              (display "\n")
                              (car x7510)))))
                         (begin
                           (write '(funapp 505 26))
                           (display "\n")
                           (car x7509)))))
                      (begin
                        (write '(funapp 506 23))
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
                          (write '(funapp 511 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 511 57))
                        (display "\n")
                        (assert x7513))))
                    (g7512
                     (letrec*
                      ((x-cnd7514
                        (begin
                          (write '(funapp 514 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7514
                        #f
                        (letrec*
                         ((x-cnd7515
                           (letrec*
                            ((x7516
                              (begin
                                (write '(funapp 519 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 519 56))
                              (display "\n")
                              (eq? x7516 k)))))
                         (if x-cnd7515
                           (begin
                             (write '(funapp 521 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7517
                              (begin
                                (write '(funapp 522 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 522 55))
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
                          (write '(funapp 527 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 527 60))
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
                          (write '(funapp 532 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 532 57))
                        (display "\n")
                        (assert x7522))))
                    (g7521
                     (letrec*
                      ((x-cnd7523
                        (begin
                          (write '(funapp 535 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7523
                        ""
                        (letrec*
                         ((x7526
                           (letrec*
                            ((x7527
                              (begin
                                (write '(funapp 540 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 540 55))
                              (display "\n")
                              (char->string x7527))))
                          (x7524
                           (letrec*
                            ((x7525
                              (begin
                                (write '(funapp 542 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 542 55))
                              (display "\n")
                              (list->string x7525)))))
                         (begin
                           (write '(funapp 543 26))
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
                          (write '(funapp 548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 548 58))
                        (display "\n")
                        (assert x7531))))
                    (g7529
                     (letrec*
                      ((x7532
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7532))))
                    (g7530
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 552 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7533
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 554 52))
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
                                (write '(funapp 564 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 564 61))
                              (display "\n")
                              (cdr x7537)))))
                         (begin
                           (write '(funapp 565 26))
                           (display "\n")
                           (cdr x7536)))))
                      (begin
                        (write '(funapp 566 23))
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
                          (write '(funapp 571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 571 57))
                        (display "\n")
                        (assert x7541))))
                    (g7539
                     (letrec*
                      ((x7542
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7542))))
                    (g7540
                     (letrec*
                      ((x-cnd7543
                        (begin
                          (write '(funapp 575 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7543
                        x
                        (letrec*
                         ((x7545
                           (begin
                             (write '(funapp 579 34))
                             (display "\n")
                             (cdr x)))
                          (x7544
                           (begin
                             (write '(funapp 579 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 580 26))
                           (display "\n")
                           (list-tail x7545 x7544)))))))
                   g7540)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7546
                     (begin (write '(funapp 582 49)) (display "\n") '())))
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
                           (write '(funapp 589 48))
                           (display "\n")
                           (char-ci>=? c x7549)))))
                      (if x-cnd7548
                        (letrec*
                         ((x7550 #\z))
                         (begin
                           (write '(funapp 591 48))
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
                          (write '(funapp 597 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 597 59))
                        (display "\n")
                        (assert x7553))))
                    (g7552
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 600 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7554
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 606 39))
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
                             (write '(funapp 618 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 618 62))
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
                                   (write '(funapp 626 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 627 32))
                                 (display "\n")
                                 (= x7559 10)))))
                            (letrec*
                             ((g7560
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7561
                                    (begin
                                      (write '(funapp 633 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 634 35))
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
                             (write '(funapp 643 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 643 58))
                           (display "\n")
                           (cdr x7564)))))
                      (begin
                        (write '(funapp 644 23))
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
                          (write '(funapp 649 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 649 59))
                        (display "\n")
                        (assert x7567))))
                    (g7566
                     (begin (write '(funapp 650 28)) (display "\n") (> x 0))))
                   g7566)))
               ($pc (begin (write '(funapp 652 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7568 #f)) g7568)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7569
                     (letrec*
                      ((x7570
                        (begin
                          (write '(funapp 658 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 658 55))
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
                          (write '(funapp 663 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 663 59))
                        (display "\n")
                        (assert x7573))))
                    (g7572
                     (letrec*
                      ((x-cnd7574
                        (begin
                          (write '(funapp 666 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7574
                        (begin
                          (write '(funapp 667 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 667 49))
                          (display "\n")
                          (floor x))))))
                   g7572)))
               ($cmp (begin (write '(funapp 669 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7575
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 675 33))
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
                                   (write '(funapp 683 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7577
                                 (begin
                                   (write '(funapp 684 46))
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
                                         (write '(funapp 692 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7579
                                       (letrec*
                                        ((x-cnd7580
                                          (begin
                                            (write '(funapp 695 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7580
                                          (begin
                                            (write '(funapp 696 55))
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
                                               (write '(funapp 705 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7582
                                             (letrec*
                                              ((x-cnd7583
                                                (begin
                                                  (write '(funapp 708 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7583
                                                (letrec*
                                                 ((x-cnd7584
                                                   (letrec*
                                                    ((x7586
                                                      (begin
                                                        (write
                                                         '(funapp 713 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7585
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 715 53))
                                                      (display "\n")
                                                      (equal? x7586 x7585)))))
                                                 (if x-cnd7584
                                                   (letrec*
                                                    ((x7588
                                                      (begin
                                                        (write
                                                         '(funapp 718 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7587
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 720 53))
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
                                                  (write '(funapp 729 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7590
                                                (letrec*
                                                 ((x-cnd7591
                                                   (begin
                                                     (write '(funapp 732 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7591
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 735 57))
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
                                                                  742
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 744 60))
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
                                                                          753
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
                                                                                   762
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
                                                                               x7599
                                                                               x7598)))))
                                                                         (if x-cnd7597
                                                                           (letrec*
                                                                            ((x7600
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
                                                                               x7600)))
                                                                           #f)))))
                                                                    g7596))))
                                                                g7595))))
                                                           (letrec*
                                                            ((g7601
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   784
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
                                (write '(funapp 802 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 802 61))
                              (display "\n")
                              (car x7605)))))
                         (begin
                           (write '(funapp 803 26))
                           (display "\n")
                           (car x7604)))))
                      (begin
                        (write '(funapp 804 23))
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
                                (write '(funapp 813 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 813 61))
                              (display "\n")
                              (cdr x7609)))))
                         (begin
                           (write '(funapp 814 26))
                           (display "\n")
                           (car x7608)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (car x7607)))))
                   g7606)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7610
                     (begin
                       (write '(funapp 817 53))
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
                          (write '(funapp 821 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 821 59))
                        (display "\n")
                        (assert x7613))))
                    (g7612
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 824 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7614
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 830 39))
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
                          (write '(funapp 840 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 840 60))
                        (display "\n")
                        (assert x7619))))
                    (g7617
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 842 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 842 59))
                        (display "\n")
                        (assert x7620))))
                    (g7618
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
                       ((g7621
                         (begin
                           (write '(funapp 848 32))
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
                       (write '(funapp 851 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 851 57)) (display "\n") '())))))
                   g7623)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 855 58))
                        (display "\n")
                        (assert x7627))))
                    (g7625
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7628))))
                    (g7626
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 859 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7629
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 861 52))
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
                             (write '(funapp 869 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 869 58))
                           (display "\n")
                           (car x7632)))))
                      (begin
                        (write '(funapp 870 23))
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
                                (write '(funapp 879 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 879 61))
                              (display "\n")
                              (cdr x7636)))))
                         (begin
                           (write '(funapp 880 26))
                           (display "\n")
                           (car x7635)))))
                      (begin
                        (write '(funapp 881 23))
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
                             (write '(funapp 889 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 889 58))
                           (display "\n")
                           (cdr x7639)))))
                      (begin
                        (write '(funapp 890 23))
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
                             (write '(funapp 897 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 897 58))
                           (display "\n")
                           (car x7642)))))
                      (begin
                        (write '(funapp 898 23))
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
                          (write '(funapp 903 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 903 58))
                        (display "\n")
                        (assert x7646))))
                    (g7644
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7647))))
                    (g7645
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 905 66))
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
                                (write '(funapp 915 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 915 61))
                              (display "\n")
                              (car x7652)))))
                         (begin
                           (write '(funapp 916 26))
                           (display "\n")
                           (car x7651)))))
                      (begin
                        (write '(funapp 917 23))
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
                          (write '(funapp 922 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7655))))
                    (g7654
                     (begin (write '(funapp 923 28)) (display "\n") (< x 0))))
                   g7654)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7656
                     (begin
                       (write '(funapp 925 53))
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
                             (write '(funapp 931 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 931 58))
                           (display "\n")
                           (car x7659)))))
                      (begin
                        (write '(funapp 932 23))
                        (display "\n")
                        (car x7658)))))
                   g7657)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7660
                     (begin (write '(funapp 934 51)) (display "\n") '())))
                   g7660)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 938 57))
                        (display "\n")
                        (assert x7663))))
                    (g7662
                     (letrec*
                      ((x-cnd7664
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7664
                        (begin (write '(funapp 943 24)) (display "\n") '())
                        (letrec*
                         ((x7667
                           (letrec*
                            ((x7668
                              (begin
                                (write '(funapp 945 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 945 61))
                              (display "\n")
                              (reverse x7668))))
                          (x7665
                           (letrec*
                            ((x7666
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (list x7666)))))
                         (begin
                           (write '(funapp 947 26))
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
                                (write '(funapp 956 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 956 61))
                              (display "\n")
                              (car x7672)))))
                         (begin
                           (write '(funapp 957 26))
                           (display "\n")
                           (car x7671)))))
                      (begin
                        (write '(funapp 958 23))
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
                                (write '(funapp 967 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 967 61))
                              (display "\n")
                              (car x7676)))))
                         (begin
                           (write '(funapp 968 26))
                           (display "\n")
                           (cdr x7675)))))
                      (begin
                        (write '(funapp 969 23))
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
                          (write '(funapp 974 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 974 59))
                        (display "\n")
                        (assert x7679))))
                    (g7678
                     (letrec*
                      ((x7680
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 975 60))
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
                                (write '(funapp 984 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 984 61))
                              (display "\n")
                              (cdr x7684)))))
                         (begin
                           (write '(funapp 985 26))
                           (display "\n")
                           (car x7683)))))
                      (begin
                        (write '(funapp 986 23))
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
                          (write '(funapp 992 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 992 59))
                        (display "\n")
                        (assert x7688))))
                    (g7686
                     (letrec*
                      ((x7689
                        (begin
                          (write '(funapp 993 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 993 60))
                        (display "\n")
                        (assert x7689))))
                    (g7687
                     (letrec*
                      ((x-cnd7690
                        (begin
                          (write '(funapp 996 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7690
                        (letrec*
                         ((g7691
                           (begin
                             (write '(funapp 998 42))
                             (display "\n")
                             (proc))))
                         g7691)
                        (letrec*
                         ((x-cnd7692
                           (letrec*
                            ((x7693
                              (begin
                                (write '(funapp 1001 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1001 58))
                              (display "\n")
                              (null? x7693)))))
                         (if x-cnd7692
                           (letrec*
                            ((g7694
                              (letrec*
                               ((x7695
                                 (begin
                                   (write '(funapp 1005 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1005 61))
                                 (display "\n")
                                 (proc x7695)))))
                            g7694)
                           (letrec*
                            ((x-cnd7696
                              (letrec*
                               ((x7697
                                 (begin
                                   (write '(funapp 1009 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1009 62))
                                 (display "\n")
                                 (null? x7697)))))
                            (if x-cnd7696
                              (letrec*
                               ((g7698
                                 (letrec*
                                  ((x7700
                                    (begin
                                      (write '(funapp 1014 43))
                                      (display "\n")
                                      (car args)))
                                   (x7699
                                    (begin
                                      (write '(funapp 1014 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1015 35))
                                    (display "\n")
                                    (proc x7700 x7699)))))
                               g7698)
                              (letrec*
                               ((x-cnd7701
                                 (letrec*
                                  ((x7702
                                    (begin
                                      (write '(funapp 1020 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1021 35))
                                    (display "\n")
                                    (null? x7702)))))
                               (if x-cnd7701
                                 (letrec*
                                  ((g7703
                                    (letrec*
                                     ((x7706
                                       (begin
                                         (write '(funapp 1026 46))
                                         (display "\n")
                                         (car args)))
                                      (x7705
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7704
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1029 38))
                                       (display "\n")
                                       (proc x7706 x7705 x7704)))))
                                  g7703)
                                 (letrec*
                                  ((x-cnd7707
                                    (letrec*
                                     ((x7708
                                       (begin
                                         (write '(funapp 1034 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1035 38))
                                       (display "\n")
                                       (null? x7708)))))
                                  (if x-cnd7707
                                    (letrec*
                                     ((g7709
                                       (letrec*
                                        ((x7713
                                          (begin
                                            (write '(funapp 1040 49))
                                            (display "\n")
                                            (car args)))
                                         (x7712
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7711
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7710
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1044 41))
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
                                               (write '(funapp 1051 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1052 44))
                                             (display "\n")
                                             (cdr x7716)))))
                                        (begin
                                          (write '(funapp 1053 41))
                                          (display "\n")
                                          (null? x7715)))))
                                     (if x-cnd7714
                                       (letrec*
                                        ((g7717
                                          (letrec*
                                           ((x7723
                                             (begin
                                               (write '(funapp 1058 52))
                                               (display "\n")
                                               (car args)))
                                            (x7722
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7721
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7720
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7718
                                             (letrec*
                                              ((x7719
                                                (begin
                                                  (write '(funapp 1064 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (car x7719)))))
                                           (begin
                                             (write '(funapp 1066 44))
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
                                                  (write '(funapp 1078 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1079 47))
                                                (display "\n")
                                                (cddr x7726)))))
                                           (begin
                                             (write '(funapp 1080 44))
                                             (display "\n")
                                             (null? x7725)))))
                                        (if x-cnd7724
                                          (letrec*
                                           ((g7727
                                             (letrec*
                                              ((x7735
                                                (begin
                                                  (write '(funapp 1085 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7734
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7733
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7732
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7730
                                                (letrec*
                                                 ((x7731
                                                   (begin
                                                     (write '(funapp 1091 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1092 50))
                                                   (display "\n")
                                                   (car x7731))))
                                               (x7728
                                                (letrec*
                                                 ((x7729
                                                   (begin
                                                     (write '(funapp 1095 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1096 50))
                                                   (display "\n")
                                                   (cadr x7729)))))
                                              (begin
                                                (write '(funapp 1097 47))
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
                                                     (write '(funapp 1110 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1111 50))
                                                   (display "\n")
                                                   (cdddr x7738)))))
                                              (begin
                                                (write '(funapp 1112 47))
                                                (display "\n")
                                                (null? x7737)))))
                                           (if x-cnd7736
                                             (letrec*
                                              ((g7739
                                                (letrec*
                                                 ((x7749
                                                   (begin
                                                     (write '(funapp 1117 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7748
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7747
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7746
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7744
                                                   (letrec*
                                                    ((x7745
                                                      (begin
                                                        (write
                                                         '(funapp 1123 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1124 53))
                                                      (display "\n")
                                                      (car x7745))))
                                                  (x7742
                                                   (letrec*
                                                    ((x7743
                                                      (begin
                                                        (write
                                                         '(funapp 1127 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1128 53))
                                                      (display "\n")
                                                      (cadr x7743))))
                                                  (x7740
                                                   (letrec*
                                                    ((x7741
                                                      (begin
                                                        (write
                                                         '(funapp 1131 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1132 53))
                                                      (display "\n")
                                                      (caddr x7741)))))
                                                 (begin
                                                   (write '(funapp 1133 50))
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
                                                  (write '(funapp 1144 49))
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
                          (write '(funapp 1150 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1150 57))
                        (display "\n")
                        (assert x7753))))
                    (g7752
                     (letrec*
                      ((x-cnd7754
                        (begin
                          (write '(funapp 1153 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7754
                        #f
                        (letrec*
                         ((x-cnd7755
                           (letrec*
                            ((x7756
                              (begin
                                (write '(funapp 1158 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1158 55))
                              (display "\n")
                              (equal? x7756 e)))))
                         (if x-cnd7755
                           l
                           (letrec*
                            ((x7757
                              (begin
                                (write '(funapp 1161 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1161 55))
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7761)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (cdr x7760)))))
                      (begin
                        (write '(funapp 1172 23))
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
                                (write '(funapp 1181 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1181 61))
                              (display "\n")
                              (cdr x7765)))))
                         (begin
                           (write '(funapp 1182 26))
                           (display "\n")
                           (cdr x7764)))))
                      (begin
                        (write '(funapp 1183 23))
                        (display "\n")
                        (car x7763)))))
                   g7762)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7766
                     (begin
                       (write '(funapp 1185 53))
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
                          (write '(funapp 1189 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1189 59))
                        (display "\n")
                        (assert x7769))))
                    (g7768
                     (begin (write '(funapp 1190 28)) (display "\n") (= x 0))))
                   g7768)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1197 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7771
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1199 52))
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
                          (write '(funapp 1205 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1205 55))
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
                             (write '(funapp 1215 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1217 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1217 55))
                              (display "\n")
                              (list? x7776)))
                           #f))))
                      (letrec*
                       ((g7777
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1220 52))
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
                                (write '(funapp 1230 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1230 61))
                              (display "\n")
                              (car x7781)))))
                         (begin
                           (write '(funapp 1231 26))
                           (display "\n")
                           (cdr x7780)))))
                      (begin
                        (write '(funapp 1232 23))
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
                           (write '(funapp 1239 58))
                           (display "\n")
                           (char<=? x7784 c)))))
                      (if x-cnd7783
                        (letrec*
                         ((x7785 #\9))
                         (begin
                           (write '(funapp 1241 48))
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
                          (write '(funapp 1248 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1248 57))
                        (display "\n")
                        (assert x7788))))
                    (g7787
                     (letrec*
                      ((x-cnd7789
                        (begin
                          (write '(funapp 1251 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7789
                        #f
                        (letrec*
                         ((x-cnd7790
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 1256 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1256 56))
                              (display "\n")
                              (eqv? x7791 k)))))
                         (if x-cnd7790
                           (begin
                             (write '(funapp 1258 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7792
                              (begin
                                (write '(funapp 1259 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1259 55))
                              (display "\n")
                              (assq k x7792)))))))))
                   g7787)))
               (not (lambda (x) (letrec* ((g7793 (if x #f #t))) g7793)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7794
                     (begin
                       (write '(funapp 1263 50))
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
                          (write '(funapp 1267 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1267 57))
                        (display "\n")
                        (assert x7797))))
                    (g7796
                     (letrec*
                      ((x-cnd7798
                        (begin
                          (write '(funapp 1270 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7798
                        #f
                        (letrec*
                         ((x-cnd7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 1275 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1275 55))
                              (display "\n")
                              (eq? x7800 e)))))
                         (if x-cnd7799
                           l
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1278 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1278 55))
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
                                (write '(funapp 1287 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1287 61))
                              (display "\n")
                              (car x7805)))))
                         (begin
                           (write '(funapp 1288 26))
                           (display "\n")
                           (cdr x7804)))))
                      (begin
                        (write '(funapp 1289 23))
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
                          (write '(funapp 1294 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1294 57))
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
                                  (write '(funapp 1302 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7810
                                0
                                (letrec*
                                 ((x7811
                                   (letrec*
                                    ((x7812
                                      (begin
                                        (write '(funapp 1307 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1307 63))
                                      (display "\n")
                                      (rec x7812)))))
                                 (begin
                                   (write '(funapp 1308 34))
                                   (display "\n")
                                   (+ 1 x7811)))))))
                           g7809))))
                      (letrec*
                       ((g7813
                         (begin
                           (write '(funapp 1310 40))
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
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7817))))
                    (g7815
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7818))))
                    (g7816
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1319 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7819
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1321 52))
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
                          (write '(funapp 1327 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1327 65))
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
                             (write '(funapp 1334 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1334 58))
                           (display "\n")
                           (car x7824)))))
                      (begin
                        (write '(funapp 1335 23))
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
                          (write '(funapp 1340 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1340 57))
                        (display "\n")
                        (assert x7827))))
                    (g7826
                     (letrec*
                      ((x-cnd7828
                        (begin
                          (write '(funapp 1343 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7828
                        #f
                        (letrec*
                         ((x-cnd7829
                           (letrec*
                            ((x7830
                              (begin
                                (write '(funapp 1348 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1348 56))
                              (display "\n")
                              (equal? x7830 k)))))
                         (if x-cnd7829
                           (begin
                             (write '(funapp 1350 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7831
                              (begin
                                (write '(funapp 1351 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1351 55))
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
                          (write '(funapp 1356 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1356 55))
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
                          (write '(funapp 1361 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1361 58))
                        (display "\n")
                        (assert x7837))))
                    (g7835
                     (letrec*
                      ((x7838
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7838))))
                    (g7836
                     (letrec*
                      ((x7839
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1363 63))
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
                          (write '(funapp 1370 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7841
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1372 52))
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
                          (write '(funapp 1378 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1378 62))
                        (display "\n")
                        (assert x7845))))
                    (g7843
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1379 57))
                        (display "\n")
                        (assert x7846))))
                    (g7844
                     (letrec*
                      ((x-cnd7847
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7847
                        #t
                        (letrec*
                         ((x-cnd7848
                           (begin
                             (write '(funapp 1386 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7848
                           (letrec*
                            ((g7849
                              (letrec*
                               ((x7851
                                 (begin
                                   (write '(funapp 1389 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1389 64))
                                 (display "\n")
                                 (f x7851))))
                             (g7850
                              (letrec*
                               ((x7852
                                 (begin
                                   (write '(funapp 1391 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1391 58))
                                 (display "\n")
                                 (for-each f x7852)))))
                            g7850)
                           (begin
                             (write '(funapp 1393 27))
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
                          (write '(funapp 1398 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1398 59))
                        (display "\n")
                        (assert x7855))))
                    (g7854
                     (letrec*
                      ((x-cnd7856
                        (begin
                          (write '(funapp 1400 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7856
                        (begin
                          (write '(funapp 1400 67))
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
                          (write '(funapp 1405 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1405 58))
                        (display "\n")
                        (assert x7860))))
                    (g7858
                     (letrec*
                      ((x7861
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7861))))
                    (g7859
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1409 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7862
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1411 52))
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
                                (write '(funapp 1421 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1421 61))
                              (display "\n")
                              (cdr x7866)))))
                         (begin
                           (write '(funapp 1422 26))
                           (display "\n")
                           (cdr x7865)))))
                      (begin
                        (write '(funapp 1423 23))
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
                             (write '(funapp 1431 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1431 58))
                           (display "\n")
                           (abs x7871))))
                       (x7869
                        (begin
                          (write '(funapp 1432 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1433 23))
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
                          (write '(funapp 1439 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1439 59))
                        (display "\n")
                        (assert x7874))))
                    (g7873
                     (letrec*
                      ((x7875
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1440 56))
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
                          (write '(funapp 1445 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1445 57))
                        (display "\n")
                        (assert x7880))))
                    (g7877
                     (letrec*
                      ((x7881
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1446 63))
                        (display "\n")
                        (assert x7881))))
                    (g7878
                     (letrec*
                      ((x7882
                        (letrec*
                         ((x7883
                           (begin
                             (write '(funapp 1449 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1449 61))
                           (display "\n")
                           (< index x7883)))))
                      (begin
                        (write '(funapp 1450 23))
                        (display "\n")
                        (assert x7882))))
                    (g7879
                     (letrec*
                      ((x-cnd7884
                        (begin
                          (write '(funapp 1453 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7884
                        (begin
                          (write '(funapp 1455 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7886
                           (begin
                             (write '(funapp 1457 34))
                             (display "\n")
                             (cdr l)))
                          (x7885
                           (begin
                             (write '(funapp 1457 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1458 26))
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
                          (write '(funapp 1465 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7888
                        a
                        (letrec*
                         ((x7889
                           (begin
                             (write '(funapp 1468 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1468 57))
                           (display "\n")
                           (gcd b x7889)))))))
                   g7887)))
               (phi
                (letrec*
                 ((x7915 (begin (write '(funapp 1472 26)) (display "\n") (x1)))
                  (x7890
                   (letrec*
                    ((x7914
                      (begin (write '(funapp 1475 29)) (display "\n") (x2)))
                     (x7891
                      (letrec*
                       ((x7913
                         (begin (write '(funapp 1478 32)) (display "\n") (x3)))
                        (x7892
                         (letrec*
                          ((x7912
                            (begin
                              (write '(funapp 1481 35))
                              (display "\n")
                              (x4)))
                           (x7893
                            (letrec*
                             ((x7911
                               (begin
                                 (write '(funapp 1484 38))
                                 (display "\n")
                                 (x5)))
                              (x7894
                               (letrec*
                                ((x7910
                                  (begin
                                    (write '(funapp 1487 41))
                                    (display "\n")
                                    (x6)))
                                 (x7895
                                  (letrec*
                                   ((x7909
                                     (begin
                                       (write '(funapp 1490 44))
                                       (display "\n")
                                       (x7)))
                                    (x7896
                                     (letrec*
                                      ((x-cnd7897
                                        (letrec*
                                         ((val7259 x1))
                                         (letrec*
                                          ((g7898 (if val7259 val7259 x2)))
                                          g7898))))
                                      (if x-cnd7897
                                        (letrec*
                                         ((x-cnd7899
                                           (letrec*
                                            ((val7260 x1))
                                            (letrec*
                                             ((g7900
                                               (if val7260
                                                 val7260
                                                 (letrec*
                                                  ((val7261
                                                    (begin
                                                      (write '(funapp 1509 61))
                                                      (display "\n")
                                                      (not x2))))
                                                  (letrec*
                                                   ((g7901
                                                     (if val7261
                                                       val7261
                                                       (begin
                                                         (write
                                                          '(funapp 1514 56))
                                                         (display "\n")
                                                         (not x3)))))
                                                   g7901)))))
                                             g7900))))
                                         (if x-cnd7899
                                           (letrec*
                                            ((x-cnd7902
                                              (letrec*
                                               ((val7262 x3))
                                               (letrec*
                                                ((g7903
                                                  (if val7262 val7262 x4)))
                                                g7903))))
                                            (if x-cnd7902
                                              (letrec*
                                               ((x-cnd7904
                                                 (letrec*
                                                  ((val7263
                                                    (begin
                                                      (write '(funapp 1530 61))
                                                      (display "\n")
                                                      (not x4))))
                                                  (letrec*
                                                   ((g7905
                                                     (if val7263 val7263 x1)))
                                                   g7905))))
                                               (if x-cnd7904
                                                 (letrec*
                                                  ((x-cnd7906
                                                    (letrec*
                                                     ((val7264
                                                       (begin
                                                         (write
                                                          '(funapp 1539 64))
                                                         (display "\n")
                                                         (not x2))))
                                                     (letrec*
                                                      ((g7907
                                                        (if val7264
                                                          val7264
                                                          (begin
                                                            (write
                                                             '(funapp 1544 59))
                                                            (display "\n")
                                                            (not x3)))))
                                                      g7907))))
                                                  (if x-cnd7906
                                                    (letrec*
                                                     ((val7265 x4))
                                                     (letrec*
                                                      ((g7908
                                                        (if val7265
                                                          val7265
                                                          x2)))
                                                      g7908))
                                                    #f))
                                                 #f))
                                              #f))
                                           #f))
                                        #f))))
                                   (begin
                                     (write '(funapp 1560 36))
                                     (display "\n")
                                     (λ x7909 x7896)))))
                                (begin
                                  (write '(funapp 1561 33))
                                  (display "\n")
                                  (λ x7910 x7895)))))
                             (begin
                               (write '(funapp 1562 30))
                               (display "\n")
                               (λ x7911 x7894)))))
                          (begin
                            (write '(funapp 1563 27))
                            (display "\n")
                            (λ x7912 x7893)))))
                       (begin
                         (write '(funapp 1564 24))
                         (display "\n")
                         (λ x7913 x7892)))))
                    (begin
                      (write '(funapp 1565 21))
                      (display "\n")
                      (λ x7914 x7891)))))
                 (begin
                   (write '(funapp 1566 18))
                   (display "\n")
                   (λ x7915 x7890))))
               (try
                (letrec*
                 ((x7918 (begin (write '(funapp 1569 26)) (display "\n") (f)))
                  (x7916
                   (letrec*
                    ((val7266
                      (begin (write '(funapp 1572 31)) (display "\n") (f #t))))
                    (letrec*
                     ((g7917
                       (if val7266
                         val7266
                         (begin
                           (write '(funapp 1573 58))
                           (display "\n")
                           (f #f)))))
                     g7917))))
                 (begin
                   (write '(funapp 1574 18))
                   (display "\n")
                   (λ x7918 x7916))))
               (sat-solve-7
                (letrec*
                 ((x7947 (begin (write '(funapp 1577 26)) (display "\n") (p)))
                  (x7919
                   (letrec*
                    ((x7920
                      (letrec*
                       ((x7946
                         (begin (write '(funapp 1582 32)) (display "\n") (n1)))
                        (x7921
                         (letrec*
                          ((x7922
                            (letrec*
                             ((x7945
                               (begin
                                 (write '(funapp 1587 38))
                                 (display "\n")
                                 (n2)))
                              (x7923
                               (letrec*
                                ((x7924
                                  (letrec*
                                   ((x7944
                                     (begin
                                       (write '(funapp 1592 44))
                                       (display "\n")
                                       (n3)))
                                    (x7925
                                     (letrec*
                                      ((x7926
                                        (letrec*
                                         ((x7943
                                           (begin
                                             (write '(funapp 1597 50))
                                             (display "\n")
                                             (n4)))
                                          (x7927
                                           (letrec*
                                            ((x7928
                                              (letrec*
                                               ((x7942
                                                 (begin
                                                   (write '(funapp 1602 56))
                                                   (display "\n")
                                                   (n5)))
                                                (x7929
                                                 (letrec*
                                                  ((x7930
                                                    (letrec*
                                                     ((x7941
                                                       (begin
                                                         (write
                                                          '(funapp 1607 62))
                                                         (display "\n")
                                                         (n6)))
                                                      (x7931
                                                       (letrec*
                                                        ((x7932
                                                          (letrec*
                                                           ((x7940
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1612
                                                                  68))
                                                               (display "\n")
                                                               (n7)))
                                                            (x7933
                                                             (letrec*
                                                              ((x7934
                                                                (letrec*
                                                                 ((x7935
                                                                   (letrec*
                                                                    ((x7936
                                                                      (letrec*
                                                                       ((x7937
                                                                         (letrec*
                                                                          ((x7938
                                                                            (letrec*
                                                                             ((x7939
                                                                               (begin
                                                                                 (write
                                                                                  '(funapp
                                                                                    1626
                                                                                    80))
                                                                                 (display
                                                                                  "\n")
                                                                                 (p
                                                                                  n1))))
                                                                             (begin
                                                                               (write
                                                                                '(funapp
                                                                                  1628
                                                                                  78))
                                                                               (display
                                                                                "\n")
                                                                               (x7939
                                                                                n2)))))
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               1630
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (x7938
                                                                             n3)))))
                                                                       (begin
                                                                         (write
                                                                          '(funapp
                                                                            1632
                                                                            72))
                                                                         (display
                                                                          "\n")
                                                                         (x7937
                                                                          n4)))))
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1634
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (x7936
                                                                       n5)))))
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1636
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (x7935
                                                                    n6)))))
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1637
                                                                   63))
                                                                (display "\n")
                                                                (x7934 n7)))))
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                1638
                                                                60))
                                                             (display "\n")
                                                             (λ x7940
                                                               x7933)))))
                                                        (begin
                                                          (write
                                                           '(funapp 1639 57))
                                                          (display "\n")
                                                          (try x7932)))))
                                                     (begin
                                                       (write
                                                        '(funapp 1640 54))
                                                       (display "\n")
                                                       (λ x7941 x7931)))))
                                                  (begin
                                                    (write '(funapp 1641 51))
                                                    (display "\n")
                                                    (try x7930)))))
                                               (begin
                                                 (write '(funapp 1642 48))
                                                 (display "\n")
                                                 (λ x7942 x7929)))))
                                            (begin
                                              (write '(funapp 1643 45))
                                              (display "\n")
                                              (try x7928)))))
                                         (begin
                                           (write '(funapp 1644 42))
                                           (display "\n")
                                           (λ x7943 x7927)))))
                                      (begin
                                        (write '(funapp 1645 39))
                                        (display "\n")
                                        (try x7926)))))
                                   (begin
                                     (write '(funapp 1646 36))
                                     (display "\n")
                                     (λ x7944 x7925)))))
                                (begin
                                  (write '(funapp 1647 33))
                                  (display "\n")
                                  (try x7924)))))
                             (begin
                               (write '(funapp 1648 30))
                               (display "\n")
                               (λ x7945 x7923)))))
                          (begin
                            (write '(funapp 1649 27))
                            (display "\n")
                            (try x7922)))))
                       (begin
                         (write '(funapp 1650 24))
                         (display "\n")
                         (λ x7946 x7921)))))
                    (begin
                      (write '(funapp 1651 21))
                      (display "\n")
                      (try x7920)))))
                 (begin
                   (write '(funapp 1652 18))
                   (display "\n")
                   (λ x7947 x7919)))))
              (letrec*
               ((g7948
                 (begin
                   (write '(funapp 1653 32))
                   (display "\n")
                   (sat-solve-7 phi))))
               g7948))))
           g7370))))
       g7368)))
    g7367)))
