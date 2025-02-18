(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7366 #t)) g7366)))
    (meta (lambda (v) (letrec* ((g7367 v)) g7367)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7368
          (letrec*
           ((g7369
             (letrec*
              ((x-e7370 lst))
              (letrec*
               ((v1742 x-e7370))
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
                   ((x-cnd7371
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7371
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
           g7369)))
        g7368)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7372 (lambda (v) (letrec* ((g7373 v)) g7373)))) g7372)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7374
          (letrec*
           ((x7375 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7375)))))
        g7374))))
   (letrec*
    ((g7376
      (letrec*
       ((g7377
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
           ((g7378 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7379
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7380
                     (lambda (k j lst)
                       (letrec*
                        ((g7381
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7382
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7382))
                             lst))))
                        g7381))))
                   g7380)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7383
                     (letrec*
                      ((x-cnd7384
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7384
                        g7261
                        (begin
                          (write '(blame g7259 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7383)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7385
                     (letrec*
                      ((x-cnd7386
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7386
                        g7264
                        (begin
                          (write '(blame g7262 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7385)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7387
                     (letrec*
                      ((x-cnd7388
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7388
                        g7267
                        (begin
                          (write '(blame g7265 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7387)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7389
                     (letrec*
                      ((x-cnd7390
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7391 #t)) g7391)) g7270))))
                      (if x-cnd7390
                        g7270
                        (begin
                          (write '(blame g7268 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7389)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7392
                     (letrec*
                      ((x-cnd7393
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7394 #t)) g7394)) g7273))))
                      (if x-cnd7393
                        g7273
                        (begin
                          (write '(blame g7271 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7392)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7395
                     (letrec*
                      ((x-cnd7396
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7396
                        g7276
                        (begin
                          (write '(blame g7274 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7395)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7397
                     (letrec*
                      ((x-cnd7398
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7398
                        g7279
                        (begin
                          (write '(blame g7277 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7397)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7399
                     (letrec*
                      ((x-cnd7400
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7400
                        g7282
                        (begin
                          (write '(blame g7280 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7399)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7401
                     (letrec*
                      ((x-cnd7402
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7402
                        g7285
                        (begin
                          (write '(blame g7283 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7401)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7403
                     (lambda (k j v)
                       (letrec*
                        ((g7404
                          (letrec*
                           ((x-cnd7405
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7405
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7404))))
                   g7403)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7406
                     (lambda (k j v)
                       (letrec*
                        ((g7407
                          (letrec*
                           ((x-cnd7408
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7408
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7412
                                (letrec*
                                 ((x7413
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7413))))
                               (x7409
                                (letrec*
                                 ((x7411
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7410
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7411 k j x7410)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7412 x7409)))))))
                        g7407))))
                   g7406)))
               (any? (lambda (v) (letrec* ((g7414 #t)) g7414)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7415
                     (letrec*
                      ((x7416
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7416)))))
                   g7415)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7417
                     (letrec*
                      ((x-cnd7418
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7419
                                (letrec*
                                 ((x7420
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7420)))))
                              g7419))
                           g7288))))
                      (if x-cnd7418
                        g7288
                        (begin
                          (write '(blame g7286 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7417)))
               (meta (lambda (v) (letrec* ((g7421 v)) g7421)))
               (+
                (letrec*
                 ((xj7289
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7422
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7293 k7294 f7295)
                         (letrec*
                          ((g7424
                            (lambda (g7291 g7292)
                              (letrec*
                               ((g7425
                                 (letrec*
                                  ((x7426
                                    (letrec*
                                     ((x7428
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7427
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7295 x7428 x7427)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7293 k7294 x7426)))))
                               g7425))))
                          g7424))
                       xj7289
                       xk7290
                       (lambda (a b)
                         (letrec*
                          ((g7423
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7423))))))
                  g7422)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7429
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7300 k7301 f7302)
                         (letrec*
                          ((g7431
                            (lambda (g7298 g7299)
                              (letrec*
                               ((g7432
                                 (letrec*
                                  ((x7433
                                    (letrec*
                                     ((x7435
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7434
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7302 x7435 x7434)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7300 k7301 x7433)))))
                               g7432))))
                          g7431))
                       xj7296
                       xk7297
                       (lambda (a b)
                         (letrec*
                          ((g7430
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7430))))))
                  g7429)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7436
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7307 k7308 f7309)
                         (letrec*
                          ((g7438
                            (lambda (g7305 g7306)
                              (letrec*
                               ((g7439
                                 (letrec*
                                  ((x7440
                                    (letrec*
                                     ((x7442
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7441
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7309 x7442 x7441)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7307 k7308 x7440)))))
                               g7439))))
                          g7438))
                       xj7303
                       xk7304
                       (lambda (a b)
                         (letrec*
                          ((g7437
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7437))))))
                  g7436)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7443
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7445
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7446
                                 (letrec*
                                  ((x7447
                                    (letrec*
                                     ((x7449
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7448
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7316 x7449 x7448)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7447)))))
                               g7446))))
                          g7445))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7444
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7444))))))
                  g7443)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7450
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7452
                            (lambda (g7319)
                              (letrec*
                               ((g7453
                                 (letrec*
                                  ((x7454
                                    (letrec*
                                     ((x7455
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7322 x7455)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7320 k7321 x7454)))))
                               g7453))))
                          g7452))
                       xj7317
                       xk7318
                       (lambda (p)
                         (letrec*
                          ((g7451
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7451))))))
                  g7450)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7456
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7326 k7327 f7328)
                         (letrec*
                          ((g7458
                            (lambda (g7325)
                              (letrec*
                               ((g7459
                                 (letrec*
                                  ((x7460
                                    (letrec*
                                     ((x7461
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7328 x7461)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7326 k7327 x7460)))))
                               g7459))))
                          g7458))
                       xj7323
                       xk7324
                       (lambda (p)
                         (letrec*
                          ((g7457
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7457))))))
                  g7456)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7462
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7464
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7465
                                 (letrec*
                                  ((x7466
                                    (letrec*
                                     ((x7468
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7467
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7335 x7468 x7467)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7333 k7334 x7466)))))
                               g7465))))
                          g7464))
                       xj7329
                       xk7330
                       (lambda (a b)
                         (letrec*
                          ((g7463
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7463))))))
                  g7462)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7469
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7471
                            (lambda (g7338)
                              (letrec*
                               ((g7472
                                 (letrec*
                                  ((x7473
                                    (letrec*
                                     ((x7474
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7341 x7474)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7339 k7340 x7473)))))
                               g7472))))
                          g7471))
                       xj7336
                       xk7337
                       (lambda (v i)
                         (letrec*
                          ((g7470
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7470))))))
                  g7469)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7475
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7477
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7478
                                 (letrec*
                                  ((x7479
                                    (letrec*
                                     ((x7481
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7480
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7348 x7481 x7480)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7346 k7347 x7479)))))
                               g7478))))
                          g7477))
                       xj7342
                       xk7343
                       (lambda (vec i v)
                         (letrec*
                          ((g7476
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7476))))))
                  g7475)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7482
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7482)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7483
                     (letrec*
                      ((x7484
                        (letrec*
                         ((x7485
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7485)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7484)))))
                   g7483)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7486
                     (letrec*
                      ((x7489
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7489))))
                    (g7487
                     (letrec*
                      ((x7490
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7490))))
                    (g7488
                     (letrec*
                      ((x-cnd7491
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7491
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7494
                           (letrec*
                            ((x7495
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7495))))
                          (x7492
                           (letrec*
                            ((x7493
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7493)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7494 x7492)))))))
                   g7488)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7496
                     (letrec*
                      ((x7497
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7497)))))
                   g7496)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7498
                     (letrec*
                      ((x7499
                        (letrec*
                         ((x7500
                           (letrec*
                            ((x7501
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7501)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7500)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7499)))))
                   g7498)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7502
                     (letrec*
                      ((x7503
                        (letrec*
                         ((x7504
                           (letrec*
                            ((x7505
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7505)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7504)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7503)))))
                   g7502)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7506
                     (letrec*
                      ((x7509
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7509))))
                    (g7507
                     (letrec*
                      ((x7510
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7510))))
                    (g7508
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
                       ((g7511
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7512 res))
                       g7512))))
                   g7508)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7513
                     (letrec*
                      ((x7514
                        (letrec*
                         ((x7515
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7515)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7514)))))
                   g7513)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7516
                     (letrec*
                      ((x7517
                        (letrec*
                         ((x7518
                           (letrec*
                            ((x7519
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7519)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7518)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7517)))))
                   g7516)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7520
                     (letrec*
                      ((x7522
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7522))))
                    (g7521
                     (letrec*
                      ((x-cnd7523
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7523
                        #f
                        (letrec*
                         ((x-cnd7524
                           (letrec*
                            ((x7525
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7525 k)))))
                         (if x-cnd7524
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7526
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7526)))))))))
                   g7521)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7527
                     (letrec*
                      ((x7528
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7528)))))
                   g7527)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7529
                     (letrec*
                      ((x7531
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7531))))
                    (g7530
                     (letrec*
                      ((x-cnd7532
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7532
                        ""
                        (letrec*
                         ((x7535
                           (letrec*
                            ((x7536
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7536))))
                          (x7533
                           (letrec*
                            ((x7534
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7534)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7535 x7533)))))))
                   g7530)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7537
                     (letrec*
                      ((x7540
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7540))))
                    (g7538
                     (letrec*
                      ((x7541
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7541))))
                    (g7539
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7542
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7542))))
                   g7539)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7543
                     (letrec*
                      ((x7544
                        (letrec*
                         ((x7545
                           (letrec*
                            ((x7546
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7546)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7545)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7544)))))
                   g7543)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7547
                     (letrec*
                      ((x7550
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7550))))
                    (g7548
                     (letrec*
                      ((x7551
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7551))))
                    (g7549
                     (letrec*
                      ((x-cnd7552
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7552
                        x
                        (letrec*
                         ((x7554
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7553
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7554 x7553)))))))
                   g7549)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7555
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7555)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7556
                     (letrec*
                      ((x-cnd7557
                        (letrec*
                         ((x7558 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7558)))))
                      (if x-cnd7557
                        (letrec*
                         ((x7559 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7559)))
                        #f))))
                   g7556)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7560
                     (letrec*
                      ((x7562
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7562))))
                    (g7561
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7563
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7564 (if val7243 val7243 #f)))
                             g7564)))))
                       g7563))))
                   g7561)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7565
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7566
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7566 9)))))
                      (letrec*
                       ((g7567
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7568
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7568 10)))))
                            (letrec*
                             ((g7569
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7570
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7570 32))))))
                             g7569)))))
                       g7567))))
                   g7565)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7571
                     (letrec*
                      ((x7572
                        (letrec*
                         ((x7573
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7573)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7572)))))
                   g7571)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7574
                     (letrec*
                      ((x7576
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7576))))
                    (g7575
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7575)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7577 #f)) g7577)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7578
                     (letrec*
                      ((x7579
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7579)))))
                   g7578)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7580
                     (letrec*
                      ((x7582
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7582))))
                    (g7581
                     (letrec*
                      ((x-cnd7583
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7583
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7581)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7584
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7585
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7586
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7586
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7587
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7588
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7588
                                       (letrec*
                                        ((x-cnd7589
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7589
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7590
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7591
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7591
                                             (letrec*
                                              ((x-cnd7592
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7592
                                                (letrec*
                                                 ((x-cnd7593
                                                   (letrec*
                                                    ((x7595
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7594
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7595 x7594)))))
                                                 (if x-cnd7593
                                                   (letrec*
                                                    ((x7597
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7596
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7597 x7596)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7598
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7599
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7599
                                                (letrec*
                                                 ((x-cnd7600
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7600
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7601
                                                       (letrec*
                                                        ((x-cnd7602
                                                          (letrec*
                                                           ((x7603
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
                                                             (= x7603 n)))))
                                                        (if x-cnd7602
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7604
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
                                                                    ((g7605
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7606
                                                                           (letrec*
                                                                            ((x7608
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
                                                                             (x7607
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
                                                                               x7608
                                                                               x7607)))))
                                                                         (if x-cnd7606
                                                                           (letrec*
                                                                            ((x7609
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
                                                                               x7609)))
                                                                           #f)))))
                                                                    g7605))))
                                                                g7604))))
                                                           (letrec*
                                                            ((g7610
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7610))
                                                          #f))))
                                                     g7601))
                                                   #f))
                                                #f)))))
                                         g7598)))))
                                   g7590)))))
                             g7587)))))
                       g7585))))
                   g7584)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7612
                        (letrec*
                         ((x7613
                           (letrec*
                            ((x7614
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7614)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7613)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7612)))))
                   g7611)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7616
                        (letrec*
                         ((x7617
                           (letrec*
                            ((x7618
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7618)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7617)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7616)))))
                   g7615)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7619
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7619)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7622))))
                    (g7621
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7623
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7624 (if val7252 val7252 #f)))
                             g7624)))))
                       g7623))))
                   g7621)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7628))))
                    (g7626
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7629))))
                    (g7627
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
                       ((g7630
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7631 res))
                       g7631))))
                   g7627)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7632
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7632)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7636
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7636))))
                    (g7634
                     (letrec*
                      ((x7637
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7637))))
                    (g7635
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7638
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7638))))
                   g7635)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7640
                        (letrec*
                         ((x7641
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7641)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7640)))))
                   g7639)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7643
                        (letrec*
                         ((x7644
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7645)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7644)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7643)))))
                   g7642)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7647
                        (letrec*
                         ((x7648
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7648)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7647)))))
                   g7646)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7650
                        (letrec*
                         ((x7651
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7651)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7650)))))
                   g7649)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7655))))
                    (g7653
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7656))))
                    (g7654
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7657)))))
                   g7654)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x7659
                        (letrec*
                         ((x7660
                           (letrec*
                            ((x7661
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7661)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7660)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7659)))))
                   g7658)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7664))))
                    (g7663
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7663)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7665
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7665)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((x7667
                        (letrec*
                         ((x7668
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7668)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7667)))))
                   g7666)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7669
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7669)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((x7672
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7672))))
                    (g7671
                     (letrec*
                      ((x-cnd7673
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7673
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7676
                           (letrec*
                            ((x7677
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7677))))
                          (x7674
                           (letrec*
                            ((x7675
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7675)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7676 x7674)))))))
                   g7671)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((x7679
                        (letrec*
                         ((x7680
                           (letrec*
                            ((x7681
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7681)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7680)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7679)))))
                   g7678)))
               (cddadr
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
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7685)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7684)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7683)))))
                   g7682)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7686
                     (letrec*
                      ((x7688
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7688))))
                    (g7687
                     (letrec*
                      ((x7689
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7689)))))
                   g7687)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7690
                     (letrec*
                      ((x7691
                        (letrec*
                         ((x7692
                           (letrec*
                            ((x7693
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7693)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7692)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7691)))))
                   g7690)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7694
                     (letrec*
                      ((x7697
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7697))))
                    (g7695
                     (letrec*
                      ((x7698
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7698))))
                    (g7696
                     (letrec*
                      ((x-cnd7699
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7699
                        (letrec*
                         ((g7700
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7700)
                        (letrec*
                         ((x-cnd7701
                           (letrec*
                            ((x7702
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7702)))))
                         (if x-cnd7701
                           (letrec*
                            ((g7703
                              (letrec*
                               ((x7704
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7704)))))
                            g7703)
                           (letrec*
                            ((x-cnd7705
                              (letrec*
                               ((x7706
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7706)))))
                            (if x-cnd7705
                              (letrec*
                               ((g7707
                                 (letrec*
                                  ((x7709
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7708
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7709 x7708)))))
                               g7707)
                              (letrec*
                               ((x-cnd7710
                                 (letrec*
                                  ((x7711
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7711)))))
                               (if x-cnd7710
                                 (letrec*
                                  ((g7712
                                    (letrec*
                                     ((x7715
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7714
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7713
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7715 x7714 x7713)))))
                                  g7712)
                                 (letrec*
                                  ((x-cnd7716
                                    (letrec*
                                     ((x7717
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7717)))))
                                  (if x-cnd7716
                                    (letrec*
                                     ((g7718
                                       (letrec*
                                        ((x7722
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7721
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7720
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7719
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7722 x7721 x7720 x7719)))))
                                     g7718)
                                    (letrec*
                                     ((x-cnd7723
                                       (letrec*
                                        ((x7724
                                          (letrec*
                                           ((x7725
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7725)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7724)))))
                                     (if x-cnd7723
                                       (letrec*
                                        ((g7726
                                          (letrec*
                                           ((x7732
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7731
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7730
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7729
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7727
                                             (letrec*
                                              ((x7728
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7728)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7732
                                              x7731
                                              x7730
                                              x7729
                                              x7727)))))
                                        g7726)
                                       (letrec*
                                        ((x-cnd7733
                                          (letrec*
                                           ((x7734
                                             (letrec*
                                              ((x7735
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x7735)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x7734)))))
                                        (if x-cnd7733
                                          (letrec*
                                           ((g7736
                                             (letrec*
                                              ((x7744
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7743
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7742
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7741
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7739
                                                (letrec*
                                                 ((x7740
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x7740))))
                                               (x7737
                                                (letrec*
                                                 ((x7738
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x7738)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x7744
                                                 x7743
                                                 x7742
                                                 x7741
                                                 x7739
                                                 x7737)))))
                                           g7736)
                                          (letrec*
                                           ((x-cnd7745
                                             (letrec*
                                              ((x7746
                                                (letrec*
                                                 ((x7747
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x7747)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x7746)))))
                                           (if x-cnd7745
                                             (letrec*
                                              ((g7748
                                                (letrec*
                                                 ((x7758
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7757
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7756
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7755
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7753
                                                   (letrec*
                                                    ((x7754
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x7754))))
                                                  (x7751
                                                   (letrec*
                                                    ((x7752
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x7752))))
                                                  (x7749
                                                   (letrec*
                                                    ((x7750
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x7750)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x7758
                                                    x7757
                                                    x7756
                                                    x7755
                                                    x7753
                                                    x7751
                                                    x7749)))))
                                              g7748)
                                             (letrec*
                                              ((g7759
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7759)))))))))))))))))))
                   g7696)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7762
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x7762))))
                    (g7761
                     (letrec*
                      ((x-cnd7763
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7763
                        #f
                        (letrec*
                         ((x-cnd7764
                           (letrec*
                            ((x7765
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x7765 e)))))
                         (if x-cnd7764
                           l
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x7766)))))))))
                   g7761)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7768
                        (letrec*
                         ((x7769
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x7770)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x7769)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x7768)))))
                   g7767)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7772
                        (letrec*
                         ((x7773
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x7774)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x7773)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x7772)))))
                   g7771)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7775
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g7775)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x7778))))
                    (g7777
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g7777)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7780
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7780))))
                   g7779)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x7782)))))
                   g7781)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7784
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7784
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x7785)))
                           #f))))
                      (letrec*
                       ((g7786
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g7786))))
                   g7783)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7788
                        (letrec*
                         ((x7789
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x7790)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x7789)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x7788)))))
                   g7787)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x-cnd7792
                        (letrec*
                         ((x7793 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x7793 c)))))
                      (if x-cnd7792
                        (letrec*
                         ((x7794 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x7794)))
                        #f))))
                   g7791)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x7797))))
                    (g7796
                     (letrec*
                      ((x-cnd7798
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7798
                        #f
                        (letrec*
                         ((x-cnd7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x7800 k)))))
                         (if x-cnd7799
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x7801)))))))))
                   g7796)))
               (not (lambda (x) (letrec* ((g7802 (if x #f #t))) g7802)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7803
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g7803)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x7806))))
                    (g7805
                     (letrec*
                      ((x-cnd7807
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7807
                        #f
                        (letrec*
                         ((x-cnd7808
                           (letrec*
                            ((x7809
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x7809 e)))))
                         (if x-cnd7808
                           l
                           (letrec*
                            ((x7810
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x7810)))))))))
                   g7805)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7812
                        (letrec*
                         ((x7813
                           (letrec*
                            ((x7814
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x7814)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x7813)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x7812)))))
                   g7811)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x7817))))
                    (g7816
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7818
                             (letrec*
                              ((x-cnd7819
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7819
                                0
                                (letrec*
                                 ((x7820
                                   (letrec*
                                    ((x7821
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x7821)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x7820)))))))
                           g7818))))
                      (letrec*
                       ((g7822
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g7822))))
                   g7816)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7823
                     (letrec*
                      ((x7826
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7826))))
                    (g7824
                     (letrec*
                      ((x7827
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x7827))))
                    (g7825
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7828
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7828))))
                   g7825)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7829
                     (letrec*
                      ((x7830
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x7830)))))
                   g7829)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7831
                     (letrec*
                      ((x7832
                        (letrec*
                         ((x7833
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x7833)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x7832)))))
                   g7831)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x7836
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x7836))))
                    (g7835
                     (letrec*
                      ((x-cnd7837
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7837
                        #f
                        (letrec*
                         ((x-cnd7838
                           (letrec*
                            ((x7839
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x7839 k)))))
                         (if x-cnd7838
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7840
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x7840)))))))))
                   g7835)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((x7842
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x7842)))))
                   g7841)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7846))))
                    (g7844
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x7847))))
                    (g7845
                     (letrec*
                      ((x7848
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x7848)))))
                   g7845)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7850
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7850))))
                   g7849)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7851
                     (letrec*
                      ((x7854
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x7854))))
                    (g7852
                     (letrec*
                      ((x7855
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x7855))))
                    (g7853
                     (letrec*
                      ((x-cnd7856
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7856
                        #t
                        (letrec*
                         ((x-cnd7857
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7857
                           (letrec*
                            ((g7858
                              (letrec*
                               ((x7860
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x7860))))
                             (g7859
                              (letrec*
                               ((x7861
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x7861)))))
                            g7859)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g7853)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7862
                     (letrec*
                      ((x7864
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x7864))))
                    (g7863
                     (letrec*
                      ((x-cnd7865
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7865
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7863)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((x7869
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7869))))
                    (g7867
                     (letrec*
                      ((x7870
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x7870))))
                    (g7868
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7871
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7871))))
                   g7868)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x7873
                        (letrec*
                         ((x7874
                           (letrec*
                            ((x7875
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x7875)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x7874)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x7873)))))
                   g7872)))
               (newline (lambda () (letrec* ((g7876 #f)) g7876)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x7879
                        (letrec*
                         ((x7880
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x7880))))
                       (x7878
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x7879 x7878)))))
                   g7877)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((x7883
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x7883))))
                    (g7882
                     (letrec*
                      ((x7884
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x7884)))))
                   g7882)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7889
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x7889))))
                    (g7886
                     (letrec*
                      ((x7890
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x7890))))
                    (g7887
                     (letrec*
                      ((x7891
                        (letrec*
                         ((x7892
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x7892)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x7891))))
                    (g7888
                     (letrec*
                      ((x-cnd7893
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7893
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7895
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x7894
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x7895 x7894)))))))
                   g7888)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x-cnd7897
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7897
                        a
                        (letrec*
                         ((x7898
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x7898)))))))
                   g7896)))
               (f
                (lambda (g x)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x-cnd7900
                        (begin
                          (write '(funapp 1476 35))
                          (display "\n")
                          (>= x 0))))
                      (if x-cnd7900
                        (begin (write '(funapp 1478 25)) (display "\n") (g x))
                        (letrec*
                         ((x7902
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 1482 37))
                                (display "\n")
                                (x)))
                             (x7903
                              (begin
                                (write '(funapp 1482 49))
                                (display "\n")
                                (f g x))))
                            (begin
                              (write '(funapp 1483 29))
                              (display "\n")
                              (λ x7904 x7903))))
                          (x7901
                           (begin
                             (write '(funapp 1484 34))
                             (display "\n")
                             (g x))))
                         (begin
                           (write '(funapp 1485 26))
                           (display "\n")
                           (f x7902 x7901)))))))
                   g7899)))
               (main
                (lambda (n)
                  (letrec*
                   ((g7905
                     (begin
                       (write '(funapp 1487 51))
                       (display "\n")
                       (f add1 n))))
                   g7905))))
              (letrec*
               ((g7906
                 (letrec*
                  ((x7910
                    (letrec*
                     ((xj7349
                       (begin
                         (write '(funapp 1493 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1493 35))
                            (display "\n")
                            'module))))
                      (xk7350
                       (begin
                         (write '(funapp 1493 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1493 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g7911
                        (begin
                          (write '(funapp 1496 25))
                          (display "\n")
                          ((lambda (j7353 k7354 f7355)
                             (letrec*
                              ((g7912
                                (lambda (g7351 g7352)
                                  (letrec*
                                   ((g7913
                                     (letrec*
                                      ((x7914
                                        (letrec*
                                         ((x7916
                                           (begin
                                             (write '(funapp 1506 42))
                                             (display "\n")
                                             ((lambda (j7357 k7358 f7359)
                                                (letrec*
                                                 ((g7917
                                                   (lambda (g7356)
                                                     (letrec*
                                                      ((g7918
                                                        (letrec*
                                                         ((x7919
                                                           (letrec*
                                                            ((x7920
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1516
                                                                   59))
                                                                (display "\n")
                                                                (integer?
                                                                 j7357
                                                                 k7358
                                                                 g7356))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1520
                                                                 57))
                                                              (display "\n")
                                                              (f7359 x7920)))))
                                                         (begin
                                                           (write
                                                            '(funapp 1521 54))
                                                           (display "\n")
                                                           (integer?
                                                            j7357
                                                            k7358
                                                            x7919)))))
                                                      g7918))))
                                                 g7917))
                                              j7353
                                              k7354
                                              g7351)))
                                          (x7915
                                           (begin
                                             (write '(funapp 1530 48))
                                             (display "\n")
                                             (integer? j7353 k7354 g7352))))
                                         (begin
                                           (write '(funapp 1531 40))
                                           (display "\n")
                                           (f7355 x7916 x7915)))))
                                      (begin
                                        (write '(funapp 1532 37))
                                        (display "\n")
                                        (integer? j7353 k7354 x7914)))))
                                   g7913))))
                              g7912))
                           xj7349
                           xk7350
                           f))))
                      g7911)))
                   (x7909 (input))
                   (x7908 (input)))
                  (begin
                    (write '(funapp 1541 19))
                    (display "\n")
                    (x7910 x7909 x7908))))
                (g7907
                 (letrec*
                  ((x7922
                    (letrec*
                     ((xj7360
                       (begin
                         (write '(funapp 1546 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1546 35))
                            (display "\n")
                            'module))))
                      (xk7361
                       (begin
                         (write '(funapp 1546 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1546 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g7923
                        (begin
                          (write '(funapp 1549 25))
                          (display "\n")
                          ((lambda (j7363 k7364 f7365)
                             (letrec*
                              ((g7924
                                (lambda (g7362)
                                  (letrec*
                                   ((g7925
                                     (letrec*
                                      ((x7928
                                        (letrec*
                                         ((x7929
                                           (begin
                                             (write '(funapp 1558 48))
                                             (display "\n")
                                             (>=/c 0))))
                                         (begin
                                           (write '(funapp 1559 40))
                                           (display "\n")
                                           (and/c integer? x7929))))
                                       (x7926
                                        (letrec*
                                         ((x7927
                                           (begin
                                             (write '(funapp 1562 48))
                                             (display "\n")
                                             (integer? j7363 k7364 g7362))))
                                         (begin
                                           (write '(funapp 1563 40))
                                           (display "\n")
                                           (f7365 x7927)))))
                                      (begin
                                        (write '(funapp 1564 37))
                                        (display "\n")
                                        (x7928 j7363 k7364 x7926)))))
                                   g7925))))
                              g7924))
                           xj7360
                           xk7361
                           main))))
                      g7923)))
                   (x7921 (input)))
                  (begin
                    (write '(funapp 1572 19))
                    (display "\n")
                    (x7922 x7921)))))
               g7907))))
           g7379))))
       g7377)))
    g7376)))
