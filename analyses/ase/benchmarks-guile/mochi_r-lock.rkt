(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7361 #t)) g7361)))
    (meta (lambda (v) (letrec* ((g7362 v)) g7362)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7363
          (letrec*
           ((g7364
             (letrec*
              ((x-e7365 lst))
              (letrec*
               ((v1742 x-e7365))
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
                   ((x-cnd7366
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7366
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
           g7364)))
        g7363)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7367 (lambda (v) (letrec* ((g7368 v)) g7368)))) g7367)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7369
          (letrec*
           ((x7370 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7370)))))
        g7369))))
   (letrec*
    ((g7371
      (letrec*
       ((g7372
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
           ((g7373 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7374
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7375
                     (lambda (k j lst)
                       (letrec*
                        ((g7376
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7377
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7377))
                             lst))))
                        g7376))))
                   g7375)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7378
                     (letrec*
                      ((x-cnd7379
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7379
                        g7261
                        (begin
                          (write '(blame g7259 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7378)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7380
                     (letrec*
                      ((x-cnd7381
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7381
                        g7264
                        (begin
                          (write '(blame g7262 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7380)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7382
                     (letrec*
                      ((x-cnd7383
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7383
                        g7267
                        (begin
                          (write '(blame g7265 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7382)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7384
                     (letrec*
                      ((x-cnd7385
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7386 #t)) g7386)) g7270))))
                      (if x-cnd7385
                        g7270
                        (begin
                          (write '(blame g7268 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7384)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7387
                     (letrec*
                      ((x-cnd7388
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7389 #t)) g7389)) g7273))))
                      (if x-cnd7388
                        g7273
                        (begin
                          (write '(blame g7271 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7387)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7390
                     (letrec*
                      ((x-cnd7391
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7391
                        g7276
                        (begin
                          (write '(blame g7274 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7390)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7392
                     (letrec*
                      ((x-cnd7393
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7393
                        g7279
                        (begin
                          (write '(blame g7277 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7392)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7394
                     (letrec*
                      ((x-cnd7395
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7395
                        g7282
                        (begin
                          (write '(blame g7280 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7394)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7396
                     (letrec*
                      ((x-cnd7397
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7397
                        g7285
                        (begin
                          (write '(blame g7283 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7396)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7398
                     (lambda (k j v)
                       (letrec*
                        ((g7399
                          (letrec*
                           ((x-cnd7400
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7400
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7399))))
                   g7398)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7401
                     (lambda (k j v)
                       (letrec*
                        ((g7402
                          (letrec*
                           ((x-cnd7403
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7403
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7407
                                (letrec*
                                 ((x7408
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7408))))
                               (x7404
                                (letrec*
                                 ((x7406
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7405
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7406 k j x7405)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7407 x7404)))))))
                        g7402))))
                   g7401)))
               (any? (lambda (v) (letrec* ((g7409 #t)) g7409)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7410
                     (letrec*
                      ((x7411
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7411)))))
                   g7410)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7412
                     (letrec*
                      ((x-cnd7413
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7414
                                (letrec*
                                 ((x7415
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7415)))))
                              g7414))
                           g7288))))
                      (if x-cnd7413
                        g7288
                        (begin
                          (write '(blame g7286 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7412)))
               (meta (lambda (v) (letrec* ((g7416 v)) g7416)))
               (+
                (letrec*
                 ((xj7289
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7417
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7293 k7294 f7295)
                         (letrec*
                          ((g7419
                            (lambda (g7291 g7292)
                              (letrec*
                               ((g7420
                                 (letrec*
                                  ((x7421
                                    (letrec*
                                     ((x7423
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7422
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7295 x7423 x7422)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7293 k7294 x7421)))))
                               g7420))))
                          g7419))
                       xj7289
                       xk7290
                       (lambda (a b)
                         (letrec*
                          ((g7418
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7418))))))
                  g7417)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7424
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7300 k7301 f7302)
                         (letrec*
                          ((g7426
                            (lambda (g7298 g7299)
                              (letrec*
                               ((g7427
                                 (letrec*
                                  ((x7428
                                    (letrec*
                                     ((x7430
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7429
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7302 x7430 x7429)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7300 k7301 x7428)))))
                               g7427))))
                          g7426))
                       xj7296
                       xk7297
                       (lambda (a b)
                         (letrec*
                          ((g7425
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7425))))))
                  g7424)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7431
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7307 k7308 f7309)
                         (letrec*
                          ((g7433
                            (lambda (g7305 g7306)
                              (letrec*
                               ((g7434
                                 (letrec*
                                  ((x7435
                                    (letrec*
                                     ((x7437
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7436
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7309 x7437 x7436)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7307 k7308 x7435)))))
                               g7434))))
                          g7433))
                       xj7303
                       xk7304
                       (lambda (a b)
                         (letrec*
                          ((g7432
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7432))))))
                  g7431)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7438
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7440
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7441
                                 (letrec*
                                  ((x7442
                                    (letrec*
                                     ((x7444
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7443
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7316 x7444 x7443)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7442)))))
                               g7441))))
                          g7440))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7439
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7439))))))
                  g7438)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7445
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7447
                            (lambda (g7319)
                              (letrec*
                               ((g7448
                                 (letrec*
                                  ((x7449
                                    (letrec*
                                     ((x7450
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7322 x7450)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7320 k7321 x7449)))))
                               g7448))))
                          g7447))
                       xj7317
                       xk7318
                       (lambda (p)
                         (letrec*
                          ((g7446
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7446))))))
                  g7445)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7451
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7326 k7327 f7328)
                         (letrec*
                          ((g7453
                            (lambda (g7325)
                              (letrec*
                               ((g7454
                                 (letrec*
                                  ((x7455
                                    (letrec*
                                     ((x7456
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7328 x7456)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7326 k7327 x7455)))))
                               g7454))))
                          g7453))
                       xj7323
                       xk7324
                       (lambda (p)
                         (letrec*
                          ((g7452
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7452))))))
                  g7451)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7457
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7459
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7460
                                 (letrec*
                                  ((x7461
                                    (letrec*
                                     ((x7463
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7462
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7335 x7463 x7462)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7333 k7334 x7461)))))
                               g7460))))
                          g7459))
                       xj7329
                       xk7330
                       (lambda (a b)
                         (letrec*
                          ((g7458
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7458))))))
                  g7457)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7464
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7466
                            (lambda (g7338)
                              (letrec*
                               ((g7467
                                 (letrec*
                                  ((x7468
                                    (letrec*
                                     ((x7469
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7341 x7469)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7339 k7340 x7468)))))
                               g7467))))
                          g7466))
                       xj7336
                       xk7337
                       (lambda (v i)
                         (letrec*
                          ((g7465
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7465))))))
                  g7464)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7470
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7472
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7473
                                 (letrec*
                                  ((x7474
                                    (letrec*
                                     ((x7476
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7475
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7348 x7476 x7475)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7346 k7347 x7474)))))
                               g7473))))
                          g7472))
                       xj7342
                       xk7343
                       (lambda (vec i v)
                         (letrec*
                          ((g7471
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7471))))))
                  g7470)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7477
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7477)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7478
                     (letrec*
                      ((x7479
                        (letrec*
                         ((x7480
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7480)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7479)))))
                   g7478)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7481
                     (letrec*
                      ((x7484
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7484))))
                    (g7482
                     (letrec*
                      ((x7485
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7485))))
                    (g7483
                     (letrec*
                      ((x-cnd7486
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7486
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7489
                           (letrec*
                            ((x7490
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7490))))
                          (x7487
                           (letrec*
                            ((x7488
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7488)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7489 x7487)))))))
                   g7483)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7491
                     (letrec*
                      ((x7492
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7492)))))
                   g7491)))
               (cadadr
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
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7496)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7495)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7494)))))
                   g7493)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7497
                     (letrec*
                      ((x7498
                        (letrec*
                         ((x7499
                           (letrec*
                            ((x7500
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7500)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7499)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7498)))))
                   g7497)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7501
                     (letrec*
                      ((x7504
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7504))))
                    (g7502
                     (letrec*
                      ((x7505
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7505))))
                    (g7503
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
                       ((g7506
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7507 res))
                       g7507))))
                   g7503)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7508
                     (letrec*
                      ((x7509
                        (letrec*
                         ((x7510
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7510)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7509)))))
                   g7508)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7511
                     (letrec*
                      ((x7512
                        (letrec*
                         ((x7513
                           (letrec*
                            ((x7514
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7514)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7513)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7512)))))
                   g7511)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7515
                     (letrec*
                      ((x7517
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7517))))
                    (g7516
                     (letrec*
                      ((x-cnd7518
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7518
                        #f
                        (letrec*
                         ((x-cnd7519
                           (letrec*
                            ((x7520
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7520 k)))))
                         (if x-cnd7519
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7521
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7521)))))))))
                   g7516)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7522
                     (letrec*
                      ((x7523
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7523)))))
                   g7522)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7524
                     (letrec*
                      ((x7526
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7526))))
                    (g7525
                     (letrec*
                      ((x-cnd7527
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7527
                        ""
                        (letrec*
                         ((x7530
                           (letrec*
                            ((x7531
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7531))))
                          (x7528
                           (letrec*
                            ((x7529
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7529)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7530 x7528)))))))
                   g7525)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7532
                     (letrec*
                      ((x7535
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7535))))
                    (g7533
                     (letrec*
                      ((x7536
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7536))))
                    (g7534
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7537
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7537))))
                   g7534)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7538
                     (letrec*
                      ((x7539
                        (letrec*
                         ((x7540
                           (letrec*
                            ((x7541
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7541)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7540)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7539)))))
                   g7538)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7542
                     (letrec*
                      ((x7545
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7545))))
                    (g7543
                     (letrec*
                      ((x7546
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7546))))
                    (g7544
                     (letrec*
                      ((x-cnd7547
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7547
                        x
                        (letrec*
                         ((x7549
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7548
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7549 x7548)))))))
                   g7544)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7550
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7550)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7551
                     (letrec*
                      ((x-cnd7552
                        (letrec*
                         ((x7553 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7553)))))
                      (if x-cnd7552
                        (letrec*
                         ((x7554 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7554)))
                        #f))))
                   g7551)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7555
                     (letrec*
                      ((x7557
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7557))))
                    (g7556
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7558
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7559 (if val7243 val7243 #f)))
                             g7559)))))
                       g7558))))
                   g7556)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7560
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7561
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7561 9)))))
                      (letrec*
                       ((g7562
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7563
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7563 10)))))
                            (letrec*
                             ((g7564
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7565
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7565 32))))))
                             g7564)))))
                       g7562))))
                   g7560)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7566
                     (letrec*
                      ((x7567
                        (letrec*
                         ((x7568
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7568)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7567)))))
                   g7566)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7569
                     (letrec*
                      ((x7571
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7571))))
                    (g7570
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7570)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7572 #f)) g7572)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7573
                     (letrec*
                      ((x7574
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7574)))))
                   g7573)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7575
                     (letrec*
                      ((x7577
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7577))))
                    (g7576
                     (letrec*
                      ((x-cnd7578
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7578
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7576)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7579
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7580
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7581
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7581
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7582
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7583
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7583
                                       (letrec*
                                        ((x-cnd7584
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7584
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7585
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7586
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7586
                                             (letrec*
                                              ((x-cnd7587
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7587
                                                (letrec*
                                                 ((x-cnd7588
                                                   (letrec*
                                                    ((x7590
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7589
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7590 x7589)))))
                                                 (if x-cnd7588
                                                   (letrec*
                                                    ((x7592
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7591
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7592 x7591)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7593
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7594
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7594
                                                (letrec*
                                                 ((x-cnd7595
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7595
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7596
                                                       (letrec*
                                                        ((x-cnd7597
                                                          (letrec*
                                                           ((x7598
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
                                                             (= x7598 n)))))
                                                        (if x-cnd7597
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7599
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
                                                                    ((g7600
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7601
                                                                           (letrec*
                                                                            ((x7603
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
                                                                             (x7602
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
                                                                               x7603
                                                                               x7602)))))
                                                                         (if x-cnd7601
                                                                           (letrec*
                                                                            ((x7604
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
                                                                               x7604)))
                                                                           #f)))))
                                                                    g7600))))
                                                                g7599))))
                                                           (letrec*
                                                            ((g7605
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7605))
                                                          #f))))
                                                     g7596))
                                                   #f))
                                                #f)))))
                                         g7593)))))
                                   g7585)))))
                             g7582)))))
                       g7580))))
                   g7579)))
               (cdaaar
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
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7609)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7608)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7607)))))
                   g7606)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7611
                        (letrec*
                         ((x7612
                           (letrec*
                            ((x7613
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7613)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7612)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7611)))))
                   g7610)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7614
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7614)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7617))))
                    (g7616
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7618
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7619 (if val7252 val7252 #f)))
                             g7619)))))
                       g7618))))
                   g7616)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7623))))
                    (g7621
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7624))))
                    (g7622
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
                       ((g7625
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7626 res))
                       g7626))))
                   g7622)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7627
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7627)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7631))))
                    (g7629
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7632))))
                    (g7630
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7633
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7633))))
                   g7630)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7635
                        (letrec*
                         ((x7636
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7636)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7635)))))
                   g7634)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7638
                        (letrec*
                         ((x7639
                           (letrec*
                            ((x7640
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7640)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7639)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7638)))))
                   g7637)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7642
                        (letrec*
                         ((x7643
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7643)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7642)))))
                   g7641)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7645
                        (letrec*
                         ((x7646
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7646)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7645)))))
                   g7644)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7650))))
                    (g7648
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7651))))
                    (g7649
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7652)))))
                   g7649)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7656)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7655)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7654)))))
                   g7653)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7659))))
                    (g7658
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7658)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7660
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7660)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7662
                        (letrec*
                         ((x7663
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7663)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7662)))))
                   g7661)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7664
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7664)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7667))))
                    (g7666
                     (letrec*
                      ((x-cnd7668
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7668
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7671
                           (letrec*
                            ((x7672
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7672))))
                          (x7669
                           (letrec*
                            ((x7670
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7670)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7671 x7669)))))))
                   g7666)))
               (caaadr
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
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7676)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7675)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7674)))))
                   g7673)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x7678
                        (letrec*
                         ((x7679
                           (letrec*
                            ((x7680
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7680)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7679)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7678)))))
                   g7677)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7681
                     (letrec*
                      ((x7683
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7683))))
                    (g7682
                     (letrec*
                      ((x7684
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7684)))))
                   g7682)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7685
                     (letrec*
                      ((x7686
                        (letrec*
                         ((x7687
                           (letrec*
                            ((x7688
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7688)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7687)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7686)))))
                   g7685)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((x7692
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7692))))
                    (g7690
                     (letrec*
                      ((x7693
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7693))))
                    (g7691
                     (letrec*
                      ((x-cnd7694
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7694
                        (letrec*
                         ((g7695
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7695)
                        (letrec*
                         ((x-cnd7696
                           (letrec*
                            ((x7697
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7697)))))
                         (if x-cnd7696
                           (letrec*
                            ((g7698
                              (letrec*
                               ((x7699
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7699)))))
                            g7698)
                           (letrec*
                            ((x-cnd7700
                              (letrec*
                               ((x7701
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7701)))))
                            (if x-cnd7700
                              (letrec*
                               ((g7702
                                 (letrec*
                                  ((x7704
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7703
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7704 x7703)))))
                               g7702)
                              (letrec*
                               ((x-cnd7705
                                 (letrec*
                                  ((x7706
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7706)))))
                               (if x-cnd7705
                                 (letrec*
                                  ((g7707
                                    (letrec*
                                     ((x7710
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7709
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7708
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7710 x7709 x7708)))))
                                  g7707)
                                 (letrec*
                                  ((x-cnd7711
                                    (letrec*
                                     ((x7712
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7712)))))
                                  (if x-cnd7711
                                    (letrec*
                                     ((g7713
                                       (letrec*
                                        ((x7717
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7716
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7715
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7714
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7717 x7716 x7715 x7714)))))
                                     g7713)
                                    (letrec*
                                     ((x-cnd7718
                                       (letrec*
                                        ((x7719
                                          (letrec*
                                           ((x7720
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7720)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7719)))))
                                     (if x-cnd7718
                                       (letrec*
                                        ((g7721
                                          (letrec*
                                           ((x7727
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7726
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7725
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7724
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7722
                                             (letrec*
                                              ((x7723
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7723)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7727
                                              x7726
                                              x7725
                                              x7724
                                              x7722)))))
                                        g7721)
                                       (letrec*
                                        ((x-cnd7728
                                          (letrec*
                                           ((x7729
                                             (letrec*
                                              ((x7730
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x7730)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x7729)))))
                                        (if x-cnd7728
                                          (letrec*
                                           ((g7731
                                             (letrec*
                                              ((x7739
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7738
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7737
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7736
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7734
                                                (letrec*
                                                 ((x7735
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x7735))))
                                               (x7732
                                                (letrec*
                                                 ((x7733
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x7733)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x7739
                                                 x7738
                                                 x7737
                                                 x7736
                                                 x7734
                                                 x7732)))))
                                           g7731)
                                          (letrec*
                                           ((x-cnd7740
                                             (letrec*
                                              ((x7741
                                                (letrec*
                                                 ((x7742
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x7742)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x7741)))))
                                           (if x-cnd7740
                                             (letrec*
                                              ((g7743
                                                (letrec*
                                                 ((x7753
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7752
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7751
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7750
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7748
                                                   (letrec*
                                                    ((x7749
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x7749))))
                                                  (x7746
                                                   (letrec*
                                                    ((x7747
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x7747))))
                                                  (x7744
                                                   (letrec*
                                                    ((x7745
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x7745)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x7753
                                                    x7752
                                                    x7751
                                                    x7750
                                                    x7748
                                                    x7746
                                                    x7744)))))
                                              g7743)
                                             (letrec*
                                              ((g7754
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7754)))))))))))))))))))
                   g7691)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x7757))))
                    (g7756
                     (letrec*
                      ((x-cnd7758
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7758
                        #f
                        (letrec*
                         ((x-cnd7759
                           (letrec*
                            ((x7760
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x7760 e)))))
                         (if x-cnd7759
                           l
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x7761)))))))))
                   g7756)))
               (cddddr
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
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x7765)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x7764)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x7763)))))
                   g7762)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7767
                        (letrec*
                         ((x7768
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x7769)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x7768)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x7767)))))
                   g7766)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7770
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g7770)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x7773))))
                    (g7772
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g7772)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7775
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7775))))
                   g7774)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7777
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x7777)))))
                   g7776)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7779
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7779
                           (letrec*
                            ((x7780
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x7780)))
                           #f))))
                      (letrec*
                       ((g7781
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g7781))))
                   g7778)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7783
                        (letrec*
                         ((x7784
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x7785)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x7784)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x7783)))))
                   g7782)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x-cnd7787
                        (letrec*
                         ((x7788 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x7788 c)))))
                      (if x-cnd7787
                        (letrec*
                         ((x7789 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x7789)))
                        #f))))
                   g7786)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x7792))))
                    (g7791
                     (letrec*
                      ((x-cnd7793
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7793
                        #f
                        (letrec*
                         ((x-cnd7794
                           (letrec*
                            ((x7795
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x7795 k)))))
                         (if x-cnd7794
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7796
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x7796)))))))))
                   g7791)))
               (not (lambda (x) (letrec* ((g7797 (if x #f #t))) g7797)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7798
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g7798)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x7801))))
                    (g7800
                     (letrec*
                      ((x-cnd7802
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7802
                        #f
                        (letrec*
                         ((x-cnd7803
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x7804 e)))))
                         (if x-cnd7803
                           l
                           (letrec*
                            ((x7805
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x7805)))))))))
                   g7800)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7807
                        (letrec*
                         ((x7808
                           (letrec*
                            ((x7809
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x7809)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x7808)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x7807)))))
                   g7806)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x7812))))
                    (g7811
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7813
                             (letrec*
                              ((x-cnd7814
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7814
                                0
                                (letrec*
                                 ((x7815
                                   (letrec*
                                    ((x7816
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x7816)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x7815)))))))
                           g7813))))
                      (letrec*
                       ((g7817
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g7817))))
                   g7811)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7818
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7821))))
                    (g7819
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x7822))))
                    (g7820
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7823
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7823))))
                   g7820)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x7825)))))
                   g7824)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7826
                     (letrec*
                      ((x7827
                        (letrec*
                         ((x7828
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x7828)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x7827)))))
                   g7826)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7829
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x7831))))
                    (g7830
                     (letrec*
                      ((x-cnd7832
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7832
                        #f
                        (letrec*
                         ((x-cnd7833
                           (letrec*
                            ((x7834
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x7834 k)))))
                         (if x-cnd7833
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7835
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x7835)))))))))
                   g7830)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7836
                     (letrec*
                      ((x7837
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x7837)))))
                   g7836)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x7841
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7841))))
                    (g7839
                     (letrec*
                      ((x7842
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x7842))))
                    (g7840
                     (letrec*
                      ((x7843
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x7843)))))
                   g7840)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7845
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7845))))
                   g7844)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7846
                     (letrec*
                      ((x7849
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x7849))))
                    (g7847
                     (letrec*
                      ((x7850
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x7850))))
                    (g7848
                     (letrec*
                      ((x-cnd7851
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7851
                        #t
                        (letrec*
                         ((x-cnd7852
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7852
                           (letrec*
                            ((g7853
                              (letrec*
                               ((x7855
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x7855))))
                             (g7854
                              (letrec*
                               ((x7856
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x7856)))))
                            g7854)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g7848)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x7859))))
                    (g7858
                     (letrec*
                      ((x-cnd7860
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7860
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7858)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x7864
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7864))))
                    (g7862
                     (letrec*
                      ((x7865
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x7865))))
                    (g7863
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7866
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7866))))
                   g7863)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x7868
                        (letrec*
                         ((x7869
                           (letrec*
                            ((x7870
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x7870)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x7869)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x7868)))))
                   g7867)))
               (newline (lambda () (letrec* ((g7871 #f)) g7871)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x7874
                        (letrec*
                         ((x7875
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x7875))))
                       (x7873
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x7874 x7873)))))
                   g7872)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x7878
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x7878))))
                    (g7877
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x7879)))))
                   g7877)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7884
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x7884))))
                    (g7881
                     (letrec*
                      ((x7885
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x7885))))
                    (g7882
                     (letrec*
                      ((x7886
                        (letrec*
                         ((x7887
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x7887)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x7886))))
                    (g7883
                     (letrec*
                      ((x-cnd7888
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7888
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7890
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x7889
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x7890 x7889)))))))
                   g7883)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((x-cnd7892
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7892
                        a
                        (letrec*
                         ((x7893
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x7893)))))))
                   g7891)))
               (lock (lambda (st) (letrec* ((g7894 1)) g7894)))
               (unlock (lambda (st) (letrec* ((g7895 0)) g7895)))
               (f
                (lambda (n st)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x-cnd7897
                        (begin
                          (write '(funapp 1478 35))
                          (display "\n")
                          (> n 0))))
                      (if x-cnd7897
                        (begin
                          (write '(funapp 1479 37))
                          (display "\n")
                          (lock st))
                        st))))
                   g7896)))
               (g
                (lambda (n st)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x-cnd7899
                        (begin
                          (write '(funapp 1486 35))
                          (display "\n")
                          (> n 0))))
                      (if x-cnd7899
                        (begin
                          (write '(funapp 1487 37))
                          (display "\n")
                          (unlock st))
                        st))))
                   g7898)))
               (main
                (lambda (n)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 1492 45))
                          (display "\n")
                          (f n 0))))
                      (begin
                        (write '(funapp 1492 55))
                        (display "\n")
                        (g n x7901)))))
                   g7900))))
              (letrec*
               ((g7902
                 (letrec*
                  ((x7904
                    (letrec*
                     ((xj7349
                       (begin
                         (write '(funapp 1499 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1499 35))
                            (display "\n")
                            'module))))
                      (xk7350
                       (begin
                         (write '(funapp 1499 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1499 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g7905
                        (begin
                          (write '(funapp 1502 25))
                          (display "\n")
                          ((lambda (j7352 k7353 f7354)
                             (letrec*
                              ((g7906
                                (lambda (g7351)
                                  (letrec*
                                   ((g7907
                                     (letrec*
                                      ((x7908
                                        (letrec*
                                         ((x7909
                                           (begin
                                             (write '(funapp 1511 48))
                                             (display "\n")
                                             (integer?/c j7352 k7353 g7351))))
                                         (begin
                                           (write '(funapp 1512 40))
                                           (display "\n")
                                           (f7354 x7909)))))
                                      (begin
                                        (write '(funapp 1513 37))
                                        (display "\n")
                                        ((lambda (g7358 g7359 g7360)
                                           (letrec*
                                            ((g7910
                                              (letrec*
                                               ((x-cnd7911
                                                 (begin
                                                   (write '(funapp 1518 46))
                                                   (display "\n")
                                                   ((lambda (v7357)
                                                      (letrec*
                                                       ((g7912
                                                         (begin
                                                           (write
                                                            '(funapp 1520 58))
                                                           (display "\n")
                                                           (eq? 0 v7357))))
                                                       g7912))
                                                    g7360))))
                                               (if x-cnd7911
                                                 g7360
                                                 (begin
                                                   (write
                                                    '(blame g7358 1525 45))
                                                   (display "\n")
                                                   (error
                                                    (format
                                                     "contract violation, blaming ~a~%"
                                                     g7358)))))))
                                            g7910))
                                         j7352
                                         k7353
                                         x7908)))))
                                   g7907))))
                              g7906))
                           xj7349
                           xk7350
                           main))))
                      g7905)))
                   (x7903 (input)))
                  (begin
                    (write '(funapp 1540 19))
                    (display "\n")
                    (x7904 x7903)))))
               g7902))))
           g7374))))
       g7372)))
    g7371)))
