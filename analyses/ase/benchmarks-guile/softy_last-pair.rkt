(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7355 #t)) g7355)))
    (meta (lambda (v) (letrec* ((g7356 v)) g7356)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7357
          (letrec*
           ((g7358
             (letrec*
              ((x-e7359 lst))
              (letrec*
               ((v1742 x-e7359))
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
                   ((x-cnd7360
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7360
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
           g7358)))
        g7357)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7361 (lambda (v) (letrec* ((g7362 v)) g7362)))) g7361)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7363
          (letrec*
           ((x7364 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7364)))))
        g7363))))
   (letrec*
    ((g7365
      (letrec*
       ((g7366
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
           ((g7367 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7368
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7369
                     (lambda (k j lst)
                       (letrec*
                        ((g7370
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7371
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7371))
                             lst))))
                        g7370))))
                   g7369)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7372
                     (letrec*
                      ((x-cnd7373
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7373
                        g7261
                        (begin
                          (write '(blame g7259 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7372)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7374
                     (letrec*
                      ((x-cnd7375
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7375
                        g7264
                        (begin
                          (write '(blame g7262 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7374)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7376
                     (letrec*
                      ((x-cnd7377
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7377
                        g7267
                        (begin
                          (write '(blame g7265 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7376)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7378
                     (letrec*
                      ((x-cnd7379
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7380 #t)) g7380)) g7270))))
                      (if x-cnd7379
                        g7270
                        (begin
                          (write '(blame g7268 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7378)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7381
                     (letrec*
                      ((x-cnd7382
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7383 #t)) g7383)) g7273))))
                      (if x-cnd7382
                        g7273
                        (begin
                          (write '(blame g7271 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7381)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7384
                     (letrec*
                      ((x-cnd7385
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7385
                        g7276
                        (begin
                          (write '(blame g7274 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7384)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7386
                     (letrec*
                      ((x-cnd7387
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7387
                        g7279
                        (begin
                          (write '(blame g7277 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7386)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7388
                     (letrec*
                      ((x-cnd7389
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7389
                        g7282
                        (begin
                          (write '(blame g7280 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7388)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7390
                     (letrec*
                      ((x-cnd7391
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7391
                        g7285
                        (begin
                          (write '(blame g7283 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7390)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7392
                     (lambda (k j v)
                       (letrec*
                        ((g7393
                          (letrec*
                           ((x-cnd7394
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7394
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7393))))
                   g7392)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7395
                     (lambda (k j v)
                       (letrec*
                        ((g7396
                          (letrec*
                           ((x-cnd7397
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7397
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7401
                                (letrec*
                                 ((x7402
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7402))))
                               (x7398
                                (letrec*
                                 ((x7400
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7399
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7400 k j x7399)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7401 x7398)))))))
                        g7396))))
                   g7395)))
               (any? (lambda (v) (letrec* ((g7403 #t)) g7403)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7404
                     (letrec*
                      ((x7405
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7405)))))
                   g7404)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7406
                     (letrec*
                      ((x-cnd7407
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7408
                                (letrec*
                                 ((x7409
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7409)))))
                              g7408))
                           g7288))))
                      (if x-cnd7407
                        g7288
                        (begin
                          (write '(blame g7286 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7406)))
               (meta (lambda (v) (letrec* ((g7410 v)) g7410)))
               (+
                (letrec*
                 ((xj7289
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7411
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7293 k7294 f7295)
                         (letrec*
                          ((g7413
                            (lambda (g7291 g7292)
                              (letrec*
                               ((g7414
                                 (letrec*
                                  ((x7415
                                    (letrec*
                                     ((x7417
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7416
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7295 x7417 x7416)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7293 k7294 x7415)))))
                               g7414))))
                          g7413))
                       xj7289
                       xk7290
                       (lambda (a b)
                         (letrec*
                          ((g7412
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7412))))))
                  g7411)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7418
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7300 k7301 f7302)
                         (letrec*
                          ((g7420
                            (lambda (g7298 g7299)
                              (letrec*
                               ((g7421
                                 (letrec*
                                  ((x7422
                                    (letrec*
                                     ((x7424
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7423
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7302 x7424 x7423)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7300 k7301 x7422)))))
                               g7421))))
                          g7420))
                       xj7296
                       xk7297
                       (lambda (a b)
                         (letrec*
                          ((g7419
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7419))))))
                  g7418)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7425
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7307 k7308 f7309)
                         (letrec*
                          ((g7427
                            (lambda (g7305 g7306)
                              (letrec*
                               ((g7428
                                 (letrec*
                                  ((x7429
                                    (letrec*
                                     ((x7431
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7430
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7309 x7431 x7430)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7307 k7308 x7429)))))
                               g7428))))
                          g7427))
                       xj7303
                       xk7304
                       (lambda (a b)
                         (letrec*
                          ((g7426
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7426))))))
                  g7425)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7432
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7434
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7435
                                 (letrec*
                                  ((x7436
                                    (letrec*
                                     ((x7438
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7437
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7316 x7438 x7437)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7436)))))
                               g7435))))
                          g7434))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7433
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7433))))))
                  g7432)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7439
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7441
                            (lambda (g7319)
                              (letrec*
                               ((g7442
                                 (letrec*
                                  ((x7443
                                    (letrec*
                                     ((x7444
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7322 x7444)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7320 k7321 x7443)))))
                               g7442))))
                          g7441))
                       xj7317
                       xk7318
                       (lambda (p)
                         (letrec*
                          ((g7440
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7440))))))
                  g7439)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7445
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7326 k7327 f7328)
                         (letrec*
                          ((g7447
                            (lambda (g7325)
                              (letrec*
                               ((g7448
                                 (letrec*
                                  ((x7449
                                    (letrec*
                                     ((x7450
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7328 x7450)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7326 k7327 x7449)))))
                               g7448))))
                          g7447))
                       xj7323
                       xk7324
                       (lambda (p)
                         (letrec*
                          ((g7446
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7446))))))
                  g7445)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7451
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7453
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7454
                                 (letrec*
                                  ((x7455
                                    (letrec*
                                     ((x7457
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7456
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7335 x7457 x7456)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7333 k7334 x7455)))))
                               g7454))))
                          g7453))
                       xj7329
                       xk7330
                       (lambda (a b)
                         (letrec*
                          ((g7452
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7452))))))
                  g7451)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7458
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7460
                            (lambda (g7338)
                              (letrec*
                               ((g7461
                                 (letrec*
                                  ((x7462
                                    (letrec*
                                     ((x7463
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7341 x7463)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7339 k7340 x7462)))))
                               g7461))))
                          g7460))
                       xj7336
                       xk7337
                       (lambda (v i)
                         (letrec*
                          ((g7459
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7459))))))
                  g7458)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7464
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7466
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7467
                                 (letrec*
                                  ((x7468
                                    (letrec*
                                     ((x7470
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7469
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7348 x7470 x7469)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7346 k7347 x7468)))))
                               g7467))))
                          g7466))
                       xj7342
                       xk7343
                       (lambda (vec i v)
                         (letrec*
                          ((g7465
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7465))))))
                  g7464)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7471
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7471)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7472
                     (letrec*
                      ((x7473
                        (letrec*
                         ((x7474
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7474)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7473)))))
                   g7472)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7475
                     (letrec*
                      ((x7478
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7478))))
                    (g7476
                     (letrec*
                      ((x7479
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7479))))
                    (g7477
                     (letrec*
                      ((x-cnd7480
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7480
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7483
                           (letrec*
                            ((x7484
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7484))))
                          (x7481
                           (letrec*
                            ((x7482
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7482)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7483 x7481)))))))
                   g7477)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7485
                     (letrec*
                      ((x7486
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7486)))))
                   g7485)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7487
                     (letrec*
                      ((x7488
                        (letrec*
                         ((x7489
                           (letrec*
                            ((x7490
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7490)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7489)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7488)))))
                   g7487)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7491
                     (letrec*
                      ((x7492
                        (letrec*
                         ((x7493
                           (letrec*
                            ((x7494
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7494)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7493)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7492)))))
                   g7491)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7495
                     (letrec*
                      ((x7498
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7498))))
                    (g7496
                     (letrec*
                      ((x7499
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7499))))
                    (g7497
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
                       ((g7500
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7501 res))
                       g7501))))
                   g7497)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7502
                     (letrec*
                      ((x7503
                        (letrec*
                         ((x7504
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7504)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7503)))))
                   g7502)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7505
                     (letrec*
                      ((x7506
                        (letrec*
                         ((x7507
                           (letrec*
                            ((x7508
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7508)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7507)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7506)))))
                   g7505)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7509
                     (letrec*
                      ((x7511
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7511))))
                    (g7510
                     (letrec*
                      ((x-cnd7512
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7512
                        #f
                        (letrec*
                         ((x-cnd7513
                           (letrec*
                            ((x7514
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7514 k)))))
                         (if x-cnd7513
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7515
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7515)))))))))
                   g7510)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7516
                     (letrec*
                      ((x7517
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7517)))))
                   g7516)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7518
                     (letrec*
                      ((x7520
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7520))))
                    (g7519
                     (letrec*
                      ((x-cnd7521
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7521
                        ""
                        (letrec*
                         ((x7524
                           (letrec*
                            ((x7525
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7525))))
                          (x7522
                           (letrec*
                            ((x7523
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7523)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7524 x7522)))))))
                   g7519)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7526
                     (letrec*
                      ((x7529
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7529))))
                    (g7527
                     (letrec*
                      ((x7530
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7530))))
                    (g7528
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7531
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7531))))
                   g7528)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7532
                     (letrec*
                      ((x7533
                        (letrec*
                         ((x7534
                           (letrec*
                            ((x7535
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7535)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7534)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7533)))))
                   g7532)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7536
                     (letrec*
                      ((x7539
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7539))))
                    (g7537
                     (letrec*
                      ((x7540
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7540))))
                    (g7538
                     (letrec*
                      ((x-cnd7541
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7541
                        x
                        (letrec*
                         ((x7543
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7542
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7543 x7542)))))))
                   g7538)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7544
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7544)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7545
                     (letrec*
                      ((x-cnd7546
                        (letrec*
                         ((x7547 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7547)))))
                      (if x-cnd7546
                        (letrec*
                         ((x7548 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7548)))
                        #f))))
                   g7545)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7549
                     (letrec*
                      ((x7551
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7551))))
                    (g7550
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7552
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7553 (if val7243 val7243 #f)))
                             g7553)))))
                       g7552))))
                   g7550)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7554
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7555
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7555 9)))))
                      (letrec*
                       ((g7556
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7557
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7557 10)))))
                            (letrec*
                             ((g7558
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7559
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7559 32))))))
                             g7558)))))
                       g7556))))
                   g7554)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7560
                     (letrec*
                      ((x7561
                        (letrec*
                         ((x7562
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7562)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7561)))))
                   g7560)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7563
                     (letrec*
                      ((x7565
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7565))))
                    (g7564
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7564)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7566 #f)) g7566)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7567
                     (letrec*
                      ((x7568
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7568)))))
                   g7567)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7569
                     (letrec*
                      ((x7571
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7571))))
                    (g7570
                     (letrec*
                      ((x-cnd7572
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7572
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7570)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7573
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7574
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7575
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7575
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7576
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7577
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7577
                                       (letrec*
                                        ((x-cnd7578
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7578
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7579
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7580
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7580
                                             (letrec*
                                              ((x-cnd7581
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7581
                                                (letrec*
                                                 ((x-cnd7582
                                                   (letrec*
                                                    ((x7584
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7583
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7584 x7583)))))
                                                 (if x-cnd7582
                                                   (letrec*
                                                    ((x7586
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7585
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7586 x7585)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7587
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7588
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7588
                                                (letrec*
                                                 ((x-cnd7589
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7589
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7590
                                                       (letrec*
                                                        ((x-cnd7591
                                                          (letrec*
                                                           ((x7592
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
                                                             (= x7592 n)))))
                                                        (if x-cnd7591
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7593
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
                                                                    ((g7594
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7595
                                                                           (letrec*
                                                                            ((x7597
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
                                                                             (x7596
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
                                                                               x7597
                                                                               x7596)))))
                                                                         (if x-cnd7595
                                                                           (letrec*
                                                                            ((x7598
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
                                                                               x7598)))
                                                                           #f)))))
                                                                    g7594))))
                                                                g7593))))
                                                           (letrec*
                                                            ((g7599
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7599))
                                                          #f))))
                                                     g7590))
                                                   #f))
                                                #f)))))
                                         g7587)))))
                                   g7579)))))
                             g7576)))))
                       g7574))))
                   g7573)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7600
                     (letrec*
                      ((x7601
                        (letrec*
                         ((x7602
                           (letrec*
                            ((x7603
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7603)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7602)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7601)))))
                   g7600)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7605
                        (letrec*
                         ((x7606
                           (letrec*
                            ((x7607
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7607)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7606)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7605)))))
                   g7604)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7608
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7608)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7611
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7611))))
                    (g7610
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7612
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7613 (if val7252 val7252 #f)))
                             g7613)))))
                       g7612))))
                   g7610)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7617))))
                    (g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7618))))
                    (g7616
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
                       ((g7619
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7620 res))
                       g7620))))
                   g7616)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7621
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7621)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7625))))
                    (g7623
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7626))))
                    (g7624
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7627
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7627))))
                   g7624)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7629
                        (letrec*
                         ((x7630
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7630)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7629)))))
                   g7628)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7632
                        (letrec*
                         ((x7633
                           (letrec*
                            ((x7634
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7634)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7633)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7632)))))
                   g7631)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7636
                        (letrec*
                         ((x7637
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7637)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7636)))))
                   g7635)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7639
                        (letrec*
                         ((x7640
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7640)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7639)))))
                   g7638)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7644
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7644))))
                    (g7642
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7645))))
                    (g7643
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7646)))))
                   g7643)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7648
                        (letrec*
                         ((x7649
                           (letrec*
                            ((x7650
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7650)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7649)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7648)))))
                   g7647)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7653))))
                    (g7652
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7652)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7654
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7654)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7656
                        (letrec*
                         ((x7657
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7657)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7656)))))
                   g7655)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7658
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7658)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7661))))
                    (g7660
                     (letrec*
                      ((x-cnd7662
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7662
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7665
                           (letrec*
                            ((x7666
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7666))))
                          (x7663
                           (letrec*
                            ((x7664
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7664)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7665 x7663)))))))
                   g7660)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x7668
                        (letrec*
                         ((x7669
                           (letrec*
                            ((x7670
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7670)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7669)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7668)))))
                   g7667)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7672
                        (letrec*
                         ((x7673
                           (letrec*
                            ((x7674
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7674)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7673)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7672)))))
                   g7671)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7675
                     (letrec*
                      ((x7677
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7677))))
                    (g7676
                     (letrec*
                      ((x7678
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7678)))))
                   g7676)))
               (caadar
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
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7682)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7681)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7680)))))
                   g7679)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7683
                     (letrec*
                      ((x7686
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7686))))
                    (g7684
                     (letrec*
                      ((x7687
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7687))))
                    (g7685
                     (letrec*
                      ((x-cnd7688
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7688
                        (letrec*
                         ((g7689
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7689)
                        (letrec*
                         ((x-cnd7690
                           (letrec*
                            ((x7691
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7691)))))
                         (if x-cnd7690
                           (letrec*
                            ((g7692
                              (letrec*
                               ((x7693
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7693)))))
                            g7692)
                           (letrec*
                            ((x-cnd7694
                              (letrec*
                               ((x7695
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7695)))))
                            (if x-cnd7694
                              (letrec*
                               ((g7696
                                 (letrec*
                                  ((x7698
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7697
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7698 x7697)))))
                               g7696)
                              (letrec*
                               ((x-cnd7699
                                 (letrec*
                                  ((x7700
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7700)))))
                               (if x-cnd7699
                                 (letrec*
                                  ((g7701
                                    (letrec*
                                     ((x7704
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7703
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7702
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7704 x7703 x7702)))))
                                  g7701)
                                 (letrec*
                                  ((x-cnd7705
                                    (letrec*
                                     ((x7706
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7706)))))
                                  (if x-cnd7705
                                    (letrec*
                                     ((g7707
                                       (letrec*
                                        ((x7711
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7710
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7709
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7708
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7711 x7710 x7709 x7708)))))
                                     g7707)
                                    (letrec*
                                     ((x-cnd7712
                                       (letrec*
                                        ((x7713
                                          (letrec*
                                           ((x7714
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7714)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7713)))))
                                     (if x-cnd7712
                                       (letrec*
                                        ((g7715
                                          (letrec*
                                           ((x7721
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7720
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7719
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7718
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7716
                                             (letrec*
                                              ((x7717
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7717)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7721
                                              x7720
                                              x7719
                                              x7718
                                              x7716)))))
                                        g7715)
                                       (letrec*
                                        ((x-cnd7722
                                          (letrec*
                                           ((x7723
                                             (letrec*
                                              ((x7724
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x7724)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x7723)))))
                                        (if x-cnd7722
                                          (letrec*
                                           ((g7725
                                             (letrec*
                                              ((x7733
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7732
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7731
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7730
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7728
                                                (letrec*
                                                 ((x7729
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x7729))))
                                               (x7726
                                                (letrec*
                                                 ((x7727
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x7727)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x7733
                                                 x7732
                                                 x7731
                                                 x7730
                                                 x7728
                                                 x7726)))))
                                           g7725)
                                          (letrec*
                                           ((x-cnd7734
                                             (letrec*
                                              ((x7735
                                                (letrec*
                                                 ((x7736
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x7736)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x7735)))))
                                           (if x-cnd7734
                                             (letrec*
                                              ((g7737
                                                (letrec*
                                                 ((x7747
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7746
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7745
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7744
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7742
                                                   (letrec*
                                                    ((x7743
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x7743))))
                                                  (x7740
                                                   (letrec*
                                                    ((x7741
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x7741))))
                                                  (x7738
                                                   (letrec*
                                                    ((x7739
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x7739)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x7747
                                                    x7746
                                                    x7745
                                                    x7744
                                                    x7742
                                                    x7740
                                                    x7738)))))
                                              g7737)
                                             (letrec*
                                              ((g7748
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7748)))))))))))))))))))
                   g7685)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7751
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x7751))))
                    (g7750
                     (letrec*
                      ((x-cnd7752
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7752
                        #f
                        (letrec*
                         ((x-cnd7753
                           (letrec*
                            ((x7754
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x7754 e)))))
                         (if x-cnd7753
                           l
                           (letrec*
                            ((x7755
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x7755)))))))))
                   g7750)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7757
                        (letrec*
                         ((x7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x7759)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x7758)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x7757)))))
                   g7756)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7761
                        (letrec*
                         ((x7762
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x7763)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x7762)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x7761)))))
                   g7760)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7764
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g7764)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x7767))))
                    (g7766
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g7766)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7769
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7769))))
                   g7768)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x7771)))))
                   g7770)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7773
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7773
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x7774)))
                           #f))))
                      (letrec*
                       ((g7775
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g7775))))
                   g7772)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7777
                        (letrec*
                         ((x7778
                           (letrec*
                            ((x7779
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x7779)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x7778)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x7777)))))
                   g7776)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x-cnd7781
                        (letrec*
                         ((x7782 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x7782 c)))))
                      (if x-cnd7781
                        (letrec*
                         ((x7783 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x7783)))
                        #f))))
                   g7780)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x7786))))
                    (g7785
                     (letrec*
                      ((x-cnd7787
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7787
                        #f
                        (letrec*
                         ((x-cnd7788
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x7789 k)))))
                         (if x-cnd7788
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x7790)))))))))
                   g7785)))
               (not (lambda (x) (letrec* ((g7791 (if x #f #t))) g7791)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7792
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g7792)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x7795))))
                    (g7794
                     (letrec*
                      ((x-cnd7796
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7796
                        #f
                        (letrec*
                         ((x-cnd7797
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x7798 e)))))
                         (if x-cnd7797
                           l
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x7799)))))))))
                   g7794)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7801
                        (letrec*
                         ((x7802
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x7803)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x7802)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x7801)))))
                   g7800)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x7806))))
                    (g7805
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7807
                             (letrec*
                              ((x-cnd7808
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7808
                                0
                                (letrec*
                                 ((x7809
                                   (letrec*
                                    ((x7810
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x7810)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x7809)))))))
                           g7807))))
                      (letrec*
                       ((g7811
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g7811))))
                   g7805)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7817
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7817))))
                   g7814)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7818
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x7819)))))
                   g7818)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7820
                     (letrec*
                      ((x7821
                        (letrec*
                         ((x7822
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x7822)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x7821)))))
                   g7820)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7823
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x7825))))
                    (g7824
                     (letrec*
                      ((x-cnd7826
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7826
                        #f
                        (letrec*
                         ((x-cnd7827
                           (letrec*
                            ((x7828
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x7828 k)))))
                         (if x-cnd7827
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7829
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x7829)))))))))
                   g7824)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7830
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x7831)))))
                   g7830)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7832
                     (letrec*
                      ((x7835
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7835))))
                    (g7833
                     (letrec*
                      ((x7836
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x7836))))
                    (g7834
                     (letrec*
                      ((x7837
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x7837)))))
                   g7834)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7839
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7839))))
                   g7838)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((x7843
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x7843))))
                    (g7841
                     (letrec*
                      ((x7844
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x7844))))
                    (g7842
                     (letrec*
                      ((x-cnd7845
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7845
                        #t
                        (letrec*
                         ((x-cnd7846
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7846
                           (letrec*
                            ((g7847
                              (letrec*
                               ((x7849
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x7849))))
                             (g7848
                              (letrec*
                               ((x7850
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x7850)))))
                            g7848)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g7842)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7851
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x7853))))
                    (g7852
                     (letrec*
                      ((x-cnd7854
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7854
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7852)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7855
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7858))))
                    (g7856
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x7859))))
                    (g7857
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7860
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7860))))
                   g7857)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x7862
                        (letrec*
                         ((x7863
                           (letrec*
                            ((x7864
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x7864)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x7863)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x7862)))))
                   g7861)))
               (newline (lambda () (letrec* ((g7865 #f)) g7865)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((x7868
                        (letrec*
                         ((x7869
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x7869))))
                       (x7867
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x7868 x7867)))))
                   g7866)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x7872
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x7872))))
                    (g7871
                     (letrec*
                      ((x7873
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x7873)))))
                   g7871)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x7878
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x7878))))
                    (g7875
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x7879))))
                    (g7876
                     (letrec*
                      ((x7880
                        (letrec*
                         ((x7881
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x7881)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x7880))))
                    (g7877
                     (letrec*
                      ((x-cnd7882
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7882
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7884
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x7883
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x7884 x7883)))))))
                   g7877)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x-cnd7886
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7886
                        a
                        (letrec*
                         ((x7887
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x7887)))))))
                   g7885)))
               (lastpair
                (lambda (x)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x-cnd7889
                        (letrec*
                         ((x7890
                           (begin
                             (write '(funapp 1476 52))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1476 62))
                           (display "\n")
                           (pair? x7890)))))
                      (if x-cnd7889
                        (letrec*
                         ((x7891
                           (begin
                             (write '(funapp 1478 42))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1478 52))
                           (display "\n")
                           (lastpair x7891)))
                        x))))
                   g7888))))
              (letrec*
               ((g7892
                 (letrec*
                  ((x7894
                    (letrec*
                     ((xj7349
                       (begin
                         (write '(funapp 1486 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1486 35))
                            (display "\n")
                            'module))))
                      (xk7350
                       (begin
                         (write '(funapp 1486 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1486 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g7895
                        (begin
                          (write '(funapp 1489 25))
                          (display "\n")
                          ((lambda (j7352 k7353 f7354)
                             (letrec*
                              ((g7896
                                (lambda (g7351)
                                  (letrec*
                                   ((g7897
                                     (letrec*
                                      ((x7898
                                        (letrec*
                                         ((x7899
                                           (begin
                                             (write '(funapp 1498 48))
                                             (display "\n")
                                             (pair? j7352 k7353 g7351))))
                                         (begin
                                           (write '(funapp 1499 40))
                                           (display "\n")
                                           (f7354 x7899)))))
                                      (begin
                                        (write '(funapp 1500 37))
                                        (display "\n")
                                        (pair? j7352 k7353 x7898)))))
                                   g7897))))
                              g7896))
                           xj7349
                           xk7350
                           lastpair))))
                      g7895)))
                   (x7893 (input)))
                  (begin
                    (write '(funapp 1508 19))
                    (display "\n")
                    (x7894 x7893)))))
               g7892))))
           g7368))))
       g7366)))
    g7365)))
