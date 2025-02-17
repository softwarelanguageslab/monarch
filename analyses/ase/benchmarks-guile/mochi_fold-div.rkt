(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
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
                   ((x-cnd7365
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7365
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
           ((x7369 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7369)))))
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
           ((g7372 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7373
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7374
                     (lambda (k j lst)
                       (letrec*
                        ((g7375
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7376
                                  (begin
                                    (write '(funapp 66 47))
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
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7378
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
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
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7380
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
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
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7382
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
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
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7385 #t)) g7385)) g7270))))
                      (if x-cnd7384
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
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
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7388 #t)) g7388)) g7273))))
                      (if x-cnd7387
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
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
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7390
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
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
                          (write '(funapp 126 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7392
                        g7279
                        (begin
                          (write '(blame g7277 127 42))
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
                          (write '(funapp 134 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7394
                        g7282
                        (begin
                          (write '(blame g7280 135 42))
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
                          (write '(funapp 142 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7396
                        g7285
                        (begin
                          (write '(blame g7283 143 42))
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
                               (write '(funapp 153 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7399
                             (begin
                               (write '(funapp 154 42))
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
                               (write '(funapp 165 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7402
                             (begin
                               (write '(funapp 167 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7406
                                (letrec*
                                 ((x7407
                                   (begin
                                     (write '(funapp 171 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 172 34))
                                   (display "\n")
                                   (contract k j x7407))))
                               (x7403
                                (letrec*
                                 ((x7405
                                   (begin
                                     (write '(funapp 175 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7404
                                   (begin
                                     (write '(funapp 175 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 176 34))
                                   (display "\n")
                                   (x7405 k j x7404)))))
                              (begin
                                (write '(funapp 177 31))
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
                          (write '(funapp 184 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 184 55))
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
                          (write '(funapp 192 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7413
                                (letrec*
                                 ((x7414
                                   (begin
                                     (write '(funapp 194 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 194 64))
                                   (display "\n")
                                   (not x7414)))))
                              g7413))
                           g7288))))
                      (if x-cnd7412
                        g7288
                        (begin
                          (write '(blame g7286 199 24))
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
                   (begin (write '(funapp 204 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 204 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7416
                    (begin
                      (write '(funapp 207 21))
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
                                         (write '(funapp 216 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7421
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 218 36))
                                       (display "\n")
                                       (f7295 x7422 x7421)))))
                                  (begin
                                    (write '(funapp 219 33))
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
                              (write '(funapp 224 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7417))))))
                  g7416)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 228 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 228 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7423
                    (begin
                      (write '(funapp 231 21))
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
                                         (write '(funapp 240 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7428
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 242 36))
                                       (display "\n")
                                       (f7302 x7429 x7428)))))
                                  (begin
                                    (write '(funapp 243 33))
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
                              (write '(funapp 248 53))
                              (display "\n")
                              (orig-- a b))))
                          g7424))))))
                  g7423)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 252 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 252 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7430
                    (begin
                      (write '(funapp 255 21))
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
                                         (write '(funapp 264 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7435
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 266 36))
                                       (display "\n")
                                       (f7309 x7436 x7435)))))
                                  (begin
                                    (write '(funapp 267 33))
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
                              (write '(funapp 272 53))
                              (display "\n")
                              (orig-* a b))))
                          g7431))))))
                  g7430)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 276 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 276 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7437
                    (begin
                      (write '(funapp 279 21))
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
                                         (write '(funapp 288 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7442
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 290 36))
                                       (display "\n")
                                       (f7316 x7443 x7442)))))
                                  (begin
                                    (write '(funapp 291 33))
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
                              (write '(funapp 296 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7438))))))
                  g7437)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 300 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 300 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7444
                    (begin
                      (write '(funapp 303 21))
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
                                         (write '(funapp 312 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 313 36))
                                       (display "\n")
                                       (f7322 x7449)))))
                                  (begin
                                    (write '(funapp 314 33))
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
                              (write '(funapp 319 51))
                              (display "\n")
                              (orig-car p))))
                          g7445))))))
                  g7444)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 323 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 323 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7450
                    (begin
                      (write '(funapp 326 21))
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
                                         (write '(funapp 335 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 336 36))
                                       (display "\n")
                                       (f7328 x7455)))))
                                  (begin
                                    (write '(funapp 337 33))
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
                              (write '(funapp 342 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7451))))))
                  g7450)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 346 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 346 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7456
                    (begin
                      (write '(funapp 349 21))
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
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7461
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 360 36))
                                       (display "\n")
                                       (f7335 x7462 x7461)))))
                                  (begin
                                    (write '(funapp 361 33))
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
                              (write '(funapp 367 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7457))))))
                  g7456)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 371 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 371 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7463
                    (begin
                      (write '(funapp 374 21))
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
                                         (write '(funapp 383 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 384 36))
                                       (display "\n")
                                       (f7341 x7468)))))
                                  (begin
                                    (write '(funapp 385 33))
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
                              (write '(funapp 391 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7464))))))
                  g7463)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 395 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 395 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7469
                    (begin
                      (write '(funapp 398 21))
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
                                         (write '(funapp 407 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7474
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 409 36))
                                       (display "\n")
                                       (f7348 x7475 x7474)))))
                                  (begin
                                    (write '(funapp 410 33))
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
                              (write '(funapp 416 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7470))))))
                  g7469)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7476
                     (if cnd
                       (begin (write '(funapp 421 35)) (display "\n") '())
                       (begin
                         (write '(funapp 421 40))
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
                             (write '(funapp 428 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 428 58))
                           (display "\n")
                           (cdr x7479)))))
                      (begin
                        (write '(funapp 429 23))
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
                          (write '(funapp 435 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 435 62))
                        (display "\n")
                        (assert x7483))))
                    (g7481
                     (letrec*
                      ((x7484
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 436 57))
                        (display "\n")
                        (assert x7484))))
                    (g7482
                     (letrec*
                      ((x-cnd7485
                        (begin
                          (write '(funapp 439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7485
                        (begin (write '(funapp 441 24)) (display "\n") '())
                        (letrec*
                         ((x7488
                           (letrec*
                            ((x7489
                              (begin
                                (write '(funapp 443 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 443 61))
                              (display "\n")
                              (f x7489))))
                          (x7486
                           (letrec*
                            ((x7487
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (map f x7487)))))
                         (begin
                           (write '(funapp 445 26))
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
                          (write '(funapp 450 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 450 55))
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
                                (write '(funapp 459 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 459 61))
                              (display "\n")
                              (car x7495)))))
                         (begin
                           (write '(funapp 460 26))
                           (display "\n")
                           (cdr x7494)))))
                      (begin
                        (write '(funapp 461 23))
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
                                (write '(funapp 470 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 470 61))
                              (display "\n")
                              (cdr x7499)))))
                         (begin
                           (write '(funapp 471 26))
                           (display "\n")
                           (car x7498)))))
                      (begin
                        (write '(funapp 472 23))
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
                          (write '(funapp 478 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 478 60))
                        (display "\n")
                        (assert x7503))))
                    (g7501
                     (letrec*
                      ((x7504
                        (begin
                          (write '(funapp 480 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 480 59))
                        (display "\n")
                        (assert x7504))))
                    (g7502
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
                       ((g7505
                         (begin
                           (write '(funapp 486 32))
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
                             (write '(funapp 494 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 494 58))
                           (display "\n")
                           (cdr x7509)))))
                      (begin
                        (write '(funapp 495 23))
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
                                (write '(funapp 504 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 504 61))
                              (display "\n")
                              (car x7513)))))
                         (begin
                           (write '(funapp 505 26))
                           (display "\n")
                           (car x7512)))))
                      (begin
                        (write '(funapp 506 23))
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
                          (write '(funapp 511 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 511 57))
                        (display "\n")
                        (assert x7516))))
                    (g7515
                     (letrec*
                      ((x-cnd7517
                        (begin
                          (write '(funapp 514 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7517
                        #f
                        (letrec*
                         ((x-cnd7518
                           (letrec*
                            ((x7519
                              (begin
                                (write '(funapp 519 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 519 56))
                              (display "\n")
                              (eq? x7519 k)))))
                         (if x-cnd7518
                           (begin
                             (write '(funapp 521 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7520
                              (begin
                                (write '(funapp 522 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 522 55))
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
                          (write '(funapp 527 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 527 60))
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
                          (write '(funapp 532 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 532 57))
                        (display "\n")
                        (assert x7525))))
                    (g7524
                     (letrec*
                      ((x-cnd7526
                        (begin
                          (write '(funapp 535 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7526
                        ""
                        (letrec*
                         ((x7529
                           (letrec*
                            ((x7530
                              (begin
                                (write '(funapp 540 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 540 55))
                              (display "\n")
                              (char->string x7530))))
                          (x7527
                           (letrec*
                            ((x7528
                              (begin
                                (write '(funapp 542 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 542 55))
                              (display "\n")
                              (list->string x7528)))))
                         (begin
                           (write '(funapp 543 26))
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
                          (write '(funapp 548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 548 58))
                        (display "\n")
                        (assert x7534))))
                    (g7532
                     (letrec*
                      ((x7535
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7535))))
                    (g7533
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 552 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7536
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 554 52))
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
                                (write '(funapp 564 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 564 61))
                              (display "\n")
                              (cdr x7540)))))
                         (begin
                           (write '(funapp 565 26))
                           (display "\n")
                           (cdr x7539)))))
                      (begin
                        (write '(funapp 566 23))
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
                          (write '(funapp 571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 571 57))
                        (display "\n")
                        (assert x7544))))
                    (g7542
                     (letrec*
                      ((x7545
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7545))))
                    (g7543
                     (letrec*
                      ((x-cnd7546
                        (begin
                          (write '(funapp 575 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7546
                        x
                        (letrec*
                         ((x7548
                           (begin
                             (write '(funapp 579 34))
                             (display "\n")
                             (cdr x)))
                          (x7547
                           (begin
                             (write '(funapp 579 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 580 26))
                           (display "\n")
                           (list-tail x7548 x7547)))))))
                   g7543)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7549
                     (begin (write '(funapp 582 49)) (display "\n") '())))
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
                           (write '(funapp 589 48))
                           (display "\n")
                           (char-ci>=? c x7552)))))
                      (if x-cnd7551
                        (letrec*
                         ((x7553 #\z))
                         (begin
                           (write '(funapp 591 48))
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
                          (write '(funapp 597 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 597 59))
                        (display "\n")
                        (assert x7556))))
                    (g7555
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 600 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7557
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 606 39))
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
                             (write '(funapp 618 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 618 62))
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
                                   (write '(funapp 626 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 627 32))
                                 (display "\n")
                                 (= x7562 10)))))
                            (letrec*
                             ((g7563
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7564
                                    (begin
                                      (write '(funapp 633 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 634 35))
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
                             (write '(funapp 643 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 643 58))
                           (display "\n")
                           (cdr x7567)))))
                      (begin
                        (write '(funapp 644 23))
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
                          (write '(funapp 649 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 649 59))
                        (display "\n")
                        (assert x7570))))
                    (g7569
                     (begin (write '(funapp 650 28)) (display "\n") (> x 0))))
                   g7569)))
               ($pc (begin (write '(funapp 652 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7571 #f)) g7571)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7572
                     (letrec*
                      ((x7573
                        (begin
                          (write '(funapp 658 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 658 55))
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
                          (write '(funapp 663 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 663 59))
                        (display "\n")
                        (assert x7576))))
                    (g7575
                     (letrec*
                      ((x-cnd7577
                        (begin
                          (write '(funapp 666 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7577
                        (begin
                          (write '(funapp 667 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 667 49))
                          (display "\n")
                          (floor x))))))
                   g7575)))
               ($cmp (begin (write '(funapp 669 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7578
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 675 33))
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
                                   (write '(funapp 683 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7580
                                 (begin
                                   (write '(funapp 684 46))
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
                                         (write '(funapp 692 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7582
                                       (letrec*
                                        ((x-cnd7583
                                          (begin
                                            (write '(funapp 695 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7583
                                          (begin
                                            (write '(funapp 696 55))
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
                                               (write '(funapp 705 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7585
                                             (letrec*
                                              ((x-cnd7586
                                                (begin
                                                  (write '(funapp 708 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7586
                                                (letrec*
                                                 ((x-cnd7587
                                                   (letrec*
                                                    ((x7589
                                                      (begin
                                                        (write
                                                         '(funapp 713 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7588
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 715 53))
                                                      (display "\n")
                                                      (equal? x7589 x7588)))))
                                                 (if x-cnd7587
                                                   (letrec*
                                                    ((x7591
                                                      (begin
                                                        (write
                                                         '(funapp 718 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7590
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 720 53))
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
                                                  (write '(funapp 729 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7593
                                                (letrec*
                                                 ((x-cnd7594
                                                   (begin
                                                     (write '(funapp 732 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7594
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 735 57))
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
                                                                  742
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 744 60))
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
                                                                          753
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
                                                                                   762
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
                                                                               x7602
                                                                               x7601)))))
                                                                         (if x-cnd7600
                                                                           (letrec*
                                                                            ((x7603
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
                                                                               x7603)))
                                                                           #f)))))
                                                                    g7599))))
                                                                g7598))))
                                                           (letrec*
                                                            ((g7604
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   784
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
                                (write '(funapp 802 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 802 61))
                              (display "\n")
                              (car x7608)))))
                         (begin
                           (write '(funapp 803 26))
                           (display "\n")
                           (car x7607)))))
                      (begin
                        (write '(funapp 804 23))
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
                                (write '(funapp 813 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 813 61))
                              (display "\n")
                              (cdr x7612)))))
                         (begin
                           (write '(funapp 814 26))
                           (display "\n")
                           (car x7611)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (car x7610)))))
                   g7609)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7613
                     (begin
                       (write '(funapp 817 53))
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
                          (write '(funapp 821 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 821 59))
                        (display "\n")
                        (assert x7616))))
                    (g7615
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 824 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7617
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 830 39))
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
                          (write '(funapp 840 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 840 60))
                        (display "\n")
                        (assert x7622))))
                    (g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 842 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 842 59))
                        (display "\n")
                        (assert x7623))))
                    (g7621
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
                       ((g7624
                         (begin
                           (write '(funapp 848 32))
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
                       (write '(funapp 851 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 851 57)) (display "\n") '())))))
                   g7626)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 855 58))
                        (display "\n")
                        (assert x7630))))
                    (g7628
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7631))))
                    (g7629
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 859 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7632
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 861 52))
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
                             (write '(funapp 869 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 869 58))
                           (display "\n")
                           (car x7635)))))
                      (begin
                        (write '(funapp 870 23))
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
                                (write '(funapp 879 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 879 61))
                              (display "\n")
                              (cdr x7639)))))
                         (begin
                           (write '(funapp 880 26))
                           (display "\n")
                           (car x7638)))))
                      (begin
                        (write '(funapp 881 23))
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
                             (write '(funapp 889 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 889 58))
                           (display "\n")
                           (cdr x7642)))))
                      (begin
                        (write '(funapp 890 23))
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
                             (write '(funapp 897 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 897 58))
                           (display "\n")
                           (car x7645)))))
                      (begin
                        (write '(funapp 898 23))
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
                          (write '(funapp 903 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 903 58))
                        (display "\n")
                        (assert x7649))))
                    (g7647
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c2))))
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
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 905 66))
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
                                (write '(funapp 915 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 915 61))
                              (display "\n")
                              (car x7655)))))
                         (begin
                           (write '(funapp 916 26))
                           (display "\n")
                           (car x7654)))))
                      (begin
                        (write '(funapp 917 23))
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
                          (write '(funapp 922 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7658))))
                    (g7657
                     (begin (write '(funapp 923 28)) (display "\n") (< x 0))))
                   g7657)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7659
                     (begin
                       (write '(funapp 925 53))
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
                             (write '(funapp 931 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 931 58))
                           (display "\n")
                           (car x7662)))))
                      (begin
                        (write '(funapp 932 23))
                        (display "\n")
                        (car x7661)))))
                   g7660)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7663
                     (begin (write '(funapp 934 51)) (display "\n") '())))
                   g7663)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x7666
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 938 57))
                        (display "\n")
                        (assert x7666))))
                    (g7665
                     (letrec*
                      ((x-cnd7667
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7667
                        (begin (write '(funapp 943 24)) (display "\n") '())
                        (letrec*
                         ((x7670
                           (letrec*
                            ((x7671
                              (begin
                                (write '(funapp 945 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 945 61))
                              (display "\n")
                              (reverse x7671))))
                          (x7668
                           (letrec*
                            ((x7669
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (list x7669)))))
                         (begin
                           (write '(funapp 947 26))
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
                                (write '(funapp 956 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 956 61))
                              (display "\n")
                              (car x7675)))))
                         (begin
                           (write '(funapp 957 26))
                           (display "\n")
                           (car x7674)))))
                      (begin
                        (write '(funapp 958 23))
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
                                (write '(funapp 967 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 967 61))
                              (display "\n")
                              (car x7679)))))
                         (begin
                           (write '(funapp 968 26))
                           (display "\n")
                           (cdr x7678)))))
                      (begin
                        (write '(funapp 969 23))
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
                          (write '(funapp 974 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 974 59))
                        (display "\n")
                        (assert x7682))))
                    (g7681
                     (letrec*
                      ((x7683
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 975 60))
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
                                (write '(funapp 984 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 984 61))
                              (display "\n")
                              (cdr x7687)))))
                         (begin
                           (write '(funapp 985 26))
                           (display "\n")
                           (car x7686)))))
                      (begin
                        (write '(funapp 986 23))
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
                          (write '(funapp 992 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 992 59))
                        (display "\n")
                        (assert x7691))))
                    (g7689
                     (letrec*
                      ((x7692
                        (begin
                          (write '(funapp 993 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 993 60))
                        (display "\n")
                        (assert x7692))))
                    (g7690
                     (letrec*
                      ((x-cnd7693
                        (begin
                          (write '(funapp 996 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7693
                        (letrec*
                         ((g7694
                           (begin
                             (write '(funapp 998 42))
                             (display "\n")
                             (proc))))
                         g7694)
                        (letrec*
                         ((x-cnd7695
                           (letrec*
                            ((x7696
                              (begin
                                (write '(funapp 1001 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1001 58))
                              (display "\n")
                              (null? x7696)))))
                         (if x-cnd7695
                           (letrec*
                            ((g7697
                              (letrec*
                               ((x7698
                                 (begin
                                   (write '(funapp 1005 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1005 61))
                                 (display "\n")
                                 (proc x7698)))))
                            g7697)
                           (letrec*
                            ((x-cnd7699
                              (letrec*
                               ((x7700
                                 (begin
                                   (write '(funapp 1009 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1009 62))
                                 (display "\n")
                                 (null? x7700)))))
                            (if x-cnd7699
                              (letrec*
                               ((g7701
                                 (letrec*
                                  ((x7703
                                    (begin
                                      (write '(funapp 1014 43))
                                      (display "\n")
                                      (car args)))
                                   (x7702
                                    (begin
                                      (write '(funapp 1014 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1015 35))
                                    (display "\n")
                                    (proc x7703 x7702)))))
                               g7701)
                              (letrec*
                               ((x-cnd7704
                                 (letrec*
                                  ((x7705
                                    (begin
                                      (write '(funapp 1020 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1021 35))
                                    (display "\n")
                                    (null? x7705)))))
                               (if x-cnd7704
                                 (letrec*
                                  ((g7706
                                    (letrec*
                                     ((x7709
                                       (begin
                                         (write '(funapp 1026 46))
                                         (display "\n")
                                         (car args)))
                                      (x7708
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7707
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1029 38))
                                       (display "\n")
                                       (proc x7709 x7708 x7707)))))
                                  g7706)
                                 (letrec*
                                  ((x-cnd7710
                                    (letrec*
                                     ((x7711
                                       (begin
                                         (write '(funapp 1034 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1035 38))
                                       (display "\n")
                                       (null? x7711)))))
                                  (if x-cnd7710
                                    (letrec*
                                     ((g7712
                                       (letrec*
                                        ((x7716
                                          (begin
                                            (write '(funapp 1040 49))
                                            (display "\n")
                                            (car args)))
                                         (x7715
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7714
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7713
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1044 41))
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
                                               (write '(funapp 1051 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1052 44))
                                             (display "\n")
                                             (cdr x7719)))))
                                        (begin
                                          (write '(funapp 1053 41))
                                          (display "\n")
                                          (null? x7718)))))
                                     (if x-cnd7717
                                       (letrec*
                                        ((g7720
                                          (letrec*
                                           ((x7726
                                             (begin
                                               (write '(funapp 1058 52))
                                               (display "\n")
                                               (car args)))
                                            (x7725
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7724
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7723
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7721
                                             (letrec*
                                              ((x7722
                                                (begin
                                                  (write '(funapp 1064 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (car x7722)))))
                                           (begin
                                             (write '(funapp 1066 44))
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
                                                  (write '(funapp 1078 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1079 47))
                                                (display "\n")
                                                (cddr x7729)))))
                                           (begin
                                             (write '(funapp 1080 44))
                                             (display "\n")
                                             (null? x7728)))))
                                        (if x-cnd7727
                                          (letrec*
                                           ((g7730
                                             (letrec*
                                              ((x7738
                                                (begin
                                                  (write '(funapp 1085 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7737
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7736
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7735
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7733
                                                (letrec*
                                                 ((x7734
                                                   (begin
                                                     (write '(funapp 1091 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1092 50))
                                                   (display "\n")
                                                   (car x7734))))
                                               (x7731
                                                (letrec*
                                                 ((x7732
                                                   (begin
                                                     (write '(funapp 1095 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1096 50))
                                                   (display "\n")
                                                   (cadr x7732)))))
                                              (begin
                                                (write '(funapp 1097 47))
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
                                                     (write '(funapp 1110 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1111 50))
                                                   (display "\n")
                                                   (cdddr x7741)))))
                                              (begin
                                                (write '(funapp 1112 47))
                                                (display "\n")
                                                (null? x7740)))))
                                           (if x-cnd7739
                                             (letrec*
                                              ((g7742
                                                (letrec*
                                                 ((x7752
                                                   (begin
                                                     (write '(funapp 1117 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7751
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7750
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7749
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7747
                                                   (letrec*
                                                    ((x7748
                                                      (begin
                                                        (write
                                                         '(funapp 1123 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1124 53))
                                                      (display "\n")
                                                      (car x7748))))
                                                  (x7745
                                                   (letrec*
                                                    ((x7746
                                                      (begin
                                                        (write
                                                         '(funapp 1127 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1128 53))
                                                      (display "\n")
                                                      (cadr x7746))))
                                                  (x7743
                                                   (letrec*
                                                    ((x7744
                                                      (begin
                                                        (write
                                                         '(funapp 1131 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1132 53))
                                                      (display "\n")
                                                      (caddr x7744)))))
                                                 (begin
                                                   (write '(funapp 1133 50))
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
                                                  (write '(funapp 1144 49))
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
                          (write '(funapp 1150 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1150 57))
                        (display "\n")
                        (assert x7756))))
                    (g7755
                     (letrec*
                      ((x-cnd7757
                        (begin
                          (write '(funapp 1153 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7757
                        #f
                        (letrec*
                         ((x-cnd7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1158 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1158 55))
                              (display "\n")
                              (equal? x7759 e)))))
                         (if x-cnd7758
                           l
                           (letrec*
                            ((x7760
                              (begin
                                (write '(funapp 1161 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1161 55))
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7764)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (cdr x7763)))))
                      (begin
                        (write '(funapp 1172 23))
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
                                (write '(funapp 1181 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1181 61))
                              (display "\n")
                              (cdr x7768)))))
                         (begin
                           (write '(funapp 1182 26))
                           (display "\n")
                           (cdr x7767)))))
                      (begin
                        (write '(funapp 1183 23))
                        (display "\n")
                        (car x7766)))))
                   g7765)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7769
                     (begin
                       (write '(funapp 1185 53))
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
                          (write '(funapp 1189 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1189 59))
                        (display "\n")
                        (assert x7772))))
                    (g7771
                     (begin (write '(funapp 1190 28)) (display "\n") (= x 0))))
                   g7771)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1197 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7774
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1199 52))
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
                          (write '(funapp 1205 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1205 55))
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
                             (write '(funapp 1215 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7778
                           (letrec*
                            ((x7779
                              (begin
                                (write '(funapp 1217 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1217 55))
                              (display "\n")
                              (list? x7779)))
                           #f))))
                      (letrec*
                       ((g7780
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1220 52))
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
                                (write '(funapp 1230 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1230 61))
                              (display "\n")
                              (car x7784)))))
                         (begin
                           (write '(funapp 1231 26))
                           (display "\n")
                           (cdr x7783)))))
                      (begin
                        (write '(funapp 1232 23))
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
                           (write '(funapp 1239 58))
                           (display "\n")
                           (char<=? x7787 c)))))
                      (if x-cnd7786
                        (letrec*
                         ((x7788 #\9))
                         (begin
                           (write '(funapp 1241 48))
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
                          (write '(funapp 1248 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1248 57))
                        (display "\n")
                        (assert x7791))))
                    (g7790
                     (letrec*
                      ((x-cnd7792
                        (begin
                          (write '(funapp 1251 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7792
                        #f
                        (letrec*
                         ((x-cnd7793
                           (letrec*
                            ((x7794
                              (begin
                                (write '(funapp 1256 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1256 56))
                              (display "\n")
                              (eqv? x7794 k)))))
                         (if x-cnd7793
                           (begin
                             (write '(funapp 1258 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7795
                              (begin
                                (write '(funapp 1259 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1259 55))
                              (display "\n")
                              (assq k x7795)))))))))
                   g7790)))
               (not (lambda (x) (letrec* ((g7796 (if x #f #t))) g7796)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7797
                     (begin
                       (write '(funapp 1263 50))
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
                          (write '(funapp 1267 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1267 57))
                        (display "\n")
                        (assert x7800))))
                    (g7799
                     (letrec*
                      ((x-cnd7801
                        (begin
                          (write '(funapp 1270 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7801
                        #f
                        (letrec*
                         ((x-cnd7802
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 1275 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1275 55))
                              (display "\n")
                              (eq? x7803 e)))))
                         (if x-cnd7802
                           l
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 1278 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1278 55))
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
                                (write '(funapp 1287 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1287 61))
                              (display "\n")
                              (car x7808)))))
                         (begin
                           (write '(funapp 1288 26))
                           (display "\n")
                           (cdr x7807)))))
                      (begin
                        (write '(funapp 1289 23))
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
                          (write '(funapp 1294 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1294 57))
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
                                  (write '(funapp 1302 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7813
                                0
                                (letrec*
                                 ((x7814
                                   (letrec*
                                    ((x7815
                                      (begin
                                        (write '(funapp 1307 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1307 63))
                                      (display "\n")
                                      (rec x7815)))))
                                 (begin
                                   (write '(funapp 1308 34))
                                   (display "\n")
                                   (+ 1 x7814)))))))
                           g7812))))
                      (letrec*
                       ((g7816
                         (begin
                           (write '(funapp 1310 40))
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
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7820))))
                    (g7818
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7821))))
                    (g7819
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1319 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7822
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1321 52))
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
                          (write '(funapp 1327 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1327 65))
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
                             (write '(funapp 1334 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1334 58))
                           (display "\n")
                           (car x7827)))))
                      (begin
                        (write '(funapp 1335 23))
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
                          (write '(funapp 1340 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1340 57))
                        (display "\n")
                        (assert x7830))))
                    (g7829
                     (letrec*
                      ((x-cnd7831
                        (begin
                          (write '(funapp 1343 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7831
                        #f
                        (letrec*
                         ((x-cnd7832
                           (letrec*
                            ((x7833
                              (begin
                                (write '(funapp 1348 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1348 56))
                              (display "\n")
                              (equal? x7833 k)))))
                         (if x-cnd7832
                           (begin
                             (write '(funapp 1350 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7834
                              (begin
                                (write '(funapp 1351 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1351 55))
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
                          (write '(funapp 1356 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1356 55))
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
                          (write '(funapp 1361 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1361 58))
                        (display "\n")
                        (assert x7840))))
                    (g7838
                     (letrec*
                      ((x7841
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c2))))
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
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1363 63))
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
                          (write '(funapp 1370 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7844
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1372 52))
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
                          (write '(funapp 1378 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1378 62))
                        (display "\n")
                        (assert x7848))))
                    (g7846
                     (letrec*
                      ((x7849
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1379 57))
                        (display "\n")
                        (assert x7849))))
                    (g7847
                     (letrec*
                      ((x-cnd7850
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7850
                        #t
                        (letrec*
                         ((x-cnd7851
                           (begin
                             (write '(funapp 1386 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7851
                           (letrec*
                            ((g7852
                              (letrec*
                               ((x7854
                                 (begin
                                   (write '(funapp 1389 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1389 64))
                                 (display "\n")
                                 (f x7854))))
                             (g7853
                              (letrec*
                               ((x7855
                                 (begin
                                   (write '(funapp 1391 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1391 58))
                                 (display "\n")
                                 (for-each f x7855)))))
                            g7853)
                           (begin
                             (write '(funapp 1393 27))
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
                          (write '(funapp 1398 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1398 59))
                        (display "\n")
                        (assert x7858))))
                    (g7857
                     (letrec*
                      ((x-cnd7859
                        (begin
                          (write '(funapp 1400 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7859
                        (begin
                          (write '(funapp 1400 67))
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
                          (write '(funapp 1405 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1405 58))
                        (display "\n")
                        (assert x7863))))
                    (g7861
                     (letrec*
                      ((x7864
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7864))))
                    (g7862
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1409 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7865
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1411 52))
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
                                (write '(funapp 1421 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1421 61))
                              (display "\n")
                              (cdr x7869)))))
                         (begin
                           (write '(funapp 1422 26))
                           (display "\n")
                           (cdr x7868)))))
                      (begin
                        (write '(funapp 1423 23))
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
                             (write '(funapp 1431 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1431 58))
                           (display "\n")
                           (abs x7874))))
                       (x7872
                        (begin
                          (write '(funapp 1432 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1433 23))
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
                          (write '(funapp 1439 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1439 59))
                        (display "\n")
                        (assert x7877))))
                    (g7876
                     (letrec*
                      ((x7878
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1440 56))
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
                          (write '(funapp 1445 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1445 57))
                        (display "\n")
                        (assert x7883))))
                    (g7880
                     (letrec*
                      ((x7884
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1446 63))
                        (display "\n")
                        (assert x7884))))
                    (g7881
                     (letrec*
                      ((x7885
                        (letrec*
                         ((x7886
                           (begin
                             (write '(funapp 1449 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1449 61))
                           (display "\n")
                           (< index x7886)))))
                      (begin
                        (write '(funapp 1450 23))
                        (display "\n")
                        (assert x7885))))
                    (g7882
                     (letrec*
                      ((x-cnd7887
                        (begin
                          (write '(funapp 1453 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7887
                        (begin
                          (write '(funapp 1455 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7889
                           (begin
                             (write '(funapp 1457 34))
                             (display "\n")
                             (cdr l)))
                          (x7888
                           (begin
                             (write '(funapp 1457 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1458 26))
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
                          (write '(funapp 1465 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7891
                        a
                        (letrec*
                         ((x7892
                           (begin
                             (write '(funapp 1468 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1468 57))
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
                          (write '(funapp 1475 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7894
                        z
                        (letrec*
                         ((x7896
                           (letrec*
                            ((x7897
                              (begin
                                (write '(funapp 1479 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1479 61))
                              (display "\n")
                              (f z x7897))))
                          (x7895
                           (begin
                             (write '(funapp 1480 34))
                             (display "\n")
                             (cdr l))))
                         (begin
                           (write '(funapp 1481 26))
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
                          (write '(funapp 1488 27))
                          (display "\n")
                          (rand))))
                      (letrec*
                       ((g7899
                         (letrec*
                          ((x-cnd7900
                            (begin
                              (write '(funapp 1492 39))
                              (display "\n")
                              (> n 0))))
                          (if x-cnd7900
                            n
                            (begin
                              (write '(funapp 1493 43))
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
                          (write '(funapp 1501 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd7902
                        empty
                        (letrec*
                         ((x7905
                           (begin
                             (write '(funapp 1505 34))
                             (display "\n")
                             (randpos rand)))
                          (x7903
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (mk-list rand x7904)))))
                         (begin
                           (write '(funapp 1508 26))
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
                          (write '(funapp 1514 39))
                          (display "\n")
                          (mk-list rand n))))
                      (begin
                        (write '(funapp 1514 58))
                        (display "\n")
                        (foldl / m x7907)))))
                   g7906))))
              (letrec*
               ((g7908
                 (letrec*
                  ((x7912
                    (letrec*
                     ((xj7349
                       (letrec*
                        ((x7913
                          (begin
                            (write '(funapp 1521 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 1521 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1521 61))
                             (display "\n")
                             'module)
                           x7913))))
                      (xk7350
                       (letrec*
                        ((x7914
                          (begin
                            (write '(funapp 1523 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 1523 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1523 54))
                             (display "\n")
                             'importer)
                           x7914)))))
                     (letrec*
                      ((g7915
                        (begin
                          (write '(funapp 1526 25))
                          (display "\n")
                          ((lambda (j7354 k7355 f7356)
                             (letrec*
                              ((g7916
                                (lambda (g7351 g7352 g7353)
                                  (letrec*
                                   ((g7917
                                     (letrec*
                                      ((x7918
                                        (letrec*
                                         ((x7921
                                           (begin
                                             (write '(funapp 1536 42))
                                             (display "\n")
                                             ((lambda (j7357 k7358 f7359)
                                                (letrec*
                                                 ((g7922
                                                   (lambda ()
                                                     (letrec*
                                                      ((g7923
                                                        (letrec*
                                                         ((x7924
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                1543
                                                                62))
                                                             (display "\n")
                                                             (f7359))))
                                                         (begin
                                                           (write
                                                            '(funapp 1544 54))
                                                           (display "\n")
                                                           (integer?/c
                                                            j7357
                                                            k7358
                                                            x7924)))))
                                                      g7923))))
                                                 g7922))
                                              j7354
                                              k7355
                                              g7351)))
                                          (x7920
                                           (begin
                                             (write '(funapp 1553 48))
                                             (display "\n")
                                             (integer?/c j7354 k7355 g7352)))
                                          (x7919
                                           (begin
                                             (write '(funapp 1554 48))
                                             (display "\n")
                                             (integer?/c j7354 k7355 g7353))))
                                         (begin
                                           (write '(funapp 1555 40))
                                           (display "\n")
                                           (f7356 x7921 x7920 x7919)))))
                                      (begin
                                        (write '(funapp 1556 37))
                                        (display "\n")
                                        (real?/c j7354 k7355 x7918)))))
                                   g7917))))
                              g7916))
                           xj7349
                           xk7350
                           main))))
                      g7915)))
                   (x7911 (input))
                   (x7910 (input))
                   (x7909 (input)))
                  (begin
                    (write '(funapp 1566 19))
                    (display "\n")
                    (x7912 x7911 x7910 x7909)))))
               g7908))))
           g7373))))
       g7371)))
    g7370)))
