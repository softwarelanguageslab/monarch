(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7364 #t)) g7364)))
    (meta (lambda (v) (letrec* ((g7365 v)) g7365)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7366
          (letrec*
           ((g7367
             (letrec*
              ((x-e7368 lst))
              (letrec*
               ((v1742 x-e7368))
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
                   ((x-cnd7369
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7369
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
           g7367)))
        g7366)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7370 (lambda (v) (letrec* ((g7371 v)) g7371)))) g7370)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7372
          (letrec*
           ((x7373 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7373)))))
        g7372))))
   (letrec*
    ((g7374
      (letrec*
       ((g7375
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
           ((g7376 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7377
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7378
                     (lambda (k j lst)
                       (letrec*
                        ((g7379
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7380
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7380))
                             lst))))
                        g7379))))
                   g7378)))
               (real?/c
                (lambda (g7260 g7261 g7262)
                  (letrec*
                   ((g7381
                     (letrec*
                      ((x-cnd7382
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7262))))
                      (if x-cnd7382
                        g7262
                        (begin
                          (write '(blame g7260 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7260)))))))
                   g7381)))
               (boolean?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7383
                     (letrec*
                      ((x-cnd7384
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7265))))
                      (if x-cnd7384
                        g7265
                        (begin
                          (write '(blame g7263 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7383)))
               (number?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7385
                     (letrec*
                      ((x-cnd7386
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7268))))
                      (if x-cnd7386
                        g7268
                        (begin
                          (write '(blame g7266 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7385)))
               (any/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7387
                     (letrec*
                      ((x-cnd7388
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7389 #t)) g7389)) g7271))))
                      (if x-cnd7388
                        g7271
                        (begin
                          (write '(blame g7269 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7387)))
               (any?/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7390
                     (letrec*
                      ((x-cnd7391
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7392 #t)) g7392)) g7274))))
                      (if x-cnd7391
                        g7274
                        (begin
                          (write '(blame g7272 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7390)))
               (cons?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7393
                     (letrec*
                      ((x-cnd7394
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7277))))
                      (if x-cnd7394
                        g7277
                        (begin
                          (write '(blame g7275 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7393)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7395
                     (letrec*
                      ((x-cnd7396
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7396
                        g7280
                        (begin
                          (write '(blame g7278 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7395)))
               (integer?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7397
                     (letrec*
                      ((x-cnd7398
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (integer? g7283))))
                      (if x-cnd7398
                        g7283
                        (begin
                          (write '(blame g7281 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7397)))
               (symbol?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7399
                     (letrec*
                      ((x-cnd7400
                        (begin
                          (write '(funapp 142 35))
                          (display "\n")
                          (symbol? g7286))))
                      (if x-cnd7400
                        g7286
                        (begin
                          (write '(blame g7284 143 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7399)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7401
                     (lambda (k j v)
                       (letrec*
                        ((g7402
                          (letrec*
                           ((x-cnd7403
                             (begin
                               (write '(funapp 153 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7403
                             (begin
                               (write '(funapp 154 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7402))))
                   g7401)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7404
                     (lambda (k j v)
                       (letrec*
                        ((g7405
                          (letrec*
                           ((x-cnd7406
                             (begin
                               (write '(funapp 165 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7406
                             (begin
                               (write '(funapp 167 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7410
                                (letrec*
                                 ((x7411
                                   (begin
                                     (write '(funapp 171 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 172 34))
                                   (display "\n")
                                   (contract k j x7411))))
                               (x7407
                                (letrec*
                                 ((x7409
                                   (begin
                                     (write '(funapp 175 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7408
                                   (begin
                                     (write '(funapp 175 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 176 34))
                                   (display "\n")
                                   (x7409 k j x7408)))))
                              (begin
                                (write '(funapp 177 31))
                                (display "\n")
                                (orig-cons x7410 x7407)))))))
                        g7405))))
                   g7404)))
               (any? (lambda (v) (letrec* ((g7412 #t)) g7412)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7413
                     (letrec*
                      ((x7414
                        (begin
                          (write '(funapp 184 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 184 55))
                        (display "\n")
                        (not x7414)))))
                   g7413)))
               (nonzero?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7415
                     (letrec*
                      ((x-cnd7416
                        (begin
                          (write '(funapp 192 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7417
                                (letrec*
                                 ((x7418
                                   (begin
                                     (write '(funapp 194 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 194 64))
                                   (display "\n")
                                   (not x7418)))))
                              g7417))
                           g7289))))
                      (if x-cnd7416
                        g7289
                        (begin
                          (write '(blame g7287 199 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7415)))
               (meta (lambda (v) (letrec* ((g7419 v)) g7419)))
               (+
                (letrec*
                 ((xj7290
                   (begin (write '(funapp 204 26)) (display "\n") 'server))
                  (xk7291
                   (begin (write '(funapp 204 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7420
                    (begin
                      (write '(funapp 207 21))
                      (display "\n")
                      ((lambda (j7294 k7295 f7296)
                         (letrec*
                          ((g7422
                            (lambda (g7292 g7293)
                              (letrec*
                               ((g7423
                                 (letrec*
                                  ((x7424
                                    (letrec*
                                     ((x7426
                                       (begin
                                         (write '(funapp 216 44))
                                         (display "\n")
                                         (number?/c j7294 k7295 g7292)))
                                      (x7425
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7294 k7295 g7293))))
                                     (begin
                                       (write '(funapp 218 36))
                                       (display "\n")
                                       (f7296 x7426 x7425)))))
                                  (begin
                                    (write '(funapp 219 33))
                                    (display "\n")
                                    (number?/c j7294 k7295 x7424)))))
                               g7423))))
                          g7422))
                       xj7290
                       xk7291
                       (lambda (a b)
                         (letrec*
                          ((g7421
                            (begin
                              (write '(funapp 224 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7421))))))
                  g7420)))
               (-
                (letrec*
                 ((xj7297
                   (begin (write '(funapp 228 26)) (display "\n") 'server))
                  (xk7298
                   (begin (write '(funapp 228 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7427
                    (begin
                      (write '(funapp 231 21))
                      (display "\n")
                      ((lambda (j7301 k7302 f7303)
                         (letrec*
                          ((g7429
                            (lambda (g7299 g7300)
                              (letrec*
                               ((g7430
                                 (letrec*
                                  ((x7431
                                    (letrec*
                                     ((x7433
                                       (begin
                                         (write '(funapp 240 44))
                                         (display "\n")
                                         (number?/c j7301 k7302 g7299)))
                                      (x7432
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7301 k7302 g7300))))
                                     (begin
                                       (write '(funapp 242 36))
                                       (display "\n")
                                       (f7303 x7433 x7432)))))
                                  (begin
                                    (write '(funapp 243 33))
                                    (display "\n")
                                    (number?/c j7301 k7302 x7431)))))
                               g7430))))
                          g7429))
                       xj7297
                       xk7298
                       (lambda (a b)
                         (letrec*
                          ((g7428
                            (begin
                              (write '(funapp 248 53))
                              (display "\n")
                              (orig-- a b))))
                          g7428))))))
                  g7427)))
               (*
                (letrec*
                 ((xj7304
                   (begin (write '(funapp 252 26)) (display "\n") 'server))
                  (xk7305
                   (begin (write '(funapp 252 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7434
                    (begin
                      (write '(funapp 255 21))
                      (display "\n")
                      ((lambda (j7308 k7309 f7310)
                         (letrec*
                          ((g7436
                            (lambda (g7306 g7307)
                              (letrec*
                               ((g7437
                                 (letrec*
                                  ((x7438
                                    (letrec*
                                     ((x7440
                                       (begin
                                         (write '(funapp 264 44))
                                         (display "\n")
                                         (number?/c j7308 k7309 g7306)))
                                      (x7439
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7308 k7309 g7307))))
                                     (begin
                                       (write '(funapp 266 36))
                                       (display "\n")
                                       (f7310 x7440 x7439)))))
                                  (begin
                                    (write '(funapp 267 33))
                                    (display "\n")
                                    (number?/c j7308 k7309 x7438)))))
                               g7437))))
                          g7436))
                       xj7304
                       xk7305
                       (lambda (a b)
                         (letrec*
                          ((g7435
                            (begin
                              (write '(funapp 272 53))
                              (display "\n")
                              (orig-* a b))))
                          g7435))))))
                  g7434)))
               (/
                (letrec*
                 ((xj7311
                   (begin (write '(funapp 276 26)) (display "\n") 'server))
                  (xk7312
                   (begin (write '(funapp 276 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7441
                    (begin
                      (write '(funapp 279 21))
                      (display "\n")
                      ((lambda (j7315 k7316 f7317)
                         (letrec*
                          ((g7443
                            (lambda (g7313 g7314)
                              (letrec*
                               ((g7444
                                 (letrec*
                                  ((x7445
                                    (letrec*
                                     ((x7447
                                       (begin
                                         (write '(funapp 288 44))
                                         (display "\n")
                                         (number?/c j7315 k7316 g7313)))
                                      (x7446
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7315 k7316 g7314))))
                                     (begin
                                       (write '(funapp 290 36))
                                       (display "\n")
                                       (f7317 x7447 x7446)))))
                                  (begin
                                    (write '(funapp 291 33))
                                    (display "\n")
                                    (number?/c j7315 k7316 x7445)))))
                               g7444))))
                          g7443))
                       xj7311
                       xk7312
                       (lambda (a b)
                         (letrec*
                          ((g7442
                            (begin
                              (write '(funapp 296 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7442))))))
                  g7441)))
               (car
                (letrec*
                 ((xj7318
                   (begin (write '(funapp 300 26)) (display "\n") 'server))
                  (xk7319
                   (begin (write '(funapp 300 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7448
                    (begin
                      (write '(funapp 303 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7450
                            (lambda (g7320)
                              (letrec*
                               ((g7451
                                 (letrec*
                                  ((x7452
                                    (letrec*
                                     ((x7453
                                       (begin
                                         (write '(funapp 312 44))
                                         (display "\n")
                                         (pair?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 313 36))
                                       (display "\n")
                                       (f7323 x7453)))))
                                  (begin
                                    (write '(funapp 314 33))
                                    (display "\n")
                                    (any/c j7321 k7322 x7452)))))
                               g7451))))
                          g7450))
                       xj7318
                       xk7319
                       (lambda (p)
                         (letrec*
                          ((g7449
                            (begin
                              (write '(funapp 319 51))
                              (display "\n")
                              (orig-car p))))
                          g7449))))))
                  g7448)))
               (cdr
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 323 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 323 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7454
                    (begin
                      (write '(funapp 326 21))
                      (display "\n")
                      ((lambda (j7327 k7328 f7329)
                         (letrec*
                          ((g7456
                            (lambda (g7326)
                              (letrec*
                               ((g7457
                                 (letrec*
                                  ((x7458
                                    (letrec*
                                     ((x7459
                                       (begin
                                         (write '(funapp 335 44))
                                         (display "\n")
                                         (pair?/c j7327 k7328 g7326))))
                                     (begin
                                       (write '(funapp 336 36))
                                       (display "\n")
                                       (f7329 x7459)))))
                                  (begin
                                    (write '(funapp 337 33))
                                    (display "\n")
                                    (any/c j7327 k7328 x7458)))))
                               g7457))))
                          g7456))
                       xj7324
                       xk7325
                       (lambda (p)
                         (letrec*
                          ((g7455
                            (begin
                              (write '(funapp 342 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7455))))))
                  g7454)))
               (cons
                (letrec*
                 ((xj7330
                   (begin (write '(funapp 346 26)) (display "\n") 'server))
                  (xk7331
                   (begin (write '(funapp 346 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7460
                    (begin
                      (write '(funapp 349 21))
                      (display "\n")
                      ((lambda (j7334 k7335 f7336)
                         (letrec*
                          ((g7462
                            (lambda (g7332 g7333)
                              (letrec*
                               ((g7463
                                 (letrec*
                                  ((x7464
                                    (letrec*
                                     ((x7466
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (any/c j7334 k7335 g7332)))
                                      (x7465
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7334 k7335 g7333))))
                                     (begin
                                       (write '(funapp 360 36))
                                       (display "\n")
                                       (f7336 x7466 x7465)))))
                                  (begin
                                    (write '(funapp 361 33))
                                    (display "\n")
                                    (pair?/c j7334 k7335 x7464)))))
                               g7463))))
                          g7462))
                       xj7330
                       xk7331
                       (lambda (a b)
                         (letrec*
                          ((g7461
                            (begin
                              (write '(funapp 367 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7461))))))
                  g7460)))
               (vector-ref
                (letrec*
                 ((xj7337
                   (begin (write '(funapp 371 26)) (display "\n") 'server))
                  (xk7338
                   (begin (write '(funapp 371 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7467
                    (begin
                      (write '(funapp 374 21))
                      (display "\n")
                      ((lambda (j7340 k7341 f7342)
                         (letrec*
                          ((g7469
                            (lambda (g7339)
                              (letrec*
                               ((g7470
                                 (letrec*
                                  ((x7471
                                    (letrec*
                                     ((x7472
                                       (begin
                                         (write '(funapp 383 44))
                                         (display "\n")
                                         (vector?/c j7340 k7341 g7339))))
                                     (begin
                                       (write '(funapp 384 36))
                                       (display "\n")
                                       (f7342 x7472)))))
                                  (begin
                                    (write '(funapp 385 33))
                                    (display "\n")
                                    (integer?/c j7340 k7341 x7471)))))
                               g7470))))
                          g7469))
                       xj7337
                       xk7338
                       (lambda (v i)
                         (letrec*
                          ((g7468
                            (begin
                              (write '(funapp 391 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7468))))))
                  g7467)))
               (vector-set!
                (letrec*
                 ((xj7343
                   (begin (write '(funapp 395 26)) (display "\n") 'server))
                  (xk7344
                   (begin (write '(funapp 395 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7473
                    (begin
                      (write '(funapp 398 21))
                      (display "\n")
                      ((lambda (j7347 k7348 f7349)
                         (letrec*
                          ((g7475
                            (lambda (g7345 g7346)
                              (letrec*
                               ((g7476
                                 (letrec*
                                  ((x7477
                                    (letrec*
                                     ((x7479
                                       (begin
                                         (write '(funapp 407 44))
                                         (display "\n")
                                         (vector?/c j7347 k7348 g7345)))
                                      (x7478
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (integer?/c j7347 k7348 g7346))))
                                     (begin
                                       (write '(funapp 409 36))
                                       (display "\n")
                                       (f7349 x7479 x7478)))))
                                  (begin
                                    (write '(funapp 410 33))
                                    (display "\n")
                                    (any/c j7347 k7348 x7477)))))
                               g7476))))
                          g7475))
                       xj7343
                       xk7344
                       (lambda (vec i v)
                         (letrec*
                          ((g7474
                            (begin
                              (write '(funapp 416 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7474))))))
                  g7473)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7480
                     (if cnd
                       (begin (write '(funapp 421 35)) (display "\n") '())
                       (begin
                         (write '(funapp 421 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7480)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7481
                     (letrec*
                      ((x7482
                        (letrec*
                         ((x7483
                           (begin
                             (write '(funapp 428 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 428 58))
                           (display "\n")
                           (cdr x7483)))))
                      (begin
                        (write '(funapp 429 23))
                        (display "\n")
                        (cdr x7482)))))
                   g7481)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7484
                     (letrec*
                      ((x7487
                        (begin
                          (write '(funapp 435 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 435 62))
                        (display "\n")
                        (assert x7487))))
                    (g7485
                     (letrec*
                      ((x7488
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 436 57))
                        (display "\n")
                        (assert x7488))))
                    (g7486
                     (letrec*
                      ((x-cnd7489
                        (begin
                          (write '(funapp 439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7489
                        (begin (write '(funapp 441 24)) (display "\n") '())
                        (letrec*
                         ((x7492
                           (letrec*
                            ((x7493
                              (begin
                                (write '(funapp 443 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 443 61))
                              (display "\n")
                              (f x7493))))
                          (x7490
                           (letrec*
                            ((x7491
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (map f x7491)))))
                         (begin
                           (write '(funapp 445 26))
                           (display "\n")
                           (cons x7492 x7490)))))))
                   g7486)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7494
                     (letrec*
                      ((x7495
                        (begin
                          (write '(funapp 450 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 450 55))
                        (display "\n")
                        (cdr x7495)))))
                   g7494)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7496
                     (letrec*
                      ((x7497
                        (letrec*
                         ((x7498
                           (letrec*
                            ((x7499
                              (begin
                                (write '(funapp 459 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 459 61))
                              (display "\n")
                              (car x7499)))))
                         (begin
                           (write '(funapp 460 26))
                           (display "\n")
                           (cdr x7498)))))
                      (begin
                        (write '(funapp 461 23))
                        (display "\n")
                        (car x7497)))))
                   g7496)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7500
                     (letrec*
                      ((x7501
                        (letrec*
                         ((x7502
                           (letrec*
                            ((x7503
                              (begin
                                (write '(funapp 470 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 470 61))
                              (display "\n")
                              (cdr x7503)))))
                         (begin
                           (write '(funapp 471 26))
                           (display "\n")
                           (car x7502)))))
                      (begin
                        (write '(funapp 472 23))
                        (display "\n")
                        (cdr x7501)))))
                   g7500)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7504
                     (letrec*
                      ((x7507
                        (begin
                          (write '(funapp 478 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 478 60))
                        (display "\n")
                        (assert x7507))))
                    (g7505
                     (letrec*
                      ((x7508
                        (begin
                          (write '(funapp 480 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 480 59))
                        (display "\n")
                        (assert x7508))))
                    (g7506
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
                       ((g7509
                         (begin
                           (write '(funapp 486 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7510 res))
                       g7510))))
                   g7506)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7511
                     (letrec*
                      ((x7512
                        (letrec*
                         ((x7513
                           (begin
                             (write '(funapp 494 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 494 58))
                           (display "\n")
                           (cdr x7513)))))
                      (begin
                        (write '(funapp 495 23))
                        (display "\n")
                        (car x7512)))))
                   g7511)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7514
                     (letrec*
                      ((x7515
                        (letrec*
                         ((x7516
                           (letrec*
                            ((x7517
                              (begin
                                (write '(funapp 504 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 504 61))
                              (display "\n")
                              (car x7517)))))
                         (begin
                           (write '(funapp 505 26))
                           (display "\n")
                           (car x7516)))))
                      (begin
                        (write '(funapp 506 23))
                        (display "\n")
                        (cdr x7515)))))
                   g7514)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7518
                     (letrec*
                      ((x7520
                        (begin
                          (write '(funapp 511 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 511 57))
                        (display "\n")
                        (assert x7520))))
                    (g7519
                     (letrec*
                      ((x-cnd7521
                        (begin
                          (write '(funapp 514 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7521
                        #f
                        (letrec*
                         ((x-cnd7522
                           (letrec*
                            ((x7523
                              (begin
                                (write '(funapp 519 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 519 56))
                              (display "\n")
                              (eq? x7523 k)))))
                         (if x-cnd7522
                           (begin
                             (write '(funapp 521 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7524
                              (begin
                                (write '(funapp 522 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 522 55))
                              (display "\n")
                              (assq k x7524)))))))))
                   g7519)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7525
                     (letrec*
                      ((x7526
                        (begin
                          (write '(funapp 527 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 527 60))
                        (display "\n")
                        (= 0 x7526)))))
                   g7525)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7527
                     (letrec*
                      ((x7529
                        (begin
                          (write '(funapp 532 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 532 57))
                        (display "\n")
                        (assert x7529))))
                    (g7528
                     (letrec*
                      ((x-cnd7530
                        (begin
                          (write '(funapp 535 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7530
                        ""
                        (letrec*
                         ((x7533
                           (letrec*
                            ((x7534
                              (begin
                                (write '(funapp 540 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 540 55))
                              (display "\n")
                              (char->string x7534))))
                          (x7531
                           (letrec*
                            ((x7532
                              (begin
                                (write '(funapp 542 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 542 55))
                              (display "\n")
                              (list->string x7532)))))
                         (begin
                           (write '(funapp 543 26))
                           (display "\n")
                           (string-append x7533 x7531)))))))
                   g7528)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7535
                     (letrec*
                      ((x7538
                        (begin
                          (write '(funapp 548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 548 58))
                        (display "\n")
                        (assert x7538))))
                    (g7536
                     (letrec*
                      ((x7539
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7539))))
                    (g7537
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 552 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7540
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 554 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7540))))
                   g7537)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7541
                     (letrec*
                      ((x7542
                        (letrec*
                         ((x7543
                           (letrec*
                            ((x7544
                              (begin
                                (write '(funapp 564 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 564 61))
                              (display "\n")
                              (cdr x7544)))))
                         (begin
                           (write '(funapp 565 26))
                           (display "\n")
                           (cdr x7543)))))
                      (begin
                        (write '(funapp 566 23))
                        (display "\n")
                        (cdr x7542)))))
                   g7541)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7545
                     (letrec*
                      ((x7548
                        (begin
                          (write '(funapp 571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 571 57))
                        (display "\n")
                        (assert x7548))))
                    (g7546
                     (letrec*
                      ((x7549
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7549))))
                    (g7547
                     (letrec*
                      ((x-cnd7550
                        (begin
                          (write '(funapp 575 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7550
                        x
                        (letrec*
                         ((x7552
                           (begin
                             (write '(funapp 579 34))
                             (display "\n")
                             (cdr x)))
                          (x7551
                           (begin
                             (write '(funapp 579 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 580 26))
                           (display "\n")
                           (list-tail x7552 x7551)))))))
                   g7547)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7553
                     (begin (write '(funapp 582 49)) (display "\n") '())))
                   g7553)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7554
                     (letrec*
                      ((x-cnd7555
                        (letrec*
                         ((x7556 #\a))
                         (begin
                           (write '(funapp 589 48))
                           (display "\n")
                           (char-ci>=? c x7556)))))
                      (if x-cnd7555
                        (letrec*
                         ((x7557 #\z))
                         (begin
                           (write '(funapp 591 48))
                           (display "\n")
                           (char-ci<=? c x7557)))
                        #f))))
                   g7554)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7558
                     (letrec*
                      ((x7560
                        (begin
                          (write '(funapp 597 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 597 59))
                        (display "\n")
                        (assert x7560))))
                    (g7559
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 600 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7561
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 606 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7562 (if val7243 val7243 #f)))
                             g7562)))))
                       g7561))))
                   g7559)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7563
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7564
                           (begin
                             (write '(funapp 618 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 618 62))
                           (display "\n")
                           (= x7564 9)))))
                      (letrec*
                       ((g7565
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7566
                                 (begin
                                   (write '(funapp 626 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 627 32))
                                 (display "\n")
                                 (= x7566 10)))))
                            (letrec*
                             ((g7567
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7568
                                    (begin
                                      (write '(funapp 633 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 634 35))
                                    (display "\n")
                                    (= x7568 32))))))
                             g7567)))))
                       g7565))))
                   g7563)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7569
                     (letrec*
                      ((x7570
                        (letrec*
                         ((x7571
                           (begin
                             (write '(funapp 643 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 643 58))
                           (display "\n")
                           (cdr x7571)))))
                      (begin
                        (write '(funapp 644 23))
                        (display "\n")
                        (cdr x7570)))))
                   g7569)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7572
                     (letrec*
                      ((x7574
                        (begin
                          (write '(funapp 649 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 649 59))
                        (display "\n")
                        (assert x7574))))
                    (g7573
                     (begin (write '(funapp 650 28)) (display "\n") (> x 0))))
                   g7573)))
               ($pc (begin (write '(funapp 652 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7575 #f)) g7575)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7576
                     (letrec*
                      ((x7577
                        (begin
                          (write '(funapp 658 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 658 55))
                        (display "\n")
                        (cdr x7577)))))
                   g7576)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7578
                     (letrec*
                      ((x7580
                        (begin
                          (write '(funapp 663 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 663 59))
                        (display "\n")
                        (assert x7580))))
                    (g7579
                     (letrec*
                      ((x-cnd7581
                        (begin
                          (write '(funapp 666 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7581
                        (begin
                          (write '(funapp 667 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 667 49))
                          (display "\n")
                          (floor x))))))
                   g7579)))
               ($cmp (begin (write '(funapp 669 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7582
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 675 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7583
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7584
                                 (begin
                                   (write '(funapp 683 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7584
                                 (begin
                                   (write '(funapp 684 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7585
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7586
                                       (begin
                                         (write '(funapp 692 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7586
                                       (letrec*
                                        ((x-cnd7587
                                          (begin
                                            (write '(funapp 695 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7587
                                          (begin
                                            (write '(funapp 696 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7588
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7589
                                             (begin
                                               (write '(funapp 705 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7589
                                             (letrec*
                                              ((x-cnd7590
                                                (begin
                                                  (write '(funapp 708 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7590
                                                (letrec*
                                                 ((x-cnd7591
                                                   (letrec*
                                                    ((x7593
                                                      (begin
                                                        (write
                                                         '(funapp 713 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7592
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 715 53))
                                                      (display "\n")
                                                      (equal? x7593 x7592)))))
                                                 (if x-cnd7591
                                                   (letrec*
                                                    ((x7595
                                                      (begin
                                                        (write
                                                         '(funapp 718 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7594
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 720 53))
                                                      (display "\n")
                                                      (equal? x7595 x7594)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7596
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7597
                                                (begin
                                                  (write '(funapp 729 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7597
                                                (letrec*
                                                 ((x-cnd7598
                                                   (begin
                                                     (write '(funapp 732 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7598
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 735 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7599
                                                       (letrec*
                                                        ((x-cnd7600
                                                          (letrec*
                                                           ((x7601
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
                                                             (= x7601 n)))))
                                                        (if x-cnd7600
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7602
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
                                                                    ((g7603
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7604
                                                                           (letrec*
                                                                            ((x7606
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
                                                                             (x7605
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
                                                                               x7606
                                                                               x7605)))))
                                                                         (if x-cnd7604
                                                                           (letrec*
                                                                            ((x7607
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
                                                                               x7607)))
                                                                           #f)))))
                                                                    g7603))))
                                                                g7602))))
                                                           (letrec*
                                                            ((g7608
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   784
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7608))
                                                          #f))))
                                                     g7599))
                                                   #f))
                                                #f)))))
                                         g7596)))))
                                   g7588)))))
                             g7585)))))
                       g7583))))
                   g7582)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (letrec*
                         ((x7611
                           (letrec*
                            ((x7612
                              (begin
                                (write '(funapp 802 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 802 61))
                              (display "\n")
                              (car x7612)))))
                         (begin
                           (write '(funapp 803 26))
                           (display "\n")
                           (car x7611)))))
                      (begin
                        (write '(funapp 804 23))
                        (display "\n")
                        (cdr x7610)))))
                   g7609)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7614
                        (letrec*
                         ((x7615
                           (letrec*
                            ((x7616
                              (begin
                                (write '(funapp 813 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 813 61))
                              (display "\n")
                              (cdr x7616)))))
                         (begin
                           (write '(funapp 814 26))
                           (display "\n")
                           (car x7615)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (car x7614)))))
                   g7613)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7617
                     (begin
                       (write '(funapp 817 53))
                       (display "\n")
                       (eq? x y))))
                   g7617)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 821 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 821 59))
                        (display "\n")
                        (assert x7620))))
                    (g7619
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 824 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7621
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 830 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7622 (if val7252 val7252 #f)))
                             g7622)))))
                       g7621))))
                   g7619)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 840 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 840 60))
                        (display "\n")
                        (assert x7626))))
                    (g7624
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 842 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 842 59))
                        (display "\n")
                        (assert x7627))))
                    (g7625
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
                       ((g7628
                         (begin
                           (write '(funapp 848 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7629 res))
                       g7629))))
                   g7625)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7630
                     (begin
                       (write '(funapp 851 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 851 57)) (display "\n") '())))))
                   g7630)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 855 58))
                        (display "\n")
                        (assert x7634))))
                    (g7632
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7635))))
                    (g7633
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 859 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7636
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 861 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7636))))
                   g7633)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7638
                        (letrec*
                         ((x7639
                           (begin
                             (write '(funapp 869 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 869 58))
                           (display "\n")
                           (car x7639)))))
                      (begin
                        (write '(funapp 870 23))
                        (display "\n")
                        (cdr x7638)))))
                   g7637)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7641
                        (letrec*
                         ((x7642
                           (letrec*
                            ((x7643
                              (begin
                                (write '(funapp 879 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 879 61))
                              (display "\n")
                              (cdr x7643)))))
                         (begin
                           (write '(funapp 880 26))
                           (display "\n")
                           (car x7642)))))
                      (begin
                        (write '(funapp 881 23))
                        (display "\n")
                        (cdr x7641)))))
                   g7640)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7645
                        (letrec*
                         ((x7646
                           (begin
                             (write '(funapp 889 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 889 58))
                           (display "\n")
                           (cdr x7646)))))
                      (begin
                        (write '(funapp 890 23))
                        (display "\n")
                        (car x7645)))))
                   g7644)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7648
                        (letrec*
                         ((x7649
                           (begin
                             (write '(funapp 897 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 897 58))
                           (display "\n")
                           (car x7649)))))
                      (begin
                        (write '(funapp 898 23))
                        (display "\n")
                        (car x7648)))))
                   g7647)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 903 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 903 58))
                        (display "\n")
                        (assert x7653))))
                    (g7651
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7654))))
                    (g7652
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 905 66))
                        (display "\n")
                        (not x7655)))))
                   g7652)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7657
                        (letrec*
                         ((x7658
                           (letrec*
                            ((x7659
                              (begin
                                (write '(funapp 915 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 915 61))
                              (display "\n")
                              (car x7659)))))
                         (begin
                           (write '(funapp 916 26))
                           (display "\n")
                           (car x7658)))))
                      (begin
                        (write '(funapp 917 23))
                        (display "\n")
                        (car x7657)))))
                   g7656)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 922 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7662))))
                    (g7661
                     (begin (write '(funapp 923 28)) (display "\n") (< x 0))))
                   g7661)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7663
                     (begin
                       (write '(funapp 925 53))
                       (display "\n")
                       (memq e l))))
                   g7663)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x7665
                        (letrec*
                         ((x7666
                           (begin
                             (write '(funapp 931 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 931 58))
                           (display "\n")
                           (car x7666)))))
                      (begin
                        (write '(funapp 932 23))
                        (display "\n")
                        (car x7665)))))
                   g7664)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7667
                     (begin (write '(funapp 934 51)) (display "\n") '())))
                   g7667)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((x7670
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 938 57))
                        (display "\n")
                        (assert x7670))))
                    (g7669
                     (letrec*
                      ((x-cnd7671
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7671
                        (begin (write '(funapp 943 24)) (display "\n") '())
                        (letrec*
                         ((x7674
                           (letrec*
                            ((x7675
                              (begin
                                (write '(funapp 945 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 945 61))
                              (display "\n")
                              (reverse x7675))))
                          (x7672
                           (letrec*
                            ((x7673
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (list x7673)))))
                         (begin
                           (write '(funapp 947 26))
                           (display "\n")
                           (append x7674 x7672)))))))
                   g7669)))
               (caaadr
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
                                (write '(funapp 956 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 956 61))
                              (display "\n")
                              (car x7679)))))
                         (begin
                           (write '(funapp 957 26))
                           (display "\n")
                           (car x7678)))))
                      (begin
                        (write '(funapp 958 23))
                        (display "\n")
                        (car x7677)))))
                   g7676)))
               (cddadr
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
                                (write '(funapp 967 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 967 61))
                              (display "\n")
                              (car x7683)))))
                         (begin
                           (write '(funapp 968 26))
                           (display "\n")
                           (cdr x7682)))))
                      (begin
                        (write '(funapp 969 23))
                        (display "\n")
                        (cdr x7681)))))
                   g7680)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((x7686
                        (begin
                          (write '(funapp 974 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 974 59))
                        (display "\n")
                        (assert x7686))))
                    (g7685
                     (letrec*
                      ((x7687
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 975 60))
                        (display "\n")
                        (= 1 x7687)))))
                   g7685)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7688
                     (letrec*
                      ((x7689
                        (letrec*
                         ((x7690
                           (letrec*
                            ((x7691
                              (begin
                                (write '(funapp 984 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 984 61))
                              (display "\n")
                              (cdr x7691)))))
                         (begin
                           (write '(funapp 985 26))
                           (display "\n")
                           (car x7690)))))
                      (begin
                        (write '(funapp 986 23))
                        (display "\n")
                        (car x7689)))))
                   g7688)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7692
                     (letrec*
                      ((x7695
                        (begin
                          (write '(funapp 992 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 992 59))
                        (display "\n")
                        (assert x7695))))
                    (g7693
                     (letrec*
                      ((x7696
                        (begin
                          (write '(funapp 993 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 993 60))
                        (display "\n")
                        (assert x7696))))
                    (g7694
                     (letrec*
                      ((x-cnd7697
                        (begin
                          (write '(funapp 996 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7697
                        (letrec*
                         ((g7698
                           (begin
                             (write '(funapp 998 42))
                             (display "\n")
                             (proc))))
                         g7698)
                        (letrec*
                         ((x-cnd7699
                           (letrec*
                            ((x7700
                              (begin
                                (write '(funapp 1001 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1001 58))
                              (display "\n")
                              (null? x7700)))))
                         (if x-cnd7699
                           (letrec*
                            ((g7701
                              (letrec*
                               ((x7702
                                 (begin
                                   (write '(funapp 1005 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1005 61))
                                 (display "\n")
                                 (proc x7702)))))
                            g7701)
                           (letrec*
                            ((x-cnd7703
                              (letrec*
                               ((x7704
                                 (begin
                                   (write '(funapp 1009 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1009 62))
                                 (display "\n")
                                 (null? x7704)))))
                            (if x-cnd7703
                              (letrec*
                               ((g7705
                                 (letrec*
                                  ((x7707
                                    (begin
                                      (write '(funapp 1014 43))
                                      (display "\n")
                                      (car args)))
                                   (x7706
                                    (begin
                                      (write '(funapp 1014 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1015 35))
                                    (display "\n")
                                    (proc x7707 x7706)))))
                               g7705)
                              (letrec*
                               ((x-cnd7708
                                 (letrec*
                                  ((x7709
                                    (begin
                                      (write '(funapp 1020 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1021 35))
                                    (display "\n")
                                    (null? x7709)))))
                               (if x-cnd7708
                                 (letrec*
                                  ((g7710
                                    (letrec*
                                     ((x7713
                                       (begin
                                         (write '(funapp 1026 46))
                                         (display "\n")
                                         (car args)))
                                      (x7712
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7711
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1029 38))
                                       (display "\n")
                                       (proc x7713 x7712 x7711)))))
                                  g7710)
                                 (letrec*
                                  ((x-cnd7714
                                    (letrec*
                                     ((x7715
                                       (begin
                                         (write '(funapp 1034 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1035 38))
                                       (display "\n")
                                       (null? x7715)))))
                                  (if x-cnd7714
                                    (letrec*
                                     ((g7716
                                       (letrec*
                                        ((x7720
                                          (begin
                                            (write '(funapp 1040 49))
                                            (display "\n")
                                            (car args)))
                                         (x7719
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7718
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7717
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1044 41))
                                          (display "\n")
                                          (proc x7720 x7719 x7718 x7717)))))
                                     g7716)
                                    (letrec*
                                     ((x-cnd7721
                                       (letrec*
                                        ((x7722
                                          (letrec*
                                           ((x7723
                                             (begin
                                               (write '(funapp 1051 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1052 44))
                                             (display "\n")
                                             (cdr x7723)))))
                                        (begin
                                          (write '(funapp 1053 41))
                                          (display "\n")
                                          (null? x7722)))))
                                     (if x-cnd7721
                                       (letrec*
                                        ((g7724
                                          (letrec*
                                           ((x7730
                                             (begin
                                               (write '(funapp 1058 52))
                                               (display "\n")
                                               (car args)))
                                            (x7729
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7728
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7727
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7725
                                             (letrec*
                                              ((x7726
                                                (begin
                                                  (write '(funapp 1064 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (car x7726)))))
                                           (begin
                                             (write '(funapp 1066 44))
                                             (display "\n")
                                             (proc
                                              x7730
                                              x7729
                                              x7728
                                              x7727
                                              x7725)))))
                                        g7724)
                                       (letrec*
                                        ((x-cnd7731
                                          (letrec*
                                           ((x7732
                                             (letrec*
                                              ((x7733
                                                (begin
                                                  (write '(funapp 1078 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1079 47))
                                                (display "\n")
                                                (cddr x7733)))))
                                           (begin
                                             (write '(funapp 1080 44))
                                             (display "\n")
                                             (null? x7732)))))
                                        (if x-cnd7731
                                          (letrec*
                                           ((g7734
                                             (letrec*
                                              ((x7742
                                                (begin
                                                  (write '(funapp 1085 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7741
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7740
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7739
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7737
                                                (letrec*
                                                 ((x7738
                                                   (begin
                                                     (write '(funapp 1091 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1092 50))
                                                   (display "\n")
                                                   (car x7738))))
                                               (x7735
                                                (letrec*
                                                 ((x7736
                                                   (begin
                                                     (write '(funapp 1095 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1096 50))
                                                   (display "\n")
                                                   (cadr x7736)))))
                                              (begin
                                                (write '(funapp 1097 47))
                                                (display "\n")
                                                (proc
                                                 x7742
                                                 x7741
                                                 x7740
                                                 x7739
                                                 x7737
                                                 x7735)))))
                                           g7734)
                                          (letrec*
                                           ((x-cnd7743
                                             (letrec*
                                              ((x7744
                                                (letrec*
                                                 ((x7745
                                                   (begin
                                                     (write '(funapp 1110 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1111 50))
                                                   (display "\n")
                                                   (cdddr x7745)))))
                                              (begin
                                                (write '(funapp 1112 47))
                                                (display "\n")
                                                (null? x7744)))))
                                           (if x-cnd7743
                                             (letrec*
                                              ((g7746
                                                (letrec*
                                                 ((x7756
                                                   (begin
                                                     (write '(funapp 1117 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7755
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7754
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7753
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7751
                                                   (letrec*
                                                    ((x7752
                                                      (begin
                                                        (write
                                                         '(funapp 1123 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1124 53))
                                                      (display "\n")
                                                      (car x7752))))
                                                  (x7749
                                                   (letrec*
                                                    ((x7750
                                                      (begin
                                                        (write
                                                         '(funapp 1127 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1128 53))
                                                      (display "\n")
                                                      (cadr x7750))))
                                                  (x7747
                                                   (letrec*
                                                    ((x7748
                                                      (begin
                                                        (write
                                                         '(funapp 1131 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1132 53))
                                                      (display "\n")
                                                      (caddr x7748)))))
                                                 (begin
                                                   (write '(funapp 1133 50))
                                                   (display "\n")
                                                   (proc
                                                    x7756
                                                    x7755
                                                    x7754
                                                    x7753
                                                    x7751
                                                    x7749
                                                    x7747)))))
                                              g7746)
                                             (letrec*
                                              ((g7757
                                                (begin
                                                  (write '(funapp 1144 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7757)))))))))))))))))))
                   g7694)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7760
                        (begin
                          (write '(funapp 1150 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1150 57))
                        (display "\n")
                        (assert x7760))))
                    (g7759
                     (letrec*
                      ((x-cnd7761
                        (begin
                          (write '(funapp 1153 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7761
                        #f
                        (letrec*
                         ((x-cnd7762
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 1158 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1158 55))
                              (display "\n")
                              (equal? x7763 e)))))
                         (if x-cnd7762
                           l
                           (letrec*
                            ((x7764
                              (begin
                                (write '(funapp 1161 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1161 55))
                              (display "\n")
                              (member e x7764)))))))))
                   g7759)))
               (cddddr
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7768)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (cdr x7767)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (cdr x7766)))))
                   g7765)))
               (cadddr
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
                                (write '(funapp 1181 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1181 61))
                              (display "\n")
                              (cdr x7772)))))
                         (begin
                           (write '(funapp 1182 26))
                           (display "\n")
                           (cdr x7771)))))
                      (begin
                        (write '(funapp 1183 23))
                        (display "\n")
                        (car x7770)))))
                   g7769)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7773
                     (begin
                       (write '(funapp 1185 53))
                       (display "\n")
                       (random 42))))
                   g7773)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1189 59))
                        (display "\n")
                        (assert x7776))))
                    (g7775
                     (begin (write '(funapp 1190 28)) (display "\n") (= x 0))))
                   g7775)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1197 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7778
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1199 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7778))))
                   g7777)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1205 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1205 55))
                        (display "\n")
                        (car x7780)))))
                   g7779)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7782
                           (begin
                             (write '(funapp 1215 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7782
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 1217 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1217 55))
                              (display "\n")
                              (list? x7783)))
                           #f))))
                      (letrec*
                       ((g7784
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1220 52))
                             (display "\n")
                             (null? l)))))
                       g7784))))
                   g7781)))
               (cddaar
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
                                (write '(funapp 1230 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1230 61))
                              (display "\n")
                              (car x7788)))))
                         (begin
                           (write '(funapp 1231 26))
                           (display "\n")
                           (cdr x7787)))))
                      (begin
                        (write '(funapp 1232 23))
                        (display "\n")
                        (cdr x7786)))))
                   g7785)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x-cnd7790
                        (letrec*
                         ((x7791 #\0))
                         (begin
                           (write '(funapp 1239 58))
                           (display "\n")
                           (char<=? x7791 c)))))
                      (if x-cnd7790
                        (letrec*
                         ((x7792 #\9))
                         (begin
                           (write '(funapp 1241 48))
                           (display "\n")
                           (char<=? c x7792)))
                        #f))))
                   g7789)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1248 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1248 57))
                        (display "\n")
                        (assert x7795))))
                    (g7794
                     (letrec*
                      ((x-cnd7796
                        (begin
                          (write '(funapp 1251 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7796
                        #f
                        (letrec*
                         ((x-cnd7797
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 1256 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1256 56))
                              (display "\n")
                              (eqv? x7798 k)))))
                         (if x-cnd7797
                           (begin
                             (write '(funapp 1258 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 1259 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1259 55))
                              (display "\n")
                              (assq k x7799)))))))))
                   g7794)))
               (not (lambda (x) (letrec* ((g7800 (if x #f #t))) g7800)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7801
                     (begin
                       (write '(funapp 1263 50))
                       (display "\n")
                       (append l1 l2))))
                   g7801)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 1267 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1267 57))
                        (display "\n")
                        (assert x7804))))
                    (g7803
                     (letrec*
                      ((x-cnd7805
                        (begin
                          (write '(funapp 1270 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7805
                        #f
                        (letrec*
                         ((x-cnd7806
                           (letrec*
                            ((x7807
                              (begin
                                (write '(funapp 1275 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1275 55))
                              (display "\n")
                              (eq? x7807 e)))))
                         (if x-cnd7806
                           l
                           (letrec*
                            ((x7808
                              (begin
                                (write '(funapp 1278 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1278 55))
                              (display "\n")
                              (memq e x7808)))))))))
                   g7803)))
               (cadaar
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
                                (write '(funapp 1287 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1287 61))
                              (display "\n")
                              (car x7812)))))
                         (begin
                           (write '(funapp 1288 26))
                           (display "\n")
                           (cdr x7811)))))
                      (begin
                        (write '(funapp 1289 23))
                        (display "\n")
                        (car x7810)))))
                   g7809)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7813
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1294 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1294 57))
                        (display "\n")
                        (assert x7815))))
                    (g7814
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7816
                             (letrec*
                              ((x-cnd7817
                                (begin
                                  (write '(funapp 1302 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7817
                                0
                                (letrec*
                                 ((x7818
                                   (letrec*
                                    ((x7819
                                      (begin
                                        (write '(funapp 1307 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1307 63))
                                      (display "\n")
                                      (rec x7819)))))
                                 (begin
                                   (write '(funapp 1308 34))
                                   (display "\n")
                                   (+ 1 x7818)))))))
                           g7816))))
                      (letrec*
                       ((g7820
                         (begin
                           (write '(funapp 1310 40))
                           (display "\n")
                           (rec l))))
                       g7820))))
                   g7814)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7821
                     (letrec*
                      ((x7824
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7824))))
                    (g7822
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7825))))
                    (g7823
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1319 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7826
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1321 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7826))))
                   g7823)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7827
                     (letrec*
                      ((x7828
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1327 65))
                        (display "\n")
                        (not x7828)))))
                   g7827)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7829
                     (letrec*
                      ((x7830
                        (letrec*
                         ((x7831
                           (begin
                             (write '(funapp 1334 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1334 58))
                           (display "\n")
                           (car x7831)))))
                      (begin
                        (write '(funapp 1335 23))
                        (display "\n")
                        (cdr x7830)))))
                   g7829)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7832
                     (letrec*
                      ((x7834
                        (begin
                          (write '(funapp 1340 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1340 57))
                        (display "\n")
                        (assert x7834))))
                    (g7833
                     (letrec*
                      ((x-cnd7835
                        (begin
                          (write '(funapp 1343 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7835
                        #f
                        (letrec*
                         ((x-cnd7836
                           (letrec*
                            ((x7837
                              (begin
                                (write '(funapp 1348 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1348 56))
                              (display "\n")
                              (equal? x7837 k)))))
                         (if x-cnd7836
                           (begin
                             (write '(funapp 1350 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7838
                              (begin
                                (write '(funapp 1351 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1351 55))
                              (display "\n")
                              (assoc k x7838)))))))))
                   g7833)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7839
                     (letrec*
                      ((x7840
                        (begin
                          (write '(funapp 1356 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1356 55))
                        (display "\n")
                        (car x7840)))))
                   g7839)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((x7844
                        (begin
                          (write '(funapp 1361 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1361 58))
                        (display "\n")
                        (assert x7844))))
                    (g7842
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7845))))
                    (g7843
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1363 63))
                        (display "\n")
                        (not x7846)))))
                   g7843)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1370 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7848
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1372 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7848))))
                   g7847)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 1378 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1378 62))
                        (display "\n")
                        (assert x7852))))
                    (g7850
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1379 57))
                        (display "\n")
                        (assert x7853))))
                    (g7851
                     (letrec*
                      ((x-cnd7854
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7854
                        #t
                        (letrec*
                         ((x-cnd7855
                           (begin
                             (write '(funapp 1386 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7855
                           (letrec*
                            ((g7856
                              (letrec*
                               ((x7858
                                 (begin
                                   (write '(funapp 1389 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1389 64))
                                 (display "\n")
                                 (f x7858))))
                             (g7857
                              (letrec*
                               ((x7859
                                 (begin
                                   (write '(funapp 1391 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1391 58))
                                 (display "\n")
                                 (for-each f x7859)))))
                            g7857)
                           (begin
                             (write '(funapp 1393 27))
                             (display "\n")
                             '())))))))
                   g7851)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7860
                     (letrec*
                      ((x7862
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1398 59))
                        (display "\n")
                        (assert x7862))))
                    (g7861
                     (letrec*
                      ((x-cnd7863
                        (begin
                          (write '(funapp 1400 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7863
                        (begin
                          (write '(funapp 1400 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7861)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x7867
                        (begin
                          (write '(funapp 1405 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1405 58))
                        (display "\n")
                        (assert x7867))))
                    (g7865
                     (letrec*
                      ((x7868
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7868))))
                    (g7866
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1409 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7869
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1411 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7869))))
                   g7866)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x7871
                        (letrec*
                         ((x7872
                           (letrec*
                            ((x7873
                              (begin
                                (write '(funapp 1421 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1421 61))
                              (display "\n")
                              (cdr x7873)))))
                         (begin
                           (write '(funapp 1422 26))
                           (display "\n")
                           (cdr x7872)))))
                      (begin
                        (write '(funapp 1423 23))
                        (display "\n")
                        (car x7871)))))
                   g7870)))
               (newline (lambda () (letrec* ((g7874 #f)) g7874)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7877
                        (letrec*
                         ((x7878
                           (begin
                             (write '(funapp 1431 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1431 58))
                           (display "\n")
                           (abs x7878))))
                       (x7876
                        (begin
                          (write '(funapp 1432 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1433 23))
                        (display "\n")
                        (/ x7877 x7876)))))
                   g7875)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7881
                        (begin
                          (write '(funapp 1439 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1439 59))
                        (display "\n")
                        (assert x7881))))
                    (g7880
                     (letrec*
                      ((x7882
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1440 56))
                        (display "\n")
                        (not x7882)))))
                   g7880)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7883
                     (letrec*
                      ((x7887
                        (begin
                          (write '(funapp 1445 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1445 57))
                        (display "\n")
                        (assert x7887))))
                    (g7884
                     (letrec*
                      ((x7888
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1446 63))
                        (display "\n")
                        (assert x7888))))
                    (g7885
                     (letrec*
                      ((x7889
                        (letrec*
                         ((x7890
                           (begin
                             (write '(funapp 1449 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1449 61))
                           (display "\n")
                           (< index x7890)))))
                      (begin
                        (write '(funapp 1450 23))
                        (display "\n")
                        (assert x7889))))
                    (g7886
                     (letrec*
                      ((x-cnd7891
                        (begin
                          (write '(funapp 1453 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7891
                        (begin
                          (write '(funapp 1455 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7893
                           (begin
                             (write '(funapp 1457 34))
                             (display "\n")
                             (cdr l)))
                          (x7892
                           (begin
                             (write '(funapp 1457 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1458 26))
                           (display "\n")
                           (list-ref x7893 x7892)))))))
                   g7886)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((x-cnd7895
                        (begin
                          (write '(funapp 1465 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7895
                        a
                        (letrec*
                         ((x7896
                           (begin
                             (write '(funapp 1468 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1468 57))
                           (display "\n")
                           (gcd b x7896)))))))
                   g7894)))
               (mult
                (lambda (n m)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((x-cnd7898
                        (letrec*
                         ((val7259
                           (begin
                             (write '(funapp 1477 36))
                             (display "\n")
                             (<= n 0))))
                         (letrec*
                          ((g7899
                            (if val7259
                              val7259
                              (begin
                                (write '(funapp 1479 55))
                                (display "\n")
                                (<= m 0)))))
                          g7899))))
                      (if x-cnd7898
                        0
                        (letrec*
                         ((x7900
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 1484 51))
                                (display "\n")
                                (- m 1))))
                            (begin
                              (write '(funapp 1484 61))
                              (display "\n")
                              (mult n x7901)))))
                         (begin
                           (write '(funapp 1485 26))
                           (display "\n")
                           (+ n x7900)))))))
                   g7897)))
               (sqr
                (lambda (n)
                  (letrec*
                   ((g7902
                     (begin
                       (write '(funapp 1487 50))
                       (display "\n")
                       (mult n n))))
                   g7902))))
              (letrec*
               ((g7903
                 (letrec*
                  ((x7907
                    (letrec*
                     ((xj7350
                       (letrec*
                        ((x7908
                          (begin
                            (write '(funapp 1493 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 1493 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1493 61))
                             (display "\n")
                             'module)
                           x7908))))
                      (xk7351
                       (letrec*
                        ((x7909
                          (begin
                            (write '(funapp 1495 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 1495 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1495 54))
                             (display "\n")
                             'importer)
                           x7909)))))
                     (letrec*
                      ((g7910
                        (begin
                          (write '(funapp 1498 25))
                          (display "\n")
                          ((lambda (j7354 k7355 f7356)
                             (letrec*
                              ((g7911
                                (lambda (g7352 g7353)
                                  (letrec*
                                   ((g7912
                                     (letrec*
                                      ((x7916
                                        (letrec*
                                         ((x7917
                                           (begin
                                             (write '(funapp 1507 48))
                                             (display "\n")
                                             (>=/c 0))))
                                         (begin
                                           (write '(funapp 1508 40))
                                           (display "\n")
                                           (and/c integer?/c x7917))))
                                       (x7913
                                        (letrec*
                                         ((x7915
                                           (begin
                                             (write '(funapp 1511 48))
                                             (display "\n")
                                             (integer?/c j7354 k7355 g7352)))
                                          (x7914
                                           (begin
                                             (write '(funapp 1512 48))
                                             (display "\n")
                                             (integer?/c j7354 k7355 g7353))))
                                         (begin
                                           (write '(funapp 1513 40))
                                           (display "\n")
                                           (f7356 x7915 x7914)))))
                                      (begin
                                        (write '(funapp 1514 37))
                                        (display "\n")
                                        (x7916 j7354 k7355 x7913)))))
                                   g7912))))
                              g7911))
                           xj7350
                           xk7351
                           mult))))
                      g7910)))
                   (x7906 (input))
                   (x7905 (input)))
                  (begin
                    (write '(funapp 1523 19))
                    (display "\n")
                    (x7907 x7906 x7905))))
                (g7904
                 (letrec*
                  ((xj7357
                    (letrec*
                     ((x7918
                       (begin (write '(funapp 1526 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 1526 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 1526 58))
                          (display "\n")
                          'module)
                        x7918))))
                   (xk7358
                    (letrec*
                     ((x7919
                       (begin (write '(funapp 1527 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 1527 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 1527 58))
                          (display "\n")
                          'importer)
                        x7919)))))
                  (letrec*
                   ((g7920
                     (begin
                       (write '(funapp 1530 22))
                       (display "\n")
                       ((lambda (j7360 k7361 f7362)
                          (letrec*
                           ((g7921
                             (lambda (g7359)
                               (letrec*
                                ((g7922
                                  (letrec*
                                   ((x7363
                                     (begin
                                       (write '(funapp 1537 42))
                                       (display "\n")
                                       (integer?/c j7360 k7361 g7359))))
                                   (letrec*
                                    ((g7923
                                      (letrec*
                                       ((x7925
                                         (begin
                                           (write '(funapp 1542 40))
                                           (display "\n")
                                           ((lambda (n)
                                              (letrec*
                                               ((g7926
                                                 (letrec*
                                                  ((x7927
                                                    (begin
                                                      (write '(funapp 1546 55))
                                                      (display "\n")
                                                      (>=/c n))))
                                                  (begin
                                                    (write '(funapp 1547 47))
                                                    (display "\n")
                                                    (and/c
                                                     integer?/c
                                                     x7927)))))
                                               g7926))
                                            x7363)))
                                        (x7924
                                         (begin
                                           (write '(funapp 1550 46))
                                           (display "\n")
                                           (f7362 x7363))))
                                       (begin
                                         (write '(funapp 1551 38))
                                         (display "\n")
                                         (x7925 j7360 k7361 x7924)))))
                                    g7923))))
                                g7922))))
                           g7921))
                        xj7357
                        xk7358
                        sqr))))
                   g7920))))
               g7904))))
           g7377))))
       g7375)))
    g7374)))
