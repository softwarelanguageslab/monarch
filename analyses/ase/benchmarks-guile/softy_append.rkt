(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7356 #t)) g7356)))
    (meta (lambda (v) (letrec* ((g7357 v)) g7357)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7358
          (letrec*
           ((g7359
             (letrec*
              ((x-e7360 lst))
              (letrec*
               ((v1742 x-e7360))
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
                   ((x-cnd7361
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7361
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
           g7359)))
        g7358)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7362 (lambda (v) (letrec* ((g7363 v)) g7363)))) g7362)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7364
          (letrec*
           ((x7365 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7365)))))
        g7364))))
   (letrec*
    ((g7366
      (letrec*
       ((g7367
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
           ((g7368 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7369
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7370
                     (lambda (k j lst)
                       (letrec*
                        ((g7371
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7372
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7372))
                             lst))))
                        g7371))))
                   g7370)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7373
                     (letrec*
                      ((x-cnd7374
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7374
                        g7261
                        (begin
                          (write '(blame g7259 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7373)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7375
                     (letrec*
                      ((x-cnd7376
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7376
                        g7264
                        (begin
                          (write '(blame g7262 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7375)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7377
                     (letrec*
                      ((x-cnd7378
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7378
                        g7267
                        (begin
                          (write '(blame g7265 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7377)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7379
                     (letrec*
                      ((x-cnd7380
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7381 #t)) g7381)) g7270))))
                      (if x-cnd7380
                        g7270
                        (begin
                          (write '(blame g7268 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7379)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7382
                     (letrec*
                      ((x-cnd7383
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7384 #t)) g7384)) g7273))))
                      (if x-cnd7383
                        g7273
                        (begin
                          (write '(blame g7271 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7382)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7385
                     (letrec*
                      ((x-cnd7386
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7386
                        g7276
                        (begin
                          (write '(blame g7274 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7385)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7387
                     (letrec*
                      ((x-cnd7388
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7388
                        g7279
                        (begin
                          (write '(blame g7277 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7387)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7389
                     (letrec*
                      ((x-cnd7390
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7390
                        g7282
                        (begin
                          (write '(blame g7280 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7389)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7391
                     (letrec*
                      ((x-cnd7392
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7392
                        g7285
                        (begin
                          (write '(blame g7283 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7391)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7393
                     (lambda (k j v)
                       (letrec*
                        ((g7394
                          (letrec*
                           ((x-cnd7395
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7395
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7394))))
                   g7393)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7396
                     (lambda (k j v)
                       (letrec*
                        ((g7397
                          (letrec*
                           ((x-cnd7398
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7398
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7402
                                (letrec*
                                 ((x7403
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7403))))
                               (x7399
                                (letrec*
                                 ((x7401
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7400
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7401 k j x7400)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7402 x7399)))))))
                        g7397))))
                   g7396)))
               (any? (lambda (v) (letrec* ((g7404 #t)) g7404)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7405
                     (letrec*
                      ((x7406
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7406)))))
                   g7405)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7407
                     (letrec*
                      ((x-cnd7408
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7409
                                (letrec*
                                 ((x7410
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7410)))))
                              g7409))
                           g7288))))
                      (if x-cnd7408
                        g7288
                        (begin
                          (write '(blame g7286 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7407)))
               (meta (lambda (v) (letrec* ((g7411 v)) g7411)))
               (+
                (letrec*
                 ((xj7289
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7412
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7293 k7294 f7295)
                         (letrec*
                          ((g7414
                            (lambda (g7291 g7292)
                              (letrec*
                               ((g7415
                                 (letrec*
                                  ((x7416
                                    (letrec*
                                     ((x7418
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7417
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7295 x7418 x7417)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7293 k7294 x7416)))))
                               g7415))))
                          g7414))
                       xj7289
                       xk7290
                       (lambda (a b)
                         (letrec*
                          ((g7413
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7413))))))
                  g7412)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7419
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7300 k7301 f7302)
                         (letrec*
                          ((g7421
                            (lambda (g7298 g7299)
                              (letrec*
                               ((g7422
                                 (letrec*
                                  ((x7423
                                    (letrec*
                                     ((x7425
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7424
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7302 x7425 x7424)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7300 k7301 x7423)))))
                               g7422))))
                          g7421))
                       xj7296
                       xk7297
                       (lambda (a b)
                         (letrec*
                          ((g7420
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7420))))))
                  g7419)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7426
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7307 k7308 f7309)
                         (letrec*
                          ((g7428
                            (lambda (g7305 g7306)
                              (letrec*
                               ((g7429
                                 (letrec*
                                  ((x7430
                                    (letrec*
                                     ((x7432
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7431
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7309 x7432 x7431)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7307 k7308 x7430)))))
                               g7429))))
                          g7428))
                       xj7303
                       xk7304
                       (lambda (a b)
                         (letrec*
                          ((g7427
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7427))))))
                  g7426)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7433
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7435
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7436
                                 (letrec*
                                  ((x7437
                                    (letrec*
                                     ((x7439
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7438
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7316 x7439 x7438)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7437)))))
                               g7436))))
                          g7435))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7434
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7434))))))
                  g7433)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7440
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7442
                            (lambda (g7319)
                              (letrec*
                               ((g7443
                                 (letrec*
                                  ((x7444
                                    (letrec*
                                     ((x7445
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7322 x7445)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7320 k7321 x7444)))))
                               g7443))))
                          g7442))
                       xj7317
                       xk7318
                       (lambda (p)
                         (letrec*
                          ((g7441
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7441))))))
                  g7440)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7446
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7326 k7327 f7328)
                         (letrec*
                          ((g7448
                            (lambda (g7325)
                              (letrec*
                               ((g7449
                                 (letrec*
                                  ((x7450
                                    (letrec*
                                     ((x7451
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7328 x7451)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7326 k7327 x7450)))))
                               g7449))))
                          g7448))
                       xj7323
                       xk7324
                       (lambda (p)
                         (letrec*
                          ((g7447
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7447))))))
                  g7446)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7452
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7454
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7455
                                 (letrec*
                                  ((x7456
                                    (letrec*
                                     ((x7458
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7457
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7335 x7458 x7457)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7333 k7334 x7456)))))
                               g7455))))
                          g7454))
                       xj7329
                       xk7330
                       (lambda (a b)
                         (letrec*
                          ((g7453
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7453))))))
                  g7452)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7459
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7461
                            (lambda (g7338)
                              (letrec*
                               ((g7462
                                 (letrec*
                                  ((x7463
                                    (letrec*
                                     ((x7464
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7341 x7464)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7339 k7340 x7463)))))
                               g7462))))
                          g7461))
                       xj7336
                       xk7337
                       (lambda (v i)
                         (letrec*
                          ((g7460
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7460))))))
                  g7459)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7465
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7467
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7468
                                 (letrec*
                                  ((x7469
                                    (letrec*
                                     ((x7471
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7470
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7348 x7471 x7470)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7346 k7347 x7469)))))
                               g7468))))
                          g7467))
                       xj7342
                       xk7343
                       (lambda (vec i v)
                         (letrec*
                          ((g7466
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7466))))))
                  g7465)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7472
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7472)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7473
                     (letrec*
                      ((x7474
                        (letrec*
                         ((x7475
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7475)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7474)))))
                   g7473)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x7479
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7479))))
                    (g7477
                     (letrec*
                      ((x7480
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7480))))
                    (g7478
                     (letrec*
                      ((x-cnd7481
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7481
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7484
                           (letrec*
                            ((x7485
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7485))))
                          (x7482
                           (letrec*
                            ((x7483
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7483)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7484 x7482)))))))
                   g7478)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7486
                     (letrec*
                      ((x7487
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7487)))))
                   g7486)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7488
                     (letrec*
                      ((x7489
                        (letrec*
                         ((x7490
                           (letrec*
                            ((x7491
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7491)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7490)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7489)))))
                   g7488)))
               (cdadar
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
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7495)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7494)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7493)))))
                   g7492)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7496
                     (letrec*
                      ((x7499
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7499))))
                    (g7497
                     (letrec*
                      ((x7500
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7500))))
                    (g7498
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
                       ((g7501
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7502 res))
                       g7502))))
                   g7498)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7503
                     (letrec*
                      ((x7504
                        (letrec*
                         ((x7505
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7505)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7504)))))
                   g7503)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7506
                     (letrec*
                      ((x7507
                        (letrec*
                         ((x7508
                           (letrec*
                            ((x7509
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7509)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7508)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7507)))))
                   g7506)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7510
                     (letrec*
                      ((x7512
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7512))))
                    (g7511
                     (letrec*
                      ((x-cnd7513
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7513
                        #f
                        (letrec*
                         ((x-cnd7514
                           (letrec*
                            ((x7515
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7515 k)))))
                         (if x-cnd7514
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7516
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7516)))))))))
                   g7511)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7517
                     (letrec*
                      ((x7518
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7518)))))
                   g7517)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7519
                     (letrec*
                      ((x7521
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7521))))
                    (g7520
                     (letrec*
                      ((x-cnd7522
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7522
                        ""
                        (letrec*
                         ((x7525
                           (letrec*
                            ((x7526
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7526))))
                          (x7523
                           (letrec*
                            ((x7524
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7524)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7525 x7523)))))))
                   g7520)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7527
                     (letrec*
                      ((x7530
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7530))))
                    (g7528
                     (letrec*
                      ((x7531
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7531))))
                    (g7529
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7532
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7532))))
                   g7529)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7533
                     (letrec*
                      ((x7534
                        (letrec*
                         ((x7535
                           (letrec*
                            ((x7536
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7536)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7535)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7534)))))
                   g7533)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7537
                     (letrec*
                      ((x7540
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7540))))
                    (g7538
                     (letrec*
                      ((x7541
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7541))))
                    (g7539
                     (letrec*
                      ((x-cnd7542
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7542
                        x
                        (letrec*
                         ((x7544
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7543
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7544 x7543)))))))
                   g7539)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7545
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7545)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7546
                     (letrec*
                      ((x-cnd7547
                        (letrec*
                         ((x7548 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7548)))))
                      (if x-cnd7547
                        (letrec*
                         ((x7549 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7549)))
                        #f))))
                   g7546)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7550
                     (letrec*
                      ((x7552
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7552))))
                    (g7551
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7553
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7554 (if val7243 val7243 #f)))
                             g7554)))))
                       g7553))))
                   g7551)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7555
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7556
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7556 9)))))
                      (letrec*
                       ((g7557
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7558
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7558 10)))))
                            (letrec*
                             ((g7559
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7560
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7560 32))))))
                             g7559)))))
                       g7557))))
                   g7555)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7561
                     (letrec*
                      ((x7562
                        (letrec*
                         ((x7563
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7563)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7562)))))
                   g7561)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7564
                     (letrec*
                      ((x7566
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7566))))
                    (g7565
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7565)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7567 #f)) g7567)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7568
                     (letrec*
                      ((x7569
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7569)))))
                   g7568)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7570
                     (letrec*
                      ((x7572
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7572))))
                    (g7571
                     (letrec*
                      ((x-cnd7573
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7573
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7571)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7574
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7575
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7576
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7576
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7577
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7578
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7578
                                       (letrec*
                                        ((x-cnd7579
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7579
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7580
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7581
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7581
                                             (letrec*
                                              ((x-cnd7582
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7582
                                                (letrec*
                                                 ((x-cnd7583
                                                   (letrec*
                                                    ((x7585
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7584
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7585 x7584)))))
                                                 (if x-cnd7583
                                                   (letrec*
                                                    ((x7587
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7586
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7587 x7586)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7588
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7589
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7589
                                                (letrec*
                                                 ((x-cnd7590
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7590
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7591
                                                       (letrec*
                                                        ((x-cnd7592
                                                          (letrec*
                                                           ((x7593
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
                                                             (= x7593 n)))))
                                                        (if x-cnd7592
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7594
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
                                                                    ((g7595
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7596
                                                                           (letrec*
                                                                            ((x7598
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
                                                                             (x7597
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
                                                                               x7598
                                                                               x7597)))))
                                                                         (if x-cnd7596
                                                                           (letrec*
                                                                            ((x7599
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
                                                                               x7599)))
                                                                           #f)))))
                                                                    g7595))))
                                                                g7594))))
                                                           (letrec*
                                                            ((g7600
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7600))
                                                          #f))))
                                                     g7591))
                                                   #f))
                                                #f)))))
                                         g7588)))))
                                   g7580)))))
                             g7577)))))
                       g7575))))
                   g7574)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7602
                        (letrec*
                         ((x7603
                           (letrec*
                            ((x7604
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7604)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7603)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7602)))))
                   g7601)))
               (caaddr
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
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7608)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7607)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7606)))))
                   g7605)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7609
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7609)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7612
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7612))))
                    (g7611
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7613
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7614 (if val7252 val7252 #f)))
                             g7614)))))
                       g7613))))
                   g7611)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7618))))
                    (g7616
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7619))))
                    (g7617
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
                       ((g7620
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7621 res))
                       g7621))))
                   g7617)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7622
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7622)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7626))))
                    (g7624
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7627))))
                    (g7625
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7628
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7628))))
                   g7625)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7630
                        (letrec*
                         ((x7631
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7631)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7630)))))
                   g7629)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7633
                        (letrec*
                         ((x7634
                           (letrec*
                            ((x7635
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7635)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7634)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7633)))))
                   g7632)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7637
                        (letrec*
                         ((x7638
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7638)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7637)))))
                   g7636)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7640
                        (letrec*
                         ((x7641
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7641)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7640)))))
                   g7639)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7645))))
                    (g7643
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7646))))
                    (g7644
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7647)))))
                   g7644)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7649
                        (letrec*
                         ((x7650
                           (letrec*
                            ((x7651
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7651)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7650)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7649)))))
                   g7648)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7654))))
                    (g7653
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7653)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7655
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7655)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7657
                        (letrec*
                         ((x7658
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7658)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7657)))))
                   g7656)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7659
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7659)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7662))))
                    (g7661
                     (letrec*
                      ((x-cnd7663
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7663
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7666
                           (letrec*
                            ((x7667
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7667))))
                          (x7664
                           (letrec*
                            ((x7665
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7665)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7666 x7664)))))))
                   g7661)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((x7669
                        (letrec*
                         ((x7670
                           (letrec*
                            ((x7671
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7671)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7670)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7669)))))
                   g7668)))
               (cddadr
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
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7675)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7674)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7673)))))
                   g7672)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7676
                     (letrec*
                      ((x7678
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7678))))
                    (g7677
                     (letrec*
                      ((x7679
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7679)))))
                   g7677)))
               (caadar
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
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7683)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7682)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7681)))))
                   g7680)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((x7687
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7687))))
                    (g7685
                     (letrec*
                      ((x7688
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7688))))
                    (g7686
                     (letrec*
                      ((x-cnd7689
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7689
                        (letrec*
                         ((g7690
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7690)
                        (letrec*
                         ((x-cnd7691
                           (letrec*
                            ((x7692
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7692)))))
                         (if x-cnd7691
                           (letrec*
                            ((g7693
                              (letrec*
                               ((x7694
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7694)))))
                            g7693)
                           (letrec*
                            ((x-cnd7695
                              (letrec*
                               ((x7696
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7696)))))
                            (if x-cnd7695
                              (letrec*
                               ((g7697
                                 (letrec*
                                  ((x7699
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7698
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7699 x7698)))))
                               g7697)
                              (letrec*
                               ((x-cnd7700
                                 (letrec*
                                  ((x7701
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7701)))))
                               (if x-cnd7700
                                 (letrec*
                                  ((g7702
                                    (letrec*
                                     ((x7705
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7704
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7703
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7705 x7704 x7703)))))
                                  g7702)
                                 (letrec*
                                  ((x-cnd7706
                                    (letrec*
                                     ((x7707
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7707)))))
                                  (if x-cnd7706
                                    (letrec*
                                     ((g7708
                                       (letrec*
                                        ((x7712
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7711
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7710
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7709
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7712 x7711 x7710 x7709)))))
                                     g7708)
                                    (letrec*
                                     ((x-cnd7713
                                       (letrec*
                                        ((x7714
                                          (letrec*
                                           ((x7715
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7715)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7714)))))
                                     (if x-cnd7713
                                       (letrec*
                                        ((g7716
                                          (letrec*
                                           ((x7722
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7721
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7720
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7719
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7717
                                             (letrec*
                                              ((x7718
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7718)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7722
                                              x7721
                                              x7720
                                              x7719
                                              x7717)))))
                                        g7716)
                                       (letrec*
                                        ((x-cnd7723
                                          (letrec*
                                           ((x7724
                                             (letrec*
                                              ((x7725
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x7725)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x7724)))))
                                        (if x-cnd7723
                                          (letrec*
                                           ((g7726
                                             (letrec*
                                              ((x7734
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7733
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7732
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7731
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7729
                                                (letrec*
                                                 ((x7730
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x7730))))
                                               (x7727
                                                (letrec*
                                                 ((x7728
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x7728)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x7734
                                                 x7733
                                                 x7732
                                                 x7731
                                                 x7729
                                                 x7727)))))
                                           g7726)
                                          (letrec*
                                           ((x-cnd7735
                                             (letrec*
                                              ((x7736
                                                (letrec*
                                                 ((x7737
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x7737)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x7736)))))
                                           (if x-cnd7735
                                             (letrec*
                                              ((g7738
                                                (letrec*
                                                 ((x7748
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7747
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7746
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7745
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7743
                                                   (letrec*
                                                    ((x7744
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x7744))))
                                                  (x7741
                                                   (letrec*
                                                    ((x7742
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x7742))))
                                                  (x7739
                                                   (letrec*
                                                    ((x7740
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x7740)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x7748
                                                    x7747
                                                    x7746
                                                    x7745
                                                    x7743
                                                    x7741
                                                    x7739)))))
                                              g7738)
                                             (letrec*
                                              ((g7749
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7749)))))))))))))))))))
                   g7686)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x7752))))
                    (g7751
                     (letrec*
                      ((x-cnd7753
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7753
                        #f
                        (letrec*
                         ((x-cnd7754
                           (letrec*
                            ((x7755
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x7755 e)))))
                         (if x-cnd7754
                           l
                           (letrec*
                            ((x7756
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x7756)))))))))
                   g7751)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7758
                        (letrec*
                         ((x7759
                           (letrec*
                            ((x7760
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x7760)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x7759)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x7758)))))
                   g7757)))
               (cadddr
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
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x7764)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x7763)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x7762)))))
                   g7761)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7765
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g7765)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7768
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x7768))))
                    (g7767
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g7767)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7770
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7770))))
                   g7769)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x7772)))))
                   g7771)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7774
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x7775)))
                           #f))))
                      (letrec*
                       ((g7776
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g7776))))
                   g7773)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7778
                        (letrec*
                         ((x7779
                           (letrec*
                            ((x7780
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x7780)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x7779)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x7778)))))
                   g7777)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x-cnd7782
                        (letrec*
                         ((x7783 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x7783 c)))))
                      (if x-cnd7782
                        (letrec*
                         ((x7784 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x7784)))
                        #f))))
                   g7781)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x7787))))
                    (g7786
                     (letrec*
                      ((x-cnd7788
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7788
                        #f
                        (letrec*
                         ((x-cnd7789
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x7790 k)))))
                         (if x-cnd7789
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x7791)))))))))
                   g7786)))
               (not (lambda (x) (letrec* ((g7792 (if x #f #t))) g7792)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7793
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g7793)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x7796))))
                    (g7795
                     (letrec*
                      ((x-cnd7797
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7797
                        #f
                        (letrec*
                         ((x-cnd7798
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x7799 e)))))
                         (if x-cnd7798
                           l
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x7800)))))))))
                   g7795)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x7802
                        (letrec*
                         ((x7803
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x7804)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x7803)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x7802)))))
                   g7801)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x7807))))
                    (g7806
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7808
                             (letrec*
                              ((x-cnd7809
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7809
                                0
                                (letrec*
                                 ((x7810
                                   (letrec*
                                    ((x7811
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x7811)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x7810)))))))
                           g7808))))
                      (letrec*
                       ((g7812
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g7812))))
                   g7806)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x7817))))
                    (g7815
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7818
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7818))))
                   g7815)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x7820)))))
                   g7819)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7821
                     (letrec*
                      ((x7822
                        (letrec*
                         ((x7823
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x7823)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x7822)))))
                   g7821)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((x7826
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x7826))))
                    (g7825
                     (letrec*
                      ((x-cnd7827
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7827
                        #f
                        (letrec*
                         ((x-cnd7828
                           (letrec*
                            ((x7829
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x7829 k)))))
                         (if x-cnd7828
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7830
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x7830)))))))))
                   g7825)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7831
                     (letrec*
                      ((x7832
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x7832)))))
                   g7831)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7833
                     (letrec*
                      ((x7836
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7836))))
                    (g7834
                     (letrec*
                      ((x7837
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x7837))))
                    (g7835
                     (letrec*
                      ((x7838
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x7838)))))
                   g7835)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7839
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7840
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7840))))
                   g7839)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((x7844
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x7844))))
                    (g7842
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x7845))))
                    (g7843
                     (letrec*
                      ((x-cnd7846
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7846
                        #t
                        (letrec*
                         ((x-cnd7847
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7847
                           (letrec*
                            ((g7848
                              (letrec*
                               ((x7850
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x7850))))
                             (g7849
                              (letrec*
                               ((x7851
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x7851)))))
                            g7849)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g7843)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((x7854
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x7854))))
                    (g7853
                     (letrec*
                      ((x-cnd7855
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7855
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7853)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7859))))
                    (g7857
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x7860))))
                    (g7858
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7861
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7861))))
                   g7858)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7862
                     (letrec*
                      ((x7863
                        (letrec*
                         ((x7864
                           (letrec*
                            ((x7865
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x7865)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x7864)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x7863)))))
                   g7862)))
               (newline (lambda () (letrec* ((g7866 #f)) g7866)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x7869
                        (letrec*
                         ((x7870
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x7870))))
                       (x7868
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x7869 x7868)))))
                   g7867)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x7873
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x7873))))
                    (g7872
                     (letrec*
                      ((x7874
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x7874)))))
                   g7872)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x7879))))
                    (g7876
                     (letrec*
                      ((x7880
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x7880))))
                    (g7877
                     (letrec*
                      ((x7881
                        (letrec*
                         ((x7882
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x7882)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x7881))))
                    (g7878
                     (letrec*
                      ((x-cnd7883
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7883
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7885
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x7884
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x7885 x7884)))))))
                   g7878)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x-cnd7887
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7887
                        a
                        (letrec*
                         ((x7888
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x7888)))))))
                   g7886)))
               (append
                (lambda (xs ys)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x-cnd7890
                        (begin
                          (write '(funapp 1476 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7890
                        ys
                        (letrec*
                         ((x7893
                           (begin
                             (write '(funapp 1480 34))
                             (display "\n")
                             (car xs)))
                          (x7891
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 1482 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1482 56))
                              (display "\n")
                              (append x7892 ys)))))
                         (begin
                           (write '(funapp 1483 26))
                           (display "\n")
                           (cons x7893 x7891)))))))
                   g7889))))
              (letrec*
               ((g7894
                 (letrec*
                  ((x7897
                    (letrec*
                     ((xj7349
                       (begin
                         (write '(funapp 1490 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1490 35))
                            (display "\n")
                            'module))))
                      (xk7350
                       (begin
                         (write '(funapp 1490 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1490 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g7898
                        (begin
                          (write '(funapp 1493 25))
                          (display "\n")
                          ((lambda (j7353 k7354 f7355)
                             (letrec*
                              ((g7899
                                (lambda (g7351 g7352)
                                  (letrec*
                                   ((g7900
                                     (letrec*
                                      ((x7906
                                        (begin
                                          (write '(funapp 1500 45))
                                          (display "\n")
                                          (listof any/c)))
                                       (x7901
                                        (letrec*
                                         ((x7904
                                           (letrec*
                                            ((x7905
                                              (begin
                                                (write '(funapp 1505 51))
                                                (display "\n")
                                                (listof any/c))))
                                            (begin
                                              (write '(funapp 1506 43))
                                              (display "\n")
                                              (x7905 j7353 k7354 g7351))))
                                          (x7902
                                           (letrec*
                                            ((x7903
                                              (begin
                                                (write '(funapp 1509 51))
                                                (display "\n")
                                                (listof any/c))))
                                            (begin
                                              (write '(funapp 1510 43))
                                              (display "\n")
                                              (x7903 j7353 k7354 g7352)))))
                                         (begin
                                           (write '(funapp 1511 40))
                                           (display "\n")
                                           (f7355 x7904 x7902)))))
                                      (begin
                                        (write '(funapp 1512 37))
                                        (display "\n")
                                        (x7906 j7353 k7354 x7901)))))
                                   g7900))))
                              g7899))
                           xj7349
                           xk7350
                           append))))
                      g7898)))
                   (x7896 (input))
                   (x7895 (input)))
                  (begin
                    (write '(funapp 1521 19))
                    (display "\n")
                    (x7897 x7896 x7895)))))
               g7894))))
           g7369))))
       g7367)))
    g7366)))
