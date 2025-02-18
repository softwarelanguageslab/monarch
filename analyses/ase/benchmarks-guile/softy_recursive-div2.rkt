(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7358 #t)) g7358)))
    (meta (lambda (v) (letrec* ((g7359 v)) g7359)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7360
          (letrec*
           ((g7361
             (letrec*
              ((x-e7362 lst))
              (letrec*
               ((v1742 x-e7362))
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
                   ((x-cnd7363
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7363
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
           g7361)))
        g7360)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7364 (lambda (v) (letrec* ((g7365 v)) g7365)))) g7364)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7366
          (letrec*
           ((x7367 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7367)))))
        g7366))))
   (letrec*
    ((g7368
      (letrec*
       ((g7369
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
           ((g7370 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7371
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7372
                     (lambda (k j lst)
                       (letrec*
                        ((g7373
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7374
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7374))
                             lst))))
                        g7373))))
                   g7372)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7375
                     (letrec*
                      ((x-cnd7376
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7376
                        g7261
                        (begin
                          (write '(blame g7259 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7375)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7377
                     (letrec*
                      ((x-cnd7378
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7378
                        g7264
                        (begin
                          (write '(blame g7262 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7377)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7379
                     (letrec*
                      ((x-cnd7380
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7380
                        g7267
                        (begin
                          (write '(blame g7265 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7379)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7381
                     (letrec*
                      ((x-cnd7382
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7383 #t)) g7383)) g7270))))
                      (if x-cnd7382
                        g7270
                        (begin
                          (write '(blame g7268 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7381)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7384
                     (letrec*
                      ((x-cnd7385
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7386 #t)) g7386)) g7273))))
                      (if x-cnd7385
                        g7273
                        (begin
                          (write '(blame g7271 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7384)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7387
                     (letrec*
                      ((x-cnd7388
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7388
                        g7276
                        (begin
                          (write '(blame g7274 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7387)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7389
                     (letrec*
                      ((x-cnd7390
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7390
                        g7279
                        (begin
                          (write '(blame g7277 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7389)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7391
                     (letrec*
                      ((x-cnd7392
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7392
                        g7282
                        (begin
                          (write '(blame g7280 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7391)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7393
                     (letrec*
                      ((x-cnd7394
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7394
                        g7285
                        (begin
                          (write '(blame g7283 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7393)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7395
                     (lambda (k j v)
                       (letrec*
                        ((g7396
                          (letrec*
                           ((x-cnd7397
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7397
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7396))))
                   g7395)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7398
                     (lambda (k j v)
                       (letrec*
                        ((g7399
                          (letrec*
                           ((x-cnd7400
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7400
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7404
                                (letrec*
                                 ((x7405
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7405))))
                               (x7401
                                (letrec*
                                 ((x7403
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7402
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7403 k j x7402)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7404 x7401)))))))
                        g7399))))
                   g7398)))
               (any? (lambda (v) (letrec* ((g7406 #t)) g7406)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7407
                     (letrec*
                      ((x7408
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7408)))))
                   g7407)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7409
                     (letrec*
                      ((x-cnd7410
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7411
                                (letrec*
                                 ((x7412
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7412)))))
                              g7411))
                           g7288))))
                      (if x-cnd7410
                        g7288
                        (begin
                          (write '(blame g7286 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7409)))
               (meta (lambda (v) (letrec* ((g7413 v)) g7413)))
               (+
                (letrec*
                 ((xj7289
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7414
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7293 k7294 f7295)
                         (letrec*
                          ((g7416
                            (lambda (g7291 g7292)
                              (letrec*
                               ((g7417
                                 (letrec*
                                  ((x7418
                                    (letrec*
                                     ((x7420
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7419
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7295 x7420 x7419)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7293 k7294 x7418)))))
                               g7417))))
                          g7416))
                       xj7289
                       xk7290
                       (lambda (a b)
                         (letrec*
                          ((g7415
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7415))))))
                  g7414)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7421
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7300 k7301 f7302)
                         (letrec*
                          ((g7423
                            (lambda (g7298 g7299)
                              (letrec*
                               ((g7424
                                 (letrec*
                                  ((x7425
                                    (letrec*
                                     ((x7427
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7426
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7302 x7427 x7426)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7300 k7301 x7425)))))
                               g7424))))
                          g7423))
                       xj7296
                       xk7297
                       (lambda (a b)
                         (letrec*
                          ((g7422
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7422))))))
                  g7421)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7428
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7307 k7308 f7309)
                         (letrec*
                          ((g7430
                            (lambda (g7305 g7306)
                              (letrec*
                               ((g7431
                                 (letrec*
                                  ((x7432
                                    (letrec*
                                     ((x7434
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7433
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7309 x7434 x7433)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7307 k7308 x7432)))))
                               g7431))))
                          g7430))
                       xj7303
                       xk7304
                       (lambda (a b)
                         (letrec*
                          ((g7429
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7429))))))
                  g7428)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7435
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7437
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7438
                                 (letrec*
                                  ((x7439
                                    (letrec*
                                     ((x7441
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7440
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7316 x7441 x7440)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7439)))))
                               g7438))))
                          g7437))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7436
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7436))))))
                  g7435)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7442
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7444
                            (lambda (g7319)
                              (letrec*
                               ((g7445
                                 (letrec*
                                  ((x7446
                                    (letrec*
                                     ((x7447
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7322 x7447)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7320 k7321 x7446)))))
                               g7445))))
                          g7444))
                       xj7317
                       xk7318
                       (lambda (p)
                         (letrec*
                          ((g7443
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7443))))))
                  g7442)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7448
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7326 k7327 f7328)
                         (letrec*
                          ((g7450
                            (lambda (g7325)
                              (letrec*
                               ((g7451
                                 (letrec*
                                  ((x7452
                                    (letrec*
                                     ((x7453
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7328 x7453)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7326 k7327 x7452)))))
                               g7451))))
                          g7450))
                       xj7323
                       xk7324
                       (lambda (p)
                         (letrec*
                          ((g7449
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7449))))))
                  g7448)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7454
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7456
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7457
                                 (letrec*
                                  ((x7458
                                    (letrec*
                                     ((x7460
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7459
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7335 x7460 x7459)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7333 k7334 x7458)))))
                               g7457))))
                          g7456))
                       xj7329
                       xk7330
                       (lambda (a b)
                         (letrec*
                          ((g7455
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7455))))))
                  g7454)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7461
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7463
                            (lambda (g7338)
                              (letrec*
                               ((g7464
                                 (letrec*
                                  ((x7465
                                    (letrec*
                                     ((x7466
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7341 x7466)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7339 k7340 x7465)))))
                               g7464))))
                          g7463))
                       xj7336
                       xk7337
                       (lambda (v i)
                         (letrec*
                          ((g7462
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7462))))))
                  g7461)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7467
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7469
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7470
                                 (letrec*
                                  ((x7471
                                    (letrec*
                                     ((x7473
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7472
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7348 x7473 x7472)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7346 k7347 x7471)))))
                               g7470))))
                          g7469))
                       xj7342
                       xk7343
                       (lambda (vec i v)
                         (letrec*
                          ((g7468
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7468))))))
                  g7467)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7474
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7474)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7475
                     (letrec*
                      ((x7476
                        (letrec*
                         ((x7477
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7477)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7476)))))
                   g7475)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7478
                     (letrec*
                      ((x7481
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7481))))
                    (g7479
                     (letrec*
                      ((x7482
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7482))))
                    (g7480
                     (letrec*
                      ((x-cnd7483
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7483
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7486
                           (letrec*
                            ((x7487
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7487))))
                          (x7484
                           (letrec*
                            ((x7485
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7485)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7486 x7484)))))))
                   g7480)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7488
                     (letrec*
                      ((x7489
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7489)))))
                   g7488)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7490
                     (letrec*
                      ((x7491
                        (letrec*
                         ((x7492
                           (letrec*
                            ((x7493
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7493)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7492)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7491)))))
                   g7490)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7494
                     (letrec*
                      ((x7495
                        (letrec*
                         ((x7496
                           (letrec*
                            ((x7497
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7497)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7496)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7495)))))
                   g7494)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7498
                     (letrec*
                      ((x7501
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7501))))
                    (g7499
                     (letrec*
                      ((x7502
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7502))))
                    (g7500
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
                       ((g7503
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7504 res))
                       g7504))))
                   g7500)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7505
                     (letrec*
                      ((x7506
                        (letrec*
                         ((x7507
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7507)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7506)))))
                   g7505)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7508
                     (letrec*
                      ((x7509
                        (letrec*
                         ((x7510
                           (letrec*
                            ((x7511
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7511)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7510)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7509)))))
                   g7508)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7512
                     (letrec*
                      ((x7514
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7514))))
                    (g7513
                     (letrec*
                      ((x-cnd7515
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7515
                        #f
                        (letrec*
                         ((x-cnd7516
                           (letrec*
                            ((x7517
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7517 k)))))
                         (if x-cnd7516
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7518
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7518)))))))))
                   g7513)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7519
                     (letrec*
                      ((x7520
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7520)))))
                   g7519)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7521
                     (letrec*
                      ((x7523
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7523))))
                    (g7522
                     (letrec*
                      ((x-cnd7524
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7524
                        ""
                        (letrec*
                         ((x7527
                           (letrec*
                            ((x7528
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7528))))
                          (x7525
                           (letrec*
                            ((x7526
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7526)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7527 x7525)))))))
                   g7522)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7529
                     (letrec*
                      ((x7532
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7532))))
                    (g7530
                     (letrec*
                      ((x7533
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7533))))
                    (g7531
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7534
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7534))))
                   g7531)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7535
                     (letrec*
                      ((x7536
                        (letrec*
                         ((x7537
                           (letrec*
                            ((x7538
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7538)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7537)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7536)))))
                   g7535)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7539
                     (letrec*
                      ((x7542
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7542))))
                    (g7540
                     (letrec*
                      ((x7543
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7543))))
                    (g7541
                     (letrec*
                      ((x-cnd7544
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7544
                        x
                        (letrec*
                         ((x7546
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7545
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7546 x7545)))))))
                   g7541)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7547
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7547)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7548
                     (letrec*
                      ((x-cnd7549
                        (letrec*
                         ((x7550 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7550)))))
                      (if x-cnd7549
                        (letrec*
                         ((x7551 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7551)))
                        #f))))
                   g7548)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7552
                     (letrec*
                      ((x7554
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7554))))
                    (g7553
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7555
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7556 (if val7243 val7243 #f)))
                             g7556)))))
                       g7555))))
                   g7553)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7557
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7558
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7558 9)))))
                      (letrec*
                       ((g7559
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7560
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7560 10)))))
                            (letrec*
                             ((g7561
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7562
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7562 32))))))
                             g7561)))))
                       g7559))))
                   g7557)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7563
                     (letrec*
                      ((x7564
                        (letrec*
                         ((x7565
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7565)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7564)))))
                   g7563)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7566
                     (letrec*
                      ((x7568
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7568))))
                    (g7567
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7567)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7569 #f)) g7569)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7570
                     (letrec*
                      ((x7571
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7571)))))
                   g7570)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7572
                     (letrec*
                      ((x7574
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7574))))
                    (g7573
                     (letrec*
                      ((x-cnd7575
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7575
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7573)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7576
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7577
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7578
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7578
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7579
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7580
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7580
                                       (letrec*
                                        ((x-cnd7581
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7581
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7582
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7583
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7583
                                             (letrec*
                                              ((x-cnd7584
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7584
                                                (letrec*
                                                 ((x-cnd7585
                                                   (letrec*
                                                    ((x7587
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7586
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7587 x7586)))))
                                                 (if x-cnd7585
                                                   (letrec*
                                                    ((x7589
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7588
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7589 x7588)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7590
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7591
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7591
                                                (letrec*
                                                 ((x-cnd7592
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7592
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7593
                                                       (letrec*
                                                        ((x-cnd7594
                                                          (letrec*
                                                           ((x7595
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
                                                             (= x7595 n)))))
                                                        (if x-cnd7594
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7596
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
                                                                    ((g7597
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7598
                                                                           (letrec*
                                                                            ((x7600
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
                                                                             (x7599
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
                                                                               x7600
                                                                               x7599)))))
                                                                         (if x-cnd7598
                                                                           (letrec*
                                                                            ((x7601
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
                                                                               x7601)))
                                                                           #f)))))
                                                                    g7597))))
                                                                g7596))))
                                                           (letrec*
                                                            ((g7602
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7602))
                                                          #f))))
                                                     g7593))
                                                   #f))
                                                #f)))))
                                         g7590)))))
                                   g7582)))))
                             g7579)))))
                       g7577))))
                   g7576)))
               (cdaaar
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
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7606)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7605)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7604)))))
                   g7603)))
               (caaddr
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
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7610)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7609)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7608)))))
                   g7607)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7611
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7611)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7614))))
                    (g7613
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7615
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7616 (if val7252 val7252 #f)))
                             g7616)))))
                       g7615))))
                   g7613)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7620))))
                    (g7618
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7621))))
                    (g7619
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
                       ((g7622
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7623 res))
                       g7623))))
                   g7619)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7624
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7624)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7628))))
                    (g7626
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7629))))
                    (g7627
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7630
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7630))))
                   g7627)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7632
                        (letrec*
                         ((x7633
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7633)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7632)))))
                   g7631)))
               (cdaddr
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
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7637)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7636)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7635)))))
                   g7634)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7639
                        (letrec*
                         ((x7640
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7640)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7639)))))
                   g7638)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7642
                        (letrec*
                         ((x7643
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7643)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7642)))))
                   g7641)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7648))))
                    (g7646
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7649)))))
                   g7646)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7653)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7652)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7651)))))
                   g7650)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7656))))
                    (g7655
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7655)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7657
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7657)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x7659
                        (letrec*
                         ((x7660
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7660)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7659)))))
                   g7658)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7661
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7661)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7664))))
                    (g7663
                     (letrec*
                      ((x-cnd7665
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7665
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7668
                           (letrec*
                            ((x7669
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7669))))
                          (x7666
                           (letrec*
                            ((x7667
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7667)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7668 x7666)))))))
                   g7663)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((x7671
                        (letrec*
                         ((x7672
                           (letrec*
                            ((x7673
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7673)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7672)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7671)))))
                   g7670)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x7675
                        (letrec*
                         ((x7676
                           (letrec*
                            ((x7677
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7677)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7676)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7675)))))
                   g7674)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((x7680
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7680))))
                    (g7679
                     (letrec*
                      ((x7681
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7681)))))
                   g7679)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7682
                     (letrec*
                      ((x7683
                        (letrec*
                         ((x7684
                           (letrec*
                            ((x7685
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7685)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7684)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7683)))))
                   g7682)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7686
                     (letrec*
                      ((x7689
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7689))))
                    (g7687
                     (letrec*
                      ((x7690
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7690))))
                    (g7688
                     (letrec*
                      ((x-cnd7691
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7691
                        (letrec*
                         ((g7692
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7692)
                        (letrec*
                         ((x-cnd7693
                           (letrec*
                            ((x7694
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7694)))))
                         (if x-cnd7693
                           (letrec*
                            ((g7695
                              (letrec*
                               ((x7696
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7696)))))
                            g7695)
                           (letrec*
                            ((x-cnd7697
                              (letrec*
                               ((x7698
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7698)))))
                            (if x-cnd7697
                              (letrec*
                               ((g7699
                                 (letrec*
                                  ((x7701
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7700
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7701 x7700)))))
                               g7699)
                              (letrec*
                               ((x-cnd7702
                                 (letrec*
                                  ((x7703
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7703)))))
                               (if x-cnd7702
                                 (letrec*
                                  ((g7704
                                    (letrec*
                                     ((x7707
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7706
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7705
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7707 x7706 x7705)))))
                                  g7704)
                                 (letrec*
                                  ((x-cnd7708
                                    (letrec*
                                     ((x7709
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7709)))))
                                  (if x-cnd7708
                                    (letrec*
                                     ((g7710
                                       (letrec*
                                        ((x7714
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7713
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7712
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7711
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7714 x7713 x7712 x7711)))))
                                     g7710)
                                    (letrec*
                                     ((x-cnd7715
                                       (letrec*
                                        ((x7716
                                          (letrec*
                                           ((x7717
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7717)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7716)))))
                                     (if x-cnd7715
                                       (letrec*
                                        ((g7718
                                          (letrec*
                                           ((x7724
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7723
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7722
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7721
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7719
                                             (letrec*
                                              ((x7720
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7720)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7724
                                              x7723
                                              x7722
                                              x7721
                                              x7719)))))
                                        g7718)
                                       (letrec*
                                        ((x-cnd7725
                                          (letrec*
                                           ((x7726
                                             (letrec*
                                              ((x7727
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x7727)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x7726)))))
                                        (if x-cnd7725
                                          (letrec*
                                           ((g7728
                                             (letrec*
                                              ((x7736
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7735
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7734
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7733
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7731
                                                (letrec*
                                                 ((x7732
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x7732))))
                                               (x7729
                                                (letrec*
                                                 ((x7730
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x7730)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x7736
                                                 x7735
                                                 x7734
                                                 x7733
                                                 x7731
                                                 x7729)))))
                                           g7728)
                                          (letrec*
                                           ((x-cnd7737
                                             (letrec*
                                              ((x7738
                                                (letrec*
                                                 ((x7739
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x7739)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x7738)))))
                                           (if x-cnd7737
                                             (letrec*
                                              ((g7740
                                                (letrec*
                                                 ((x7750
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7749
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7748
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7747
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7745
                                                   (letrec*
                                                    ((x7746
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x7746))))
                                                  (x7743
                                                   (letrec*
                                                    ((x7744
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x7744))))
                                                  (x7741
                                                   (letrec*
                                                    ((x7742
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x7742)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x7750
                                                    x7749
                                                    x7748
                                                    x7747
                                                    x7745
                                                    x7743
                                                    x7741)))))
                                              g7740)
                                             (letrec*
                                              ((g7751
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7751)))))))))))))))))))
                   g7688)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x7754))))
                    (g7753
                     (letrec*
                      ((x-cnd7755
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7755
                        #f
                        (letrec*
                         ((x-cnd7756
                           (letrec*
                            ((x7757
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x7757 e)))))
                         (if x-cnd7756
                           l
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x7758)))))))))
                   g7753)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7760
                        (letrec*
                         ((x7761
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x7762)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x7761)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x7760)))))
                   g7759)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7764
                        (letrec*
                         ((x7765
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x7766)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x7765)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x7764)))))
                   g7763)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7767
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g7767)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x7770))))
                    (g7769
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g7769)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7772
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7772))))
                   g7771)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x7774)))))
                   g7773)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7776
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7776
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x7777)))
                           #f))))
                      (letrec*
                       ((g7778
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g7778))))
                   g7775)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7780
                        (letrec*
                         ((x7781
                           (letrec*
                            ((x7782
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x7782)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x7781)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x7780)))))
                   g7779)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x-cnd7784
                        (letrec*
                         ((x7785 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x7785 c)))))
                      (if x-cnd7784
                        (letrec*
                         ((x7786 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x7786)))
                        #f))))
                   g7783)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x7789))))
                    (g7788
                     (letrec*
                      ((x-cnd7790
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7790
                        #f
                        (letrec*
                         ((x-cnd7791
                           (letrec*
                            ((x7792
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x7792 k)))))
                         (if x-cnd7791
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7793
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x7793)))))))))
                   g7788)))
               (not (lambda (x) (letrec* ((g7794 (if x #f #t))) g7794)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7795
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g7795)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x7798))))
                    (g7797
                     (letrec*
                      ((x-cnd7799
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7799
                        #f
                        (letrec*
                         ((x-cnd7800
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x7801 e)))))
                         (if x-cnd7800
                           l
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x7802)))))))))
                   g7797)))
               (cadaar
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
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x7806)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x7805)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x7804)))))
                   g7803)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x7809))))
                    (g7808
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7810
                             (letrec*
                              ((x-cnd7811
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7811
                                0
                                (letrec*
                                 ((x7812
                                   (letrec*
                                    ((x7813
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x7813)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x7812)))))))
                           g7810))))
                      (letrec*
                       ((g7814
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g7814))))
                   g7808)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7818))))
                    (g7816
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x7819))))
                    (g7817
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7820
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7820))))
                   g7817)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7821
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x7822)))))
                   g7821)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7823
                     (letrec*
                      ((x7824
                        (letrec*
                         ((x7825
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x7825)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x7824)))))
                   g7823)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7826
                     (letrec*
                      ((x7828
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x7828))))
                    (g7827
                     (letrec*
                      ((x-cnd7829
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7829
                        #f
                        (letrec*
                         ((x-cnd7830
                           (letrec*
                            ((x7831
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x7831 k)))))
                         (if x-cnd7830
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7832
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x7832)))))))))
                   g7827)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7833
                     (letrec*
                      ((x7834
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x7834)))))
                   g7833)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((x7838
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x7839))))
                    (g7837
                     (letrec*
                      ((x7840
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x7840)))))
                   g7837)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7842
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7842))))
                   g7841)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x7846))))
                    (g7844
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x7847))))
                    (g7845
                     (letrec*
                      ((x-cnd7848
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7848
                        #t
                        (letrec*
                         ((x-cnd7849
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7849
                           (letrec*
                            ((g7850
                              (letrec*
                               ((x7852
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x7852))))
                             (g7851
                              (letrec*
                               ((x7853
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x7853)))))
                            g7851)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g7845)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7854
                     (letrec*
                      ((x7856
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x7856))))
                    (g7855
                     (letrec*
                      ((x-cnd7857
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7857
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7855)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7858
                     (letrec*
                      ((x7861
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7861))))
                    (g7859
                     (letrec*
                      ((x7862
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x7862))))
                    (g7860
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7863
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7863))))
                   g7860)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x7865
                        (letrec*
                         ((x7866
                           (letrec*
                            ((x7867
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x7867)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x7866)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x7865)))))
                   g7864)))
               (newline (lambda () (letrec* ((g7868 #f)) g7868)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x7871
                        (letrec*
                         ((x7872
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x7872))))
                       (x7870
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x7871 x7870)))))
                   g7869)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x7875
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x7875))))
                    (g7874
                     (letrec*
                      ((x7876
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x7876)))))
                   g7874)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x7881
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x7881))))
                    (g7878
                     (letrec*
                      ((x7882
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x7882))))
                    (g7879
                     (letrec*
                      ((x7883
                        (letrec*
                         ((x7884
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x7884)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x7883))))
                    (g7880
                     (letrec*
                      ((x-cnd7885
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7885
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7887
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x7886
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x7887 x7886)))))))
                   g7880)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x-cnd7889
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7889
                        a
                        (letrec*
                         ((x7890
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x7890)))))))
                   g7888)))
               (recursive-div2
                (lambda (l)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((x-cnd7892
                        (begin
                          (write '(funapp 1476 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7892
                        empty
                        (letrec*
                         ((x7896
                           (begin
                             (write '(funapp 1480 34))
                             (display "\n")
                             (car l)))
                          (x7893
                           (letrec*
                            ((x7894
                              (letrec*
                               ((x7895
                                 (begin
                                   (write '(funapp 1483 54))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1483 64))
                                 (display "\n")
                                 (cdr x7895)))))
                            (begin
                              (write '(funapp 1484 29))
                              (display "\n")
                              (recursive-div2 x7894)))))
                         (begin
                           (write '(funapp 1485 26))
                           (display "\n")
                           (cons x7896 x7893)))))))
                   g7891)))
               (even-list/c
                (lambda (g7349 g7350 g7351)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((x-cnd7898
                        (begin
                          (write '(funapp 1493 25))
                          (display "\n")
                          ((lambda ()
                             (letrec*
                              ((g7899
                                (letrec*
                                 ((x7900
                                   (letrec*
                                    ((x7901
                                      (begin
                                        (write '(funapp 1499 43))
                                        (display "\n")
                                        (cons/c any/c even-list/c))))
                                    (begin
                                      (write '(funapp 1500 35))
                                      (display "\n")
                                      (cons/c any/c x7901)))))
                                 (begin
                                   (write '(funapp 1501 32))
                                   (display "\n")
                                   (or/c null? x7900)))))
                              g7899))
                           g7351))))
                      (if x-cnd7898
                        g7351
                        (begin
                          (write '(blame g7349 1506 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7349)))))))
                   g7897))))
              (letrec*
               ((g7902
                 (letrec*
                  ((x7904
                    (letrec*
                     ((xj7352
                       (begin
                         (write '(funapp 1518 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1518 35))
                            (display "\n")
                            'module))))
                      (xk7353
                       (begin
                         (write '(funapp 1518 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1518 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g7905
                        (begin
                          (write '(funapp 1521 25))
                          (display "\n")
                          ((lambda (j7355 k7356 f7357)
                             (letrec*
                              ((g7906
                                (lambda (g7354)
                                  (letrec*
                                   ((g7907
                                     (letrec*
                                      ((x7911
                                        (begin
                                          (write '(funapp 1528 45))
                                          (display "\n")
                                          (listof any/c)))
                                       (x7908
                                        (letrec*
                                         ((x7909
                                           (letrec*
                                            ((x7910
                                              (begin
                                                (write '(funapp 1533 51))
                                                (display "\n")
                                                (even-list/c))))
                                            (begin
                                              (write '(funapp 1534 43))
                                              (display "\n")
                                              (x7910 j7355 k7356 g7354)))))
                                         (begin
                                           (write '(funapp 1535 40))
                                           (display "\n")
                                           (f7357 x7909)))))
                                      (begin
                                        (write '(funapp 1536 37))
                                        (display "\n")
                                        (x7911 j7355 k7356 x7908)))))
                                   g7907))))
                              g7906))
                           xj7352
                           xk7353
                           recursive-div2))))
                      g7905)))
                   (x7903 (input)))
                  (begin
                    (write '(funapp 1544 19))
                    (display "\n")
                    (x7904 x7903)))))
               g7902))))
           g7371))))
       g7369)))
    g7368)))
