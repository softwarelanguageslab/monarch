(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7367 #t)) g7367)))
    (meta (lambda (v) (letrec* ((g7368 v)) g7368)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7369
          (letrec*
           ((g7370
             (letrec*
              ((x-e7371 lst))
              (letrec*
               ((v1742 x-e7371))
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
                   ((x-cnd7372
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7372
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
           g7370)))
        g7369)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7373 (lambda (v) (letrec* ((g7374 v)) g7374)))) g7373)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7375
          (letrec*
           ((x7376 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7376)))))
        g7375))))
   (letrec*
    ((g7377
      (letrec*
       ((g7378
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
           ((g7379 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7380
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7381
                     (lambda (k j lst)
                       (letrec*
                        ((g7382
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7383
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7383))
                             lst))))
                        g7382))))
                   g7381)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7384
                     (letrec*
                      ((x-cnd7385
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7385
                        g7261
                        (begin
                          (write '(blame g7259 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7384)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7386
                     (letrec*
                      ((x-cnd7387
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7387
                        g7264
                        (begin
                          (write '(blame g7262 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7386)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7388
                     (letrec*
                      ((x-cnd7389
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7389
                        g7267
                        (begin
                          (write '(blame g7265 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7388)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7390
                     (letrec*
                      ((x-cnd7391
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7392 #t)) g7392)) g7270))))
                      (if x-cnd7391
                        g7270
                        (begin
                          (write '(blame g7268 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7390)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7393
                     (letrec*
                      ((x-cnd7394
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7395 #t)) g7395)) g7273))))
                      (if x-cnd7394
                        g7273
                        (begin
                          (write '(blame g7271 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7393)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7396
                     (letrec*
                      ((x-cnd7397
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7397
                        g7276
                        (begin
                          (write '(blame g7274 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7396)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7398
                     (letrec*
                      ((x-cnd7399
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7399
                        g7279
                        (begin
                          (write '(blame g7277 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7398)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7400
                     (letrec*
                      ((x-cnd7401
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7401
                        g7282
                        (begin
                          (write '(blame g7280 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7400)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7402
                     (letrec*
                      ((x-cnd7403
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7403
                        g7285
                        (begin
                          (write '(blame g7283 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7402)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7404
                     (lambda (k j v)
                       (letrec*
                        ((g7405
                          (letrec*
                           ((x-cnd7406
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7406
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7405))))
                   g7404)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7407
                     (lambda (k j v)
                       (letrec*
                        ((g7408
                          (letrec*
                           ((x-cnd7409
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7409
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7413
                                (letrec*
                                 ((x7414
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7414))))
                               (x7410
                                (letrec*
                                 ((x7412
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7411
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7412 k j x7411)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7413 x7410)))))))
                        g7408))))
                   g7407)))
               (any? (lambda (v) (letrec* ((g7415 #t)) g7415)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7416
                     (letrec*
                      ((x7417
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7417)))))
                   g7416)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7418
                     (letrec*
                      ((x-cnd7419
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7420
                                (letrec*
                                 ((x7421
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7421)))))
                              g7420))
                           g7288))))
                      (if x-cnd7419
                        g7288
                        (begin
                          (write '(blame g7286 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7418)))
               (meta (lambda (v) (letrec* ((g7422 v)) g7422)))
               (+
                (letrec*
                 ((xj7289
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7423
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7293 k7294 f7295)
                         (letrec*
                          ((g7425
                            (lambda (g7291 g7292)
                              (letrec*
                               ((g7426
                                 (letrec*
                                  ((x7427
                                    (letrec*
                                     ((x7429
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7428
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7295 x7429 x7428)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7293 k7294 x7427)))))
                               g7426))))
                          g7425))
                       xj7289
                       xk7290
                       (lambda (a b)
                         (letrec*
                          ((g7424
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7424))))))
                  g7423)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7430
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7300 k7301 f7302)
                         (letrec*
                          ((g7432
                            (lambda (g7298 g7299)
                              (letrec*
                               ((g7433
                                 (letrec*
                                  ((x7434
                                    (letrec*
                                     ((x7436
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7435
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7302 x7436 x7435)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7300 k7301 x7434)))))
                               g7433))))
                          g7432))
                       xj7296
                       xk7297
                       (lambda (a b)
                         (letrec*
                          ((g7431
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7431))))))
                  g7430)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7437
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7307 k7308 f7309)
                         (letrec*
                          ((g7439
                            (lambda (g7305 g7306)
                              (letrec*
                               ((g7440
                                 (letrec*
                                  ((x7441
                                    (letrec*
                                     ((x7443
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7442
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7309 x7443 x7442)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7307 k7308 x7441)))))
                               g7440))))
                          g7439))
                       xj7303
                       xk7304
                       (lambda (a b)
                         (letrec*
                          ((g7438
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7438))))))
                  g7437)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7444
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7446
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7447
                                 (letrec*
                                  ((x7448
                                    (letrec*
                                     ((x7450
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7449
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7316 x7450 x7449)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7448)))))
                               g7447))))
                          g7446))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7445
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7445))))))
                  g7444)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7451
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7453
                            (lambda (g7319)
                              (letrec*
                               ((g7454
                                 (letrec*
                                  ((x7455
                                    (letrec*
                                     ((x7456
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7322 x7456)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7320 k7321 x7455)))))
                               g7454))))
                          g7453))
                       xj7317
                       xk7318
                       (lambda (p)
                         (letrec*
                          ((g7452
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7452))))))
                  g7451)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7457
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7326 k7327 f7328)
                         (letrec*
                          ((g7459
                            (lambda (g7325)
                              (letrec*
                               ((g7460
                                 (letrec*
                                  ((x7461
                                    (letrec*
                                     ((x7462
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7328 x7462)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7326 k7327 x7461)))))
                               g7460))))
                          g7459))
                       xj7323
                       xk7324
                       (lambda (p)
                         (letrec*
                          ((g7458
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7458))))))
                  g7457)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7463
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7465
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7466
                                 (letrec*
                                  ((x7467
                                    (letrec*
                                     ((x7469
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7468
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7335 x7469 x7468)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7333 k7334 x7467)))))
                               g7466))))
                          g7465))
                       xj7329
                       xk7330
                       (lambda (a b)
                         (letrec*
                          ((g7464
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7464))))))
                  g7463)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7470
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7472
                            (lambda (g7338)
                              (letrec*
                               ((g7473
                                 (letrec*
                                  ((x7474
                                    (letrec*
                                     ((x7475
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7341 x7475)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7339 k7340 x7474)))))
                               g7473))))
                          g7472))
                       xj7336
                       xk7337
                       (lambda (v i)
                         (letrec*
                          ((g7471
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7471))))))
                  g7470)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7476
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7478
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7479
                                 (letrec*
                                  ((x7480
                                    (letrec*
                                     ((x7482
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7481
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7348 x7482 x7481)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7346 k7347 x7480)))))
                               g7479))))
                          g7478))
                       xj7342
                       xk7343
                       (lambda (vec i v)
                         (letrec*
                          ((g7477
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7477))))))
                  g7476)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7483
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7483)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7484
                     (letrec*
                      ((x7485
                        (letrec*
                         ((x7486
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7486)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7485)))))
                   g7484)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7487
                     (letrec*
                      ((x7490
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7490))))
                    (g7488
                     (letrec*
                      ((x7491
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7491))))
                    (g7489
                     (letrec*
                      ((x-cnd7492
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7492
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7495
                           (letrec*
                            ((x7496
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7496))))
                          (x7493
                           (letrec*
                            ((x7494
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7494)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7495 x7493)))))))
                   g7489)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7497
                     (letrec*
                      ((x7498
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7498)))))
                   g7497)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7499
                     (letrec*
                      ((x7500
                        (letrec*
                         ((x7501
                           (letrec*
                            ((x7502
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7502)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7501)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7500)))))
                   g7499)))
               (cdadar
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
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7506)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7505)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7504)))))
                   g7503)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7507
                     (letrec*
                      ((x7510
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7510))))
                    (g7508
                     (letrec*
                      ((x7511
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7511))))
                    (g7509
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
                       ((g7512
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7513 res))
                       g7513))))
                   g7509)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7514
                     (letrec*
                      ((x7515
                        (letrec*
                         ((x7516
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7516)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7515)))))
                   g7514)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7517
                     (letrec*
                      ((x7518
                        (letrec*
                         ((x7519
                           (letrec*
                            ((x7520
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7520)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7519)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7518)))))
                   g7517)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7521
                     (letrec*
                      ((x7523
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7523))))
                    (g7522
                     (letrec*
                      ((x-cnd7524
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7524
                        #f
                        (letrec*
                         ((x-cnd7525
                           (letrec*
                            ((x7526
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7526 k)))))
                         (if x-cnd7525
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7527
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7527)))))))))
                   g7522)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7528
                     (letrec*
                      ((x7529
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7529)))))
                   g7528)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7530
                     (letrec*
                      ((x7532
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7532))))
                    (g7531
                     (letrec*
                      ((x-cnd7533
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7533
                        ""
                        (letrec*
                         ((x7536
                           (letrec*
                            ((x7537
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7537))))
                          (x7534
                           (letrec*
                            ((x7535
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7535)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7536 x7534)))))))
                   g7531)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7538
                     (letrec*
                      ((x7541
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7541))))
                    (g7539
                     (letrec*
                      ((x7542
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7542))))
                    (g7540
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7543
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7543))))
                   g7540)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7544
                     (letrec*
                      ((x7545
                        (letrec*
                         ((x7546
                           (letrec*
                            ((x7547
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7547)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7546)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7545)))))
                   g7544)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7548
                     (letrec*
                      ((x7551
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7551))))
                    (g7549
                     (letrec*
                      ((x7552
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7552))))
                    (g7550
                     (letrec*
                      ((x-cnd7553
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7553
                        x
                        (letrec*
                         ((x7555
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7554
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7555 x7554)))))))
                   g7550)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7556
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7556)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7557
                     (letrec*
                      ((x-cnd7558
                        (letrec*
                         ((x7559 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7559)))))
                      (if x-cnd7558
                        (letrec*
                         ((x7560 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7560)))
                        #f))))
                   g7557)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7561
                     (letrec*
                      ((x7563
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7563))))
                    (g7562
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7564
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7565 (if val7243 val7243 #f)))
                             g7565)))))
                       g7564))))
                   g7562)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7566
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7567
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7567 9)))))
                      (letrec*
                       ((g7568
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7569
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7569 10)))))
                            (letrec*
                             ((g7570
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7571
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7571 32))))))
                             g7570)))))
                       g7568))))
                   g7566)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7572
                     (letrec*
                      ((x7573
                        (letrec*
                         ((x7574
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7574)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7573)))))
                   g7572)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7575
                     (letrec*
                      ((x7577
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7577))))
                    (g7576
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7576)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7578 #f)) g7578)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7579
                     (letrec*
                      ((x7580
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7580)))))
                   g7579)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7581
                     (letrec*
                      ((x7583
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7583))))
                    (g7582
                     (letrec*
                      ((x-cnd7584
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7584
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7582)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7585
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7586
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7587
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7587
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7588
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7589
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7589
                                       (letrec*
                                        ((x-cnd7590
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7590
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7591
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7592
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7592
                                             (letrec*
                                              ((x-cnd7593
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7593
                                                (letrec*
                                                 ((x-cnd7594
                                                   (letrec*
                                                    ((x7596
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7595
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7596 x7595)))))
                                                 (if x-cnd7594
                                                   (letrec*
                                                    ((x7598
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7597
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7598 x7597)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7599
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7600
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7600
                                                (letrec*
                                                 ((x-cnd7601
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7601
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7602
                                                       (letrec*
                                                        ((x-cnd7603
                                                          (letrec*
                                                           ((x7604
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
                                                             (= x7604 n)))))
                                                        (if x-cnd7603
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7605
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
                                                                    ((g7606
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7607
                                                                           (letrec*
                                                                            ((x7609
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
                                                                             (x7608
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
                                                                               x7609
                                                                               x7608)))))
                                                                         (if x-cnd7607
                                                                           (letrec*
                                                                            ((x7610
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
                                                                               x7610)))
                                                                           #f)))))
                                                                    g7606))))
                                                                g7605))))
                                                           (letrec*
                                                            ((g7611
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7611))
                                                          #f))))
                                                     g7602))
                                                   #f))
                                                #f)))))
                                         g7599)))))
                                   g7591)))))
                             g7588)))))
                       g7586))))
                   g7585)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7613
                        (letrec*
                         ((x7614
                           (letrec*
                            ((x7615
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7615)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7614)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7613)))))
                   g7612)))
               (caaddr
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
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7619)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7618)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7617)))))
                   g7616)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7620
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7620)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7623))))
                    (g7622
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7624
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7625 (if val7252 val7252 #f)))
                             g7625)))))
                       g7624))))
                   g7622)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7629))))
                    (g7627
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7630))))
                    (g7628
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
                       ((g7631
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7632 res))
                       g7632))))
                   g7628)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7633
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7633)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7637
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7637))))
                    (g7635
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7638))))
                    (g7636
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7639
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7639))))
                   g7636)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7641
                        (letrec*
                         ((x7642
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7642)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7641)))))
                   g7640)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7644
                        (letrec*
                         ((x7645
                           (letrec*
                            ((x7646
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7646)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7645)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7644)))))
                   g7643)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7648
                        (letrec*
                         ((x7649
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7649)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7648)))))
                   g7647)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7651
                        (letrec*
                         ((x7652
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7652)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7651)))))
                   g7650)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7656))))
                    (g7654
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7657))))
                    (g7655
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7658)))))
                   g7655)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7660
                        (letrec*
                         ((x7661
                           (letrec*
                            ((x7662
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7662)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7661)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7660)))))
                   g7659)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7665))))
                    (g7664
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7664)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7666
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7666)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x7668
                        (letrec*
                         ((x7669
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7669)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7668)))))
                   g7667)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7670
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7670)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7673
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7673))))
                    (g7672
                     (letrec*
                      ((x-cnd7674
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7674
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7677
                           (letrec*
                            ((x7678
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7678))))
                          (x7675
                           (letrec*
                            ((x7676
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7676)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7677 x7675)))))))
                   g7672)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7679
                     (letrec*
                      ((x7680
                        (letrec*
                         ((x7681
                           (letrec*
                            ((x7682
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7682)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7681)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7680)))))
                   g7679)))
               (cddadr
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
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7686)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7685)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7684)))))
                   g7683)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((x7689
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7689))))
                    (g7688
                     (letrec*
                      ((x7690
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7690)))))
                   g7688)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7691
                     (letrec*
                      ((x7692
                        (letrec*
                         ((x7693
                           (letrec*
                            ((x7694
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7694)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7693)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7692)))))
                   g7691)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7695
                     (letrec*
                      ((x7698
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7698))))
                    (g7696
                     (letrec*
                      ((x7699
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7699))))
                    (g7697
                     (letrec*
                      ((x-cnd7700
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7700
                        (letrec*
                         ((g7701
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7701)
                        (letrec*
                         ((x-cnd7702
                           (letrec*
                            ((x7703
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7703)))))
                         (if x-cnd7702
                           (letrec*
                            ((g7704
                              (letrec*
                               ((x7705
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7705)))))
                            g7704)
                           (letrec*
                            ((x-cnd7706
                              (letrec*
                               ((x7707
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7707)))))
                            (if x-cnd7706
                              (letrec*
                               ((g7708
                                 (letrec*
                                  ((x7710
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7709
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7710 x7709)))))
                               g7708)
                              (letrec*
                               ((x-cnd7711
                                 (letrec*
                                  ((x7712
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7712)))))
                               (if x-cnd7711
                                 (letrec*
                                  ((g7713
                                    (letrec*
                                     ((x7716
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7715
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7714
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7716 x7715 x7714)))))
                                  g7713)
                                 (letrec*
                                  ((x-cnd7717
                                    (letrec*
                                     ((x7718
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7718)))))
                                  (if x-cnd7717
                                    (letrec*
                                     ((g7719
                                       (letrec*
                                        ((x7723
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7722
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7721
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7720
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7723 x7722 x7721 x7720)))))
                                     g7719)
                                    (letrec*
                                     ((x-cnd7724
                                       (letrec*
                                        ((x7725
                                          (letrec*
                                           ((x7726
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7726)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7725)))))
                                     (if x-cnd7724
                                       (letrec*
                                        ((g7727
                                          (letrec*
                                           ((x7733
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7732
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7731
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7730
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7728
                                             (letrec*
                                              ((x7729
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7729)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7733
                                              x7732
                                              x7731
                                              x7730
                                              x7728)))))
                                        g7727)
                                       (letrec*
                                        ((x-cnd7734
                                          (letrec*
                                           ((x7735
                                             (letrec*
                                              ((x7736
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x7736)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x7735)))))
                                        (if x-cnd7734
                                          (letrec*
                                           ((g7737
                                             (letrec*
                                              ((x7745
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7744
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7743
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7742
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7740
                                                (letrec*
                                                 ((x7741
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x7741))))
                                               (x7738
                                                (letrec*
                                                 ((x7739
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x7739)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x7745
                                                 x7744
                                                 x7743
                                                 x7742
                                                 x7740
                                                 x7738)))))
                                           g7737)
                                          (letrec*
                                           ((x-cnd7746
                                             (letrec*
                                              ((x7747
                                                (letrec*
                                                 ((x7748
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x7748)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x7747)))))
                                           (if x-cnd7746
                                             (letrec*
                                              ((g7749
                                                (letrec*
                                                 ((x7759
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7758
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7757
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7756
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7754
                                                   (letrec*
                                                    ((x7755
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x7755))))
                                                  (x7752
                                                   (letrec*
                                                    ((x7753
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x7753))))
                                                  (x7750
                                                   (letrec*
                                                    ((x7751
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x7751)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x7759
                                                    x7758
                                                    x7757
                                                    x7756
                                                    x7754
                                                    x7752
                                                    x7750)))))
                                              g7749)
                                             (letrec*
                                              ((g7760
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7760)))))))))))))))))))
                   g7697)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x7763))))
                    (g7762
                     (letrec*
                      ((x-cnd7764
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7764
                        #f
                        (letrec*
                         ((x-cnd7765
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x7766 e)))))
                         (if x-cnd7765
                           l
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x7767)))))))))
                   g7762)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7769
                        (letrec*
                         ((x7770
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x7771)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x7770)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x7769)))))
                   g7768)))
               (cadddr
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
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x7775)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x7774)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x7773)))))
                   g7772)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7776
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g7776)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x7779))))
                    (g7778
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g7778)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7781
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7781))))
                   g7780)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x7783)))))
                   g7782)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7785
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7785
                           (letrec*
                            ((x7786
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x7786)))
                           #f))))
                      (letrec*
                       ((g7787
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g7787))))
                   g7784)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7789
                        (letrec*
                         ((x7790
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x7791)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x7790)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x7789)))))
                   g7788)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x-cnd7793
                        (letrec*
                         ((x7794 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x7794 c)))))
                      (if x-cnd7793
                        (letrec*
                         ((x7795 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x7795)))
                        #f))))
                   g7792)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x7798))))
                    (g7797
                     (letrec*
                      ((x-cnd7799
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7799
                        #f
                        (letrec*
                         ((x-cnd7800
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x7801 k)))))
                         (if x-cnd7800
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x7802)))))))))
                   g7797)))
               (not (lambda (x) (letrec* ((g7803 (if x #f #t))) g7803)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7804
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g7804)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x7807))))
                    (g7806
                     (letrec*
                      ((x-cnd7808
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7808
                        #f
                        (letrec*
                         ((x-cnd7809
                           (letrec*
                            ((x7810
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x7810 e)))))
                         (if x-cnd7809
                           l
                           (letrec*
                            ((x7811
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x7811)))))))))
                   g7806)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7813
                        (letrec*
                         ((x7814
                           (letrec*
                            ((x7815
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x7815)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x7814)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x7813)))))
                   g7812)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7816
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x7818))))
                    (g7817
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7819
                             (letrec*
                              ((x-cnd7820
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7820
                                0
                                (letrec*
                                 ((x7821
                                   (letrec*
                                    ((x7822
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x7822)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x7821)))))))
                           g7819))))
                      (letrec*
                       ((g7823
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g7823))))
                   g7817)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((x7827
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7827))))
                    (g7825
                     (letrec*
                      ((x7828
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x7828))))
                    (g7826
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7829
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7829))))
                   g7826)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7830
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x7831)))))
                   g7830)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7832
                     (letrec*
                      ((x7833
                        (letrec*
                         ((x7834
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x7834)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x7833)))))
                   g7832)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((x7837
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x7837))))
                    (g7836
                     (letrec*
                      ((x-cnd7838
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7838
                        #f
                        (letrec*
                         ((x-cnd7839
                           (letrec*
                            ((x7840
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x7840 k)))))
                         (if x-cnd7839
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7841
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x7841)))))))))
                   g7836)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7843
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x7843)))))
                   g7842)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7847))))
                    (g7845
                     (letrec*
                      ((x7848
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x7848))))
                    (g7846
                     (letrec*
                      ((x7849
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x7849)))))
                   g7846)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7850
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7851
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7851))))
                   g7850)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((x7855
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x7855))))
                    (g7853
                     (letrec*
                      ((x7856
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x7856))))
                    (g7854
                     (letrec*
                      ((x-cnd7857
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7857
                        #t
                        (letrec*
                         ((x-cnd7858
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7858
                           (letrec*
                            ((g7859
                              (letrec*
                               ((x7861
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x7861))))
                             (g7860
                              (letrec*
                               ((x7862
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x7862)))))
                            g7860)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g7854)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7863
                     (letrec*
                      ((x7865
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x7865))))
                    (g7864
                     (letrec*
                      ((x-cnd7866
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7866
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7864)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x7870
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7870))))
                    (g7868
                     (letrec*
                      ((x7871
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x7871))))
                    (g7869
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7872
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7872))))
                   g7869)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x7874
                        (letrec*
                         ((x7875
                           (letrec*
                            ((x7876
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x7876)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x7875)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x7874)))))
                   g7873)))
               (newline (lambda () (letrec* ((g7877 #f)) g7877)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((x7880
                        (letrec*
                         ((x7881
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x7881))))
                       (x7879
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x7880 x7879)))))
                   g7878)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x7884
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x7884))))
                    (g7883
                     (letrec*
                      ((x7885
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x7885)))))
                   g7883)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x7890
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x7890))))
                    (g7887
                     (letrec*
                      ((x7891
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x7891))))
                    (g7888
                     (letrec*
                      ((x7892
                        (letrec*
                         ((x7893
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x7893)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x7892))))
                    (g7889
                     (letrec*
                      ((x-cnd7894
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7894
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7896
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x7895
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x7896 x7895)))))))
                   g7889)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((x-cnd7898
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7898
                        a
                        (letrec*
                         ((x7899
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x7899)))))))
                   g7897)))
               (mappend
                (lambda (xs ys)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x-cnd7901
                        (begin
                          (write '(funapp 1476 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7901
                        ys
                        (letrec*
                         ((x7904
                           (begin
                             (write '(funapp 1480 34))
                             (display "\n")
                             (car xs)))
                          (x7902
                           (letrec*
                            ((x7903
                              (begin
                                (write '(funapp 1482 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1482 56))
                              (display "\n")
                              (mappend x7903 ys)))))
                         (begin
                           (write '(funapp 1483 26))
                           (display "\n")
                           (cons x7904 x7902)))))))
                   g7900)))
               (map-append
                (lambda (f xs)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x-cnd7906
                        (begin
                          (write '(funapp 1490 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7906
                        empty
                        (letrec*
                         ((x7909
                           (letrec*
                            ((x7910
                              (begin
                                (write '(funapp 1494 51))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1494 62))
                              (display "\n")
                              (f x7910))))
                          (x7907
                           (letrec*
                            ((x7908
                              (begin
                                (write '(funapp 1496 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1496 56))
                              (display "\n")
                              (map-append f x7908)))))
                         (begin
                           (write '(funapp 1497 26))
                           (display "\n")
                           (mappend x7909 x7907)))))))
                   g7905))))
              (letrec*
               ((g7911
                 (letrec*
                  ((x7915
                    (letrec*
                     ((xj7349
                       (begin
                         (write '(funapp 1504 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1504 35))
                            (display "\n")
                            'module))))
                      (xk7350
                       (begin
                         (write '(funapp 1504 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1504 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g7916
                        (begin
                          (write '(funapp 1507 25))
                          (display "\n")
                          ((lambda (j7353 k7354 f7355)
                             (letrec*
                              ((g7917
                                (lambda (g7351 g7352)
                                  (letrec*
                                   ((g7918
                                     (letrec*
                                      ((x7928
                                        (begin
                                          (write '(funapp 1514 45))
                                          (display "\n")
                                          (listof any/c)))
                                       (x7919
                                        (letrec*
                                         ((x7922
                                           (begin
                                             (write '(funapp 1518 42))
                                             (display "\n")
                                             ((lambda (j7357 k7358 f7359)
                                                (letrec*
                                                 ((g7923
                                                   (lambda (g7356)
                                                     (letrec*
                                                      ((g7924
                                                        (letrec*
                                                         ((x7927
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                1525
                                                                62))
                                                             (display "\n")
                                                             (listof any/c)))
                                                          (x7925
                                                           (letrec*
                                                            ((x7926
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1529
                                                                   59))
                                                                (display "\n")
                                                                (any/c
                                                                 j7357
                                                                 k7358
                                                                 g7356))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1533
                                                                 57))
                                                              (display "\n")
                                                              (f7359 x7926)))))
                                                         (begin
                                                           (write
                                                            '(funapp 1534 54))
                                                           (display "\n")
                                                           (x7927
                                                            j7357
                                                            k7358
                                                            x7925)))))
                                                      g7924))))
                                                 g7923))
                                              j7353
                                              k7354
                                              g7351)))
                                          (x7920
                                           (letrec*
                                            ((x7921
                                              (begin
                                                (write '(funapp 1545 51))
                                                (display "\n")
                                                (listof any/c))))
                                            (begin
                                              (write '(funapp 1546 43))
                                              (display "\n")
                                              (x7921 j7353 k7354 g7352)))))
                                         (begin
                                           (write '(funapp 1547 40))
                                           (display "\n")
                                           (f7355 x7922 x7920)))))
                                      (begin
                                        (write '(funapp 1548 37))
                                        (display "\n")
                                        (x7928 j7353 k7354 x7919)))))
                                   g7918))))
                              g7917))
                           xj7349
                           xk7350
                           map-append))))
                      g7916)))
                   (x7914 (input))
                   (x7913 (input)))
                  (begin
                    (write '(funapp 1557 19))
                    (display "\n")
                    (x7915 x7914 x7913))))
                (g7912
                 (letrec*
                  ((x7931
                    (letrec*
                     ((xj7360
                       (begin
                         (write '(funapp 1562 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1562 35))
                            (display "\n")
                            'module))))
                      (xk7361
                       (begin
                         (write '(funapp 1562 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1562 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g7932
                        (begin
                          (write '(funapp 1565 25))
                          (display "\n")
                          ((lambda (j7364 k7365 f7366)
                             (letrec*
                              ((g7933
                                (lambda (g7362 g7363)
                                  (letrec*
                                   ((g7934
                                     (letrec*
                                      ((x7940
                                        (begin
                                          (write '(funapp 1572 45))
                                          (display "\n")
                                          (listof any/c)))
                                       (x7935
                                        (letrec*
                                         ((x7938
                                           (letrec*
                                            ((x7939
                                              (begin
                                                (write '(funapp 1577 51))
                                                (display "\n")
                                                (listof any/c))))
                                            (begin
                                              (write '(funapp 1578 43))
                                              (display "\n")
                                              (x7939 j7364 k7365 g7362))))
                                          (x7936
                                           (letrec*
                                            ((x7937
                                              (begin
                                                (write '(funapp 1581 51))
                                                (display "\n")
                                                (listof any/c))))
                                            (begin
                                              (write '(funapp 1582 43))
                                              (display "\n")
                                              (x7937 j7364 k7365 g7363)))))
                                         (begin
                                           (write '(funapp 1583 40))
                                           (display "\n")
                                           (f7366 x7938 x7936)))))
                                      (begin
                                        (write '(funapp 1584 37))
                                        (display "\n")
                                        (x7940 j7364 k7365 x7935)))))
                                   g7934))))
                              g7933))
                           xj7360
                           xk7361
                           mappend))))
                      g7932)))
                   (x7930 (input))
                   (x7929 (input)))
                  (begin
                    (write '(funapp 1593 19))
                    (display "\n")
                    (x7931 x7930 x7929)))))
               g7912))))
           g7380))))
       g7378)))
    g7377)))
