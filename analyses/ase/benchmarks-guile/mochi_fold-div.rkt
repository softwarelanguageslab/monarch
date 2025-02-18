(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7360 #t)) g7360)))
    (meta (lambda (v) (letrec* ((g7361 v)) g7361)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7362
          (letrec*
           ((g7363
             (letrec*
              ((x-e7364 lst))
              (letrec*
               ((v1742 x-e7364))
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
                   ((x-cnd7365
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7365
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
           g7363)))
        g7362)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7366 (lambda (v) (letrec* ((g7367 v)) g7367)))) g7366)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7368
          (letrec*
           ((x7369 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7369)))))
        g7368))))
   (letrec*
    ((g7370
      (letrec*
       ((g7371
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
           ((g7372 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7373
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7374
                     (lambda (k j lst)
                       (letrec*
                        ((g7375
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7376
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7376))
                             lst))))
                        g7375))))
                   g7374)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7377
                     (letrec*
                      ((x-cnd7378
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7378
                        g7261
                        (begin
                          (write '(blame g7259 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7377)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7379
                     (letrec*
                      ((x-cnd7380
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7380
                        g7264
                        (begin
                          (write '(blame g7262 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7379)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7381
                     (letrec*
                      ((x-cnd7382
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7382
                        g7267
                        (begin
                          (write '(blame g7265 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7381)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7383
                     (letrec*
                      ((x-cnd7384
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7385 #t)) g7385)) g7270))))
                      (if x-cnd7384
                        g7270
                        (begin
                          (write '(blame g7268 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7383)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7386
                     (letrec*
                      ((x-cnd7387
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7388 #t)) g7388)) g7273))))
                      (if x-cnd7387
                        g7273
                        (begin
                          (write '(blame g7271 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7386)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7389
                     (letrec*
                      ((x-cnd7390
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7390
                        g7276
                        (begin
                          (write '(blame g7274 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7389)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7391
                     (letrec*
                      ((x-cnd7392
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7392
                        g7279
                        (begin
                          (write '(blame g7277 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7391)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7393
                     (letrec*
                      ((x-cnd7394
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7394
                        g7282
                        (begin
                          (write '(blame g7280 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7393)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7395
                     (letrec*
                      ((x-cnd7396
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7396
                        g7285
                        (begin
                          (write '(blame g7283 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7395)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7397
                     (lambda (k j v)
                       (letrec*
                        ((g7398
                          (letrec*
                           ((x-cnd7399
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7399
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7398))))
                   g7397)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7400
                     (lambda (k j v)
                       (letrec*
                        ((g7401
                          (letrec*
                           ((x-cnd7402
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7402
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7406
                                (letrec*
                                 ((x7407
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7407))))
                               (x7403
                                (letrec*
                                 ((x7405
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7404
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7405 k j x7404)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7406 x7403)))))))
                        g7401))))
                   g7400)))
               (any? (lambda (v) (letrec* ((g7408 #t)) g7408)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7409
                     (letrec*
                      ((x7410
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7410)))))
                   g7409)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7411
                     (letrec*
                      ((x-cnd7412
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7413
                                (letrec*
                                 ((x7414
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7414)))))
                              g7413))
                           g7288))))
                      (if x-cnd7412
                        g7288
                        (begin
                          (write '(blame g7286 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7411)))
               (meta (lambda (v) (letrec* ((g7415 v)) g7415)))
               (+
                (letrec*
                 ((xj7289
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7416
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7293 k7294 f7295)
                         (letrec*
                          ((g7418
                            (lambda (g7291 g7292)
                              (letrec*
                               ((g7419
                                 (letrec*
                                  ((x7420
                                    (letrec*
                                     ((x7422
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7421
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7295 x7422 x7421)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7293 k7294 x7420)))))
                               g7419))))
                          g7418))
                       xj7289
                       xk7290
                       (lambda (a b)
                         (letrec*
                          ((g7417
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7417))))))
                  g7416)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7423
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7300 k7301 f7302)
                         (letrec*
                          ((g7425
                            (lambda (g7298 g7299)
                              (letrec*
                               ((g7426
                                 (letrec*
                                  ((x7427
                                    (letrec*
                                     ((x7429
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7428
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7302 x7429 x7428)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7300 k7301 x7427)))))
                               g7426))))
                          g7425))
                       xj7296
                       xk7297
                       (lambda (a b)
                         (letrec*
                          ((g7424
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7424))))))
                  g7423)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7430
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7307 k7308 f7309)
                         (letrec*
                          ((g7432
                            (lambda (g7305 g7306)
                              (letrec*
                               ((g7433
                                 (letrec*
                                  ((x7434
                                    (letrec*
                                     ((x7436
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7435
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7309 x7436 x7435)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7307 k7308 x7434)))))
                               g7433))))
                          g7432))
                       xj7303
                       xk7304
                       (lambda (a b)
                         (letrec*
                          ((g7431
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7431))))))
                  g7430)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7437
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7439
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7440
                                 (letrec*
                                  ((x7441
                                    (letrec*
                                     ((x7443
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7442
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7316 x7443 x7442)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7441)))))
                               g7440))))
                          g7439))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7438
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7438))))))
                  g7437)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7444
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7446
                            (lambda (g7319)
                              (letrec*
                               ((g7447
                                 (letrec*
                                  ((x7448
                                    (letrec*
                                     ((x7449
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7322 x7449)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7320 k7321 x7448)))))
                               g7447))))
                          g7446))
                       xj7317
                       xk7318
                       (lambda (p)
                         (letrec*
                          ((g7445
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7445))))))
                  g7444)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7450
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7326 k7327 f7328)
                         (letrec*
                          ((g7452
                            (lambda (g7325)
                              (letrec*
                               ((g7453
                                 (letrec*
                                  ((x7454
                                    (letrec*
                                     ((x7455
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7328 x7455)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7326 k7327 x7454)))))
                               g7453))))
                          g7452))
                       xj7323
                       xk7324
                       (lambda (p)
                         (letrec*
                          ((g7451
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7451))))))
                  g7450)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7456
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7458
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7459
                                 (letrec*
                                  ((x7460
                                    (letrec*
                                     ((x7462
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7461
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7335 x7462 x7461)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7333 k7334 x7460)))))
                               g7459))))
                          g7458))
                       xj7329
                       xk7330
                       (lambda (a b)
                         (letrec*
                          ((g7457
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7457))))))
                  g7456)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7463
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7465
                            (lambda (g7338)
                              (letrec*
                               ((g7466
                                 (letrec*
                                  ((x7467
                                    (letrec*
                                     ((x7468
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7341 x7468)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7339 k7340 x7467)))))
                               g7466))))
                          g7465))
                       xj7336
                       xk7337
                       (lambda (v i)
                         (letrec*
                          ((g7464
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7464))))))
                  g7463)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7469
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7471
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7472
                                 (letrec*
                                  ((x7473
                                    (letrec*
                                     ((x7475
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7474
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7348 x7475 x7474)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7346 k7347 x7473)))))
                               g7472))))
                          g7471))
                       xj7342
                       xk7343
                       (lambda (vec i v)
                         (letrec*
                          ((g7470
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7470))))))
                  g7469)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7476
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7476)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7477
                     (letrec*
                      ((x7478
                        (letrec*
                         ((x7479
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7479)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7478)))))
                   g7477)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7480
                     (letrec*
                      ((x7483
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7483))))
                    (g7481
                     (letrec*
                      ((x7484
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7484))))
                    (g7482
                     (letrec*
                      ((x-cnd7485
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7485
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7488
                           (letrec*
                            ((x7489
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7489))))
                          (x7486
                           (letrec*
                            ((x7487
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7487)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7488 x7486)))))))
                   g7482)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7490
                     (letrec*
                      ((x7491
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7491)))))
                   g7490)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7492
                     (letrec*
                      ((x7493
                        (letrec*
                         ((x7494
                           (letrec*
                            ((x7495
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7495)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7494)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7493)))))
                   g7492)))
               (cdadar
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
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7499)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7498)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7497)))))
                   g7496)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7500
                     (letrec*
                      ((x7503
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7503))))
                    (g7501
                     (letrec*
                      ((x7504
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7504))))
                    (g7502
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
                       ((g7505
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7506 res))
                       g7506))))
                   g7502)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7507
                     (letrec*
                      ((x7508
                        (letrec*
                         ((x7509
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7509)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7508)))))
                   g7507)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7510
                     (letrec*
                      ((x7511
                        (letrec*
                         ((x7512
                           (letrec*
                            ((x7513
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7513)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7512)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7511)))))
                   g7510)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7514
                     (letrec*
                      ((x7516
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7516))))
                    (g7515
                     (letrec*
                      ((x-cnd7517
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7517
                        #f
                        (letrec*
                         ((x-cnd7518
                           (letrec*
                            ((x7519
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7519 k)))))
                         (if x-cnd7518
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7520
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7520)))))))))
                   g7515)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7521
                     (letrec*
                      ((x7522
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7522)))))
                   g7521)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7523
                     (letrec*
                      ((x7525
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7525))))
                    (g7524
                     (letrec*
                      ((x-cnd7526
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7526
                        ""
                        (letrec*
                         ((x7529
                           (letrec*
                            ((x7530
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7530))))
                          (x7527
                           (letrec*
                            ((x7528
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7528)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7529 x7527)))))))
                   g7524)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7531
                     (letrec*
                      ((x7534
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7534))))
                    (g7532
                     (letrec*
                      ((x7535
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7535))))
                    (g7533
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7536
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7536))))
                   g7533)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7537
                     (letrec*
                      ((x7538
                        (letrec*
                         ((x7539
                           (letrec*
                            ((x7540
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7540)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7539)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7538)))))
                   g7537)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7541
                     (letrec*
                      ((x7544
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7544))))
                    (g7542
                     (letrec*
                      ((x7545
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7545))))
                    (g7543
                     (letrec*
                      ((x-cnd7546
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7546
                        x
                        (letrec*
                         ((x7548
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7547
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7548 x7547)))))))
                   g7543)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7549
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7549)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7550
                     (letrec*
                      ((x-cnd7551
                        (letrec*
                         ((x7552 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7552)))))
                      (if x-cnd7551
                        (letrec*
                         ((x7553 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7553)))
                        #f))))
                   g7550)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7554
                     (letrec*
                      ((x7556
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7556))))
                    (g7555
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7557
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7558 (if val7243 val7243 #f)))
                             g7558)))))
                       g7557))))
                   g7555)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7559
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7560
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7560 9)))))
                      (letrec*
                       ((g7561
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7562
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7562 10)))))
                            (letrec*
                             ((g7563
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7564
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7564 32))))))
                             g7563)))))
                       g7561))))
                   g7559)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7565
                     (letrec*
                      ((x7566
                        (letrec*
                         ((x7567
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7567)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7566)))))
                   g7565)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7568
                     (letrec*
                      ((x7570
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7570))))
                    (g7569
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7569)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7571 #f)) g7571)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7572
                     (letrec*
                      ((x7573
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7573)))))
                   g7572)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7574
                     (letrec*
                      ((x7576
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7576))))
                    (g7575
                     (letrec*
                      ((x-cnd7577
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7577
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7575)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7578
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7579
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7580
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7580
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7581
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7582
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7582
                                       (letrec*
                                        ((x-cnd7583
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7583
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7584
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7585
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7585
                                             (letrec*
                                              ((x-cnd7586
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7586
                                                (letrec*
                                                 ((x-cnd7587
                                                   (letrec*
                                                    ((x7589
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7588
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7589 x7588)))))
                                                 (if x-cnd7587
                                                   (letrec*
                                                    ((x7591
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7590
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7591 x7590)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7592
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7593
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7593
                                                (letrec*
                                                 ((x-cnd7594
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7594
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7595
                                                       (letrec*
                                                        ((x-cnd7596
                                                          (letrec*
                                                           ((x7597
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
                                                             (= x7597 n)))))
                                                        (if x-cnd7596
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7598
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
                                                                    ((g7599
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7600
                                                                           (letrec*
                                                                            ((x7602
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
                                                                             (x7601
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
                                                                               x7602
                                                                               x7601)))))
                                                                         (if x-cnd7600
                                                                           (letrec*
                                                                            ((x7603
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
                                                                               x7603)))
                                                                           #f)))))
                                                                    g7599))))
                                                                g7598))))
                                                           (letrec*
                                                            ((g7604
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7604))
                                                          #f))))
                                                     g7595))
                                                   #f))
                                                #f)))))
                                         g7592)))))
                                   g7584)))))
                             g7581)))))
                       g7579))))
                   g7578)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7606
                        (letrec*
                         ((x7607
                           (letrec*
                            ((x7608
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7608)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7607)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7606)))))
                   g7605)))
               (caaddr
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
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7612)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7611)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7610)))))
                   g7609)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7613
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7613)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7616))))
                    (g7615
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7617
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7618 (if val7252 val7252 #f)))
                             g7618)))))
                       g7617))))
                   g7615)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7622))))
                    (g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7623))))
                    (g7621
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
                       ((g7624
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7625 res))
                       g7625))))
                   g7621)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7626
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7626)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7630))))
                    (g7628
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7631))))
                    (g7629
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7632
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7632))))
                   g7629)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7634
                        (letrec*
                         ((x7635
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7635)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7634)))))
                   g7633)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7637
                        (letrec*
                         ((x7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7639)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7638)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7637)))))
                   g7636)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7641
                        (letrec*
                         ((x7642
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7642)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7641)))))
                   g7640)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7644
                        (letrec*
                         ((x7645
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7645)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7644)))))
                   g7643)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7649))))
                    (g7647
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7650))))
                    (g7648
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7651)))))
                   g7648)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x7653
                        (letrec*
                         ((x7654
                           (letrec*
                            ((x7655
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7655)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7654)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7653)))))
                   g7652)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7658))))
                    (g7657
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7657)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7659
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7659)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7661
                        (letrec*
                         ((x7662
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7662)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7661)))))
                   g7660)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7663
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7663)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x7666
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7666))))
                    (g7665
                     (letrec*
                      ((x-cnd7667
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7667
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7670
                           (letrec*
                            ((x7671
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7671))))
                          (x7668
                           (letrec*
                            ((x7669
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7669)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7670 x7668)))))))
                   g7665)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7672
                     (letrec*
                      ((x7673
                        (letrec*
                         ((x7674
                           (letrec*
                            ((x7675
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7675)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7674)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7673)))))
                   g7672)))
               (cddadr
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
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7679)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7678)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7677)))))
                   g7676)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x7682
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7682))))
                    (g7681
                     (letrec*
                      ((x7683
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7683)))))
                   g7681)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((x7685
                        (letrec*
                         ((x7686
                           (letrec*
                            ((x7687
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7687)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7686)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7685)))))
                   g7684)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7688
                     (letrec*
                      ((x7691
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7691))))
                    (g7689
                     (letrec*
                      ((x7692
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7692))))
                    (g7690
                     (letrec*
                      ((x-cnd7693
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7693
                        (letrec*
                         ((g7694
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7694)
                        (letrec*
                         ((x-cnd7695
                           (letrec*
                            ((x7696
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7696)))))
                         (if x-cnd7695
                           (letrec*
                            ((g7697
                              (letrec*
                               ((x7698
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7698)))))
                            g7697)
                           (letrec*
                            ((x-cnd7699
                              (letrec*
                               ((x7700
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7700)))))
                            (if x-cnd7699
                              (letrec*
                               ((g7701
                                 (letrec*
                                  ((x7703
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7702
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7703 x7702)))))
                               g7701)
                              (letrec*
                               ((x-cnd7704
                                 (letrec*
                                  ((x7705
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7705)))))
                               (if x-cnd7704
                                 (letrec*
                                  ((g7706
                                    (letrec*
                                     ((x7709
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7708
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7707
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7709 x7708 x7707)))))
                                  g7706)
                                 (letrec*
                                  ((x-cnd7710
                                    (letrec*
                                     ((x7711
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7711)))))
                                  (if x-cnd7710
                                    (letrec*
                                     ((g7712
                                       (letrec*
                                        ((x7716
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7715
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7714
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7713
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7716 x7715 x7714 x7713)))))
                                     g7712)
                                    (letrec*
                                     ((x-cnd7717
                                       (letrec*
                                        ((x7718
                                          (letrec*
                                           ((x7719
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7719)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7718)))))
                                     (if x-cnd7717
                                       (letrec*
                                        ((g7720
                                          (letrec*
                                           ((x7726
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7725
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7724
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7723
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7721
                                             (letrec*
                                              ((x7722
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7722)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7726
                                              x7725
                                              x7724
                                              x7723
                                              x7721)))))
                                        g7720)
                                       (letrec*
                                        ((x-cnd7727
                                          (letrec*
                                           ((x7728
                                             (letrec*
                                              ((x7729
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x7729)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x7728)))))
                                        (if x-cnd7727
                                          (letrec*
                                           ((g7730
                                             (letrec*
                                              ((x7738
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7737
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7736
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7735
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7733
                                                (letrec*
                                                 ((x7734
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x7734))))
                                               (x7731
                                                (letrec*
                                                 ((x7732
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x7732)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x7738
                                                 x7737
                                                 x7736
                                                 x7735
                                                 x7733
                                                 x7731)))))
                                           g7730)
                                          (letrec*
                                           ((x-cnd7739
                                             (letrec*
                                              ((x7740
                                                (letrec*
                                                 ((x7741
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x7741)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x7740)))))
                                           (if x-cnd7739
                                             (letrec*
                                              ((g7742
                                                (letrec*
                                                 ((x7752
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7751
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7750
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7749
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7747
                                                   (letrec*
                                                    ((x7748
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x7748))))
                                                  (x7745
                                                   (letrec*
                                                    ((x7746
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x7746))))
                                                  (x7743
                                                   (letrec*
                                                    ((x7744
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x7744)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x7752
                                                    x7751
                                                    x7750
                                                    x7749
                                                    x7747
                                                    x7745
                                                    x7743)))))
                                              g7742)
                                             (letrec*
                                              ((g7753
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7753)))))))))))))))))))
                   g7690)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x7756))))
                    (g7755
                     (letrec*
                      ((x-cnd7757
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7757
                        #f
                        (letrec*
                         ((x-cnd7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x7759 e)))))
                         (if x-cnd7758
                           l
                           (letrec*
                            ((x7760
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x7760)))))))))
                   g7755)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7762
                        (letrec*
                         ((x7763
                           (letrec*
                            ((x7764
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x7764)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x7763)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x7762)))))
                   g7761)))
               (cadddr
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
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x7768)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x7767)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x7766)))))
                   g7765)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7769
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g7769)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x7772))))
                    (g7771
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g7771)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7774
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7774))))
                   g7773)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x7776)))))
                   g7775)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7778
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7778
                           (letrec*
                            ((x7779
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x7779)))
                           #f))))
                      (letrec*
                       ((g7780
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g7780))))
                   g7777)))
               (cddaar
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
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x7784)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x7783)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x7782)))))
                   g7781)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x-cnd7786
                        (letrec*
                         ((x7787 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x7787 c)))))
                      (if x-cnd7786
                        (letrec*
                         ((x7788 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x7788)))
                        #f))))
                   g7785)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x7791))))
                    (g7790
                     (letrec*
                      ((x-cnd7792
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7792
                        #f
                        (letrec*
                         ((x-cnd7793
                           (letrec*
                            ((x7794
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x7794 k)))))
                         (if x-cnd7793
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7795
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x7795)))))))))
                   g7790)))
               (not (lambda (x) (letrec* ((g7796 (if x #f #t))) g7796)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7797
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g7797)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x7800))))
                    (g7799
                     (letrec*
                      ((x-cnd7801
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7801
                        #f
                        (letrec*
                         ((x-cnd7802
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x7803 e)))))
                         (if x-cnd7802
                           l
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x7804)))))))))
                   g7799)))
               (cadaar
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
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x7808)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x7807)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x7806)))))
                   g7805)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x7811))))
                    (g7810
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7812
                             (letrec*
                              ((x-cnd7813
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7813
                                0
                                (letrec*
                                 ((x7814
                                   (letrec*
                                    ((x7815
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x7815)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x7814)))))))
                           g7812))))
                      (letrec*
                       ((g7816
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g7816))))
                   g7810)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7820))))
                    (g7818
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x7821))))
                    (g7819
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7822
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7822))))
                   g7819)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7823
                     (letrec*
                      ((x7824
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x7824)))))
                   g7823)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7825
                     (letrec*
                      ((x7826
                        (letrec*
                         ((x7827
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x7827)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x7826)))))
                   g7825)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7828
                     (letrec*
                      ((x7830
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x7830))))
                    (g7829
                     (letrec*
                      ((x-cnd7831
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7831
                        #f
                        (letrec*
                         ((x-cnd7832
                           (letrec*
                            ((x7833
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x7833 k)))))
                         (if x-cnd7832
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7834
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x7834)))))))))
                   g7829)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((x7836
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x7836)))))
                   g7835)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((x7840
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7840))))
                    (g7838
                     (letrec*
                      ((x7841
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x7841))))
                    (g7839
                     (letrec*
                      ((x7842
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x7842)))))
                   g7839)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7844
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7844))))
                   g7843)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7845
                     (letrec*
                      ((x7848
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x7848))))
                    (g7846
                     (letrec*
                      ((x7849
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x7849))))
                    (g7847
                     (letrec*
                      ((x-cnd7850
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7850
                        #t
                        (letrec*
                         ((x-cnd7851
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7851
                           (letrec*
                            ((g7852
                              (letrec*
                               ((x7854
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x7854))))
                             (g7853
                              (letrec*
                               ((x7855
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x7855)))))
                            g7853)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g7847)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x7858))))
                    (g7857
                     (letrec*
                      ((x-cnd7859
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7859
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7857)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7860
                     (letrec*
                      ((x7863
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7863))))
                    (g7861
                     (letrec*
                      ((x7864
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x7864))))
                    (g7862
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7865
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7865))))
                   g7862)))
               (caddar
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
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x7869)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x7868)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x7867)))))
                   g7866)))
               (newline (lambda () (letrec* ((g7870 #f)) g7870)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x7873
                        (letrec*
                         ((x7874
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x7874))))
                       (x7872
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x7873 x7872)))))
                   g7871)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7877
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x7877))))
                    (g7876
                     (letrec*
                      ((x7878
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x7878)))))
                   g7876)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7883
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x7883))))
                    (g7880
                     (letrec*
                      ((x7884
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x7884))))
                    (g7881
                     (letrec*
                      ((x7885
                        (letrec*
                         ((x7886
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x7886)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x7885))))
                    (g7882
                     (letrec*
                      ((x-cnd7887
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7887
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7889
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x7888
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x7889 x7888)))))))
                   g7882)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((x-cnd7891
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7891
                        a
                        (letrec*
                         ((x7892
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x7892)))))))
                   g7890)))
               (foldl
                (lambda (f z l)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x-cnd7894
                        (begin
                          (write '(funapp 1476 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7894
                        z
                        (letrec*
                         ((x7896
                           (letrec*
                            ((x7897
                              (begin
                                (write '(funapp 1480 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1480 61))
                              (display "\n")
                              (f z x7897))))
                          (x7895
                           (begin
                             (write '(funapp 1481 34))
                             (display "\n")
                             (cdr l))))
                         (begin
                           (write '(funapp 1482 26))
                           (display "\n")
                           (foldl f x7896 x7895)))))))
                   g7893)))
               (randpos
                (lambda (rand)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((n
                        (begin
                          (write '(funapp 1489 27))
                          (display "\n")
                          (rand))))
                      (letrec*
                       ((g7899
                         (letrec*
                          ((x-cnd7900
                            (begin
                              (write '(funapp 1493 39))
                              (display "\n")
                              (> n 0))))
                          (if x-cnd7900
                            n
                            (begin
                              (write '(funapp 1494 43))
                              (display "\n")
                              (randpos rand))))))
                       g7899))))
                   g7898)))
               (mk-list
                (lambda (rand n)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x-cnd7902
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd7902
                        empty
                        (letrec*
                         ((x7905
                           (begin
                             (write '(funapp 1506 34))
                             (display "\n")
                             (randpos rand)))
                          (x7903
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 1508 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1508 55))
                              (display "\n")
                              (mk-list rand x7904)))))
                         (begin
                           (write '(funapp 1509 26))
                           (display "\n")
                           (cons x7905 x7903)))))))
                   g7901)))
               (main
                (lambda (rand n m)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((x7907
                        (begin
                          (write '(funapp 1515 39))
                          (display "\n")
                          (mk-list rand n))))
                      (begin
                        (write '(funapp 1515 58))
                        (display "\n")
                        (foldl / m x7907)))))
                   g7906))))
              (letrec*
               ((g7908
                 (letrec*
                  ((x7912
                    (letrec*
                     ((xj7349
                       (begin
                         (write '(funapp 1522 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1522 35))
                            (display "\n")
                            'module))))
                      (xk7350
                       (begin
                         (write '(funapp 1522 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1522 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g7913
                        (begin
                          (write '(funapp 1525 25))
                          (display "\n")
                          ((lambda (j7354 k7355 f7356)
                             (letrec*
                              ((g7914
                                (lambda (g7351 g7352 g7353)
                                  (letrec*
                                   ((g7915
                                     (letrec*
                                      ((x7916
                                        (letrec*
                                         ((x7919
                                           (begin
                                             (write '(funapp 1535 42))
                                             (display "\n")
                                             ((lambda (j7357 k7358 f7359)
                                                (letrec*
                                                 ((g7920
                                                   (lambda ()
                                                     (letrec*
                                                      ((g7921
                                                        (letrec*
                                                         ((x7922
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                1542
                                                                62))
                                                             (display "\n")
                                                             (f7359))))
                                                         (begin
                                                           (write
                                                            '(funapp 1543 54))
                                                           (display "\n")
                                                           (integer?/c
                                                            j7357
                                                            k7358
                                                            x7922)))))
                                                      g7921))))
                                                 g7920))
                                              j7354
                                              k7355
                                              g7351)))
                                          (x7918
                                           (begin
                                             (write '(funapp 1552 48))
                                             (display "\n")
                                             (integer?/c j7354 k7355 g7352)))
                                          (x7917
                                           (begin
                                             (write '(funapp 1553 48))
                                             (display "\n")
                                             (integer?/c j7354 k7355 g7353))))
                                         (begin
                                           (write '(funapp 1554 40))
                                           (display "\n")
                                           (f7356 x7919 x7918 x7917)))))
                                      (begin
                                        (write '(funapp 1555 37))
                                        (display "\n")
                                        (real?/c j7354 k7355 x7916)))))
                                   g7915))))
                              g7914))
                           xj7349
                           xk7350
                           main))))
                      g7913)))
                   (x7911 (input))
                   (x7910 (input))
                   (x7909 (input)))
                  (begin
                    (write '(funapp 1565 19))
                    (display "\n")
                    (x7912 x7911 x7910 x7909)))))
               g7908))))
           g7373))))
       g7371)))
    g7370)))
