(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7354 #t)) g7354)))
    (meta (lambda (v) (letrec* ((g7355 v)) g7355)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7356
          (letrec*
           ((g7357
             (letrec*
              ((x-e7358 lst))
              (letrec*
               ((v1742 x-e7358))
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
                   ((x-cnd7359
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7359
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
           g7357)))
        g7356)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7360 (lambda (v) (letrec* ((g7361 v)) g7361)))) g7360)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7362
          (letrec*
           ((x7363 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7363)))))
        g7362))))
   (letrec*
    ((g7364
      (letrec*
       ((g7365
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
           ((g7366 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7367
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7368
                     (lambda (k j lst)
                       (letrec*
                        ((g7369
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7370
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7370))
                             lst))))
                        g7369))))
                   g7368)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7371
                     (letrec*
                      ((x-cnd7372
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7372
                        g7261
                        (begin
                          (write '(blame g7259 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7371)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7373
                     (letrec*
                      ((x-cnd7374
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7374
                        g7264
                        (begin
                          (write '(blame g7262 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7373)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7375
                     (letrec*
                      ((x-cnd7376
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7376
                        g7267
                        (begin
                          (write '(blame g7265 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7375)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7377
                     (letrec*
                      ((x-cnd7378
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7379 #t)) g7379)) g7270))))
                      (if x-cnd7378
                        g7270
                        (begin
                          (write '(blame g7268 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7377)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7380
                     (letrec*
                      ((x-cnd7381
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7382 #t)) g7382)) g7273))))
                      (if x-cnd7381
                        g7273
                        (begin
                          (write '(blame g7271 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7380)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7383
                     (letrec*
                      ((x-cnd7384
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7384
                        g7276
                        (begin
                          (write '(blame g7274 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7383)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7385
                     (letrec*
                      ((x-cnd7386
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7386
                        g7279
                        (begin
                          (write '(blame g7277 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7385)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7387
                     (letrec*
                      ((x-cnd7388
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7388
                        g7282
                        (begin
                          (write '(blame g7280 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7387)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7389
                     (letrec*
                      ((x-cnd7390
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7390
                        g7285
                        (begin
                          (write '(blame g7283 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7389)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7391
                     (lambda (k j v)
                       (letrec*
                        ((g7392
                          (letrec*
                           ((x-cnd7393
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7393
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7392))))
                   g7391)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7394
                     (lambda (k j v)
                       (letrec*
                        ((g7395
                          (letrec*
                           ((x-cnd7396
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7396
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7400
                                (letrec*
                                 ((x7401
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7401))))
                               (x7397
                                (letrec*
                                 ((x7399
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7398
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7399 k j x7398)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7400 x7397)))))))
                        g7395))))
                   g7394)))
               (any? (lambda (v) (letrec* ((g7402 #t)) g7402)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7403
                     (letrec*
                      ((x7404
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7404)))))
                   g7403)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7405
                     (letrec*
                      ((x-cnd7406
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7407
                                (letrec*
                                 ((x7408
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7408)))))
                              g7407))
                           g7288))))
                      (if x-cnd7406
                        g7288
                        (begin
                          (write '(blame g7286 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7405)))
               (meta (lambda (v) (letrec* ((g7409 v)) g7409)))
               (+
                (letrec*
                 ((xj7289
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7410
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7293 k7294 f7295)
                         (letrec*
                          ((g7412
                            (lambda (g7291 g7292)
                              (letrec*
                               ((g7413
                                 (letrec*
                                  ((x7414
                                    (letrec*
                                     ((x7416
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7415
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7295 x7416 x7415)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7293 k7294 x7414)))))
                               g7413))))
                          g7412))
                       xj7289
                       xk7290
                       (lambda (a b)
                         (letrec*
                          ((g7411
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7411))))))
                  g7410)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7417
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7300 k7301 f7302)
                         (letrec*
                          ((g7419
                            (lambda (g7298 g7299)
                              (letrec*
                               ((g7420
                                 (letrec*
                                  ((x7421
                                    (letrec*
                                     ((x7423
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7422
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7302 x7423 x7422)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7300 k7301 x7421)))))
                               g7420))))
                          g7419))
                       xj7296
                       xk7297
                       (lambda (a b)
                         (letrec*
                          ((g7418
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7418))))))
                  g7417)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7424
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7307 k7308 f7309)
                         (letrec*
                          ((g7426
                            (lambda (g7305 g7306)
                              (letrec*
                               ((g7427
                                 (letrec*
                                  ((x7428
                                    (letrec*
                                     ((x7430
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7429
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7309 x7430 x7429)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7307 k7308 x7428)))))
                               g7427))))
                          g7426))
                       xj7303
                       xk7304
                       (lambda (a b)
                         (letrec*
                          ((g7425
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7425))))))
                  g7424)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7431
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7433
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7434
                                 (letrec*
                                  ((x7435
                                    (letrec*
                                     ((x7437
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7436
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7316 x7437 x7436)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7435)))))
                               g7434))))
                          g7433))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7432
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7432))))))
                  g7431)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7438
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7440
                            (lambda (g7319)
                              (letrec*
                               ((g7441
                                 (letrec*
                                  ((x7442
                                    (letrec*
                                     ((x7443
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7322 x7443)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7320 k7321 x7442)))))
                               g7441))))
                          g7440))
                       xj7317
                       xk7318
                       (lambda (p)
                         (letrec*
                          ((g7439
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7439))))))
                  g7438)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7444
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7326 k7327 f7328)
                         (letrec*
                          ((g7446
                            (lambda (g7325)
                              (letrec*
                               ((g7447
                                 (letrec*
                                  ((x7448
                                    (letrec*
                                     ((x7449
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7328 x7449)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7326 k7327 x7448)))))
                               g7447))))
                          g7446))
                       xj7323
                       xk7324
                       (lambda (p)
                         (letrec*
                          ((g7445
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7445))))))
                  g7444)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7450
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7452
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7453
                                 (letrec*
                                  ((x7454
                                    (letrec*
                                     ((x7456
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7455
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7335 x7456 x7455)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7333 k7334 x7454)))))
                               g7453))))
                          g7452))
                       xj7329
                       xk7330
                       (lambda (a b)
                         (letrec*
                          ((g7451
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7451))))))
                  g7450)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7457
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7459
                            (lambda (g7338)
                              (letrec*
                               ((g7460
                                 (letrec*
                                  ((x7461
                                    (letrec*
                                     ((x7462
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7341 x7462)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7339 k7340 x7461)))))
                               g7460))))
                          g7459))
                       xj7336
                       xk7337
                       (lambda (v i)
                         (letrec*
                          ((g7458
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7458))))))
                  g7457)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7463
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7465
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7466
                                 (letrec*
                                  ((x7467
                                    (letrec*
                                     ((x7469
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7468
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7348 x7469 x7468)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7346 k7347 x7467)))))
                               g7466))))
                          g7465))
                       xj7342
                       xk7343
                       (lambda (vec i v)
                         (letrec*
                          ((g7464
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7464))))))
                  g7463)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7470
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7470)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7471
                     (letrec*
                      ((x7472
                        (letrec*
                         ((x7473
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7473)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7472)))))
                   g7471)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7474
                     (letrec*
                      ((x7477
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7477))))
                    (g7475
                     (letrec*
                      ((x7478
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7478))))
                    (g7476
                     (letrec*
                      ((x-cnd7479
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7479
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7482
                           (letrec*
                            ((x7483
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7483))))
                          (x7480
                           (letrec*
                            ((x7481
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7481)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7482 x7480)))))))
                   g7476)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7484
                     (letrec*
                      ((x7485
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7485)))))
                   g7484)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7486
                     (letrec*
                      ((x7487
                        (letrec*
                         ((x7488
                           (letrec*
                            ((x7489
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7489)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7488)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7487)))))
                   g7486)))
               (cdadar
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
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7493)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7492)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7491)))))
                   g7490)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7494
                     (letrec*
                      ((x7497
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7497))))
                    (g7495
                     (letrec*
                      ((x7498
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7498))))
                    (g7496
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
                       ((g7499
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7500 res))
                       g7500))))
                   g7496)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7501
                     (letrec*
                      ((x7502
                        (letrec*
                         ((x7503
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7503)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7502)))))
                   g7501)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7504
                     (letrec*
                      ((x7505
                        (letrec*
                         ((x7506
                           (letrec*
                            ((x7507
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7507)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7506)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7505)))))
                   g7504)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7508
                     (letrec*
                      ((x7510
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7510))))
                    (g7509
                     (letrec*
                      ((x-cnd7511
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7511
                        #f
                        (letrec*
                         ((x-cnd7512
                           (letrec*
                            ((x7513
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7513 k)))))
                         (if x-cnd7512
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7514
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7514)))))))))
                   g7509)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7515
                     (letrec*
                      ((x7516
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7516)))))
                   g7515)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7517
                     (letrec*
                      ((x7519
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7519))))
                    (g7518
                     (letrec*
                      ((x-cnd7520
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7520
                        ""
                        (letrec*
                         ((x7523
                           (letrec*
                            ((x7524
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7524))))
                          (x7521
                           (letrec*
                            ((x7522
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7522)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7523 x7521)))))))
                   g7518)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7525
                     (letrec*
                      ((x7528
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7528))))
                    (g7526
                     (letrec*
                      ((x7529
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7529))))
                    (g7527
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7530
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7530))))
                   g7527)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7531
                     (letrec*
                      ((x7532
                        (letrec*
                         ((x7533
                           (letrec*
                            ((x7534
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7534)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7533)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7532)))))
                   g7531)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7535
                     (letrec*
                      ((x7538
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7538))))
                    (g7536
                     (letrec*
                      ((x7539
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7539))))
                    (g7537
                     (letrec*
                      ((x-cnd7540
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7540
                        x
                        (letrec*
                         ((x7542
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7541
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7542 x7541)))))))
                   g7537)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7543
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7543)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7544
                     (letrec*
                      ((x-cnd7545
                        (letrec*
                         ((x7546 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7546)))))
                      (if x-cnd7545
                        (letrec*
                         ((x7547 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7547)))
                        #f))))
                   g7544)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7548
                     (letrec*
                      ((x7550
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7550))))
                    (g7549
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7551
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7552 (if val7243 val7243 #f)))
                             g7552)))))
                       g7551))))
                   g7549)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7553
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7554
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7554 9)))))
                      (letrec*
                       ((g7555
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7556
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7556 10)))))
                            (letrec*
                             ((g7557
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7558
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7558 32))))))
                             g7557)))))
                       g7555))))
                   g7553)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7559
                     (letrec*
                      ((x7560
                        (letrec*
                         ((x7561
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7561)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7560)))))
                   g7559)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7562
                     (letrec*
                      ((x7564
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7564))))
                    (g7563
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7563)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7565 #f)) g7565)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7566
                     (letrec*
                      ((x7567
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7567)))))
                   g7566)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7568
                     (letrec*
                      ((x7570
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7570))))
                    (g7569
                     (letrec*
                      ((x-cnd7571
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7571
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7569)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7572
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7573
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7574
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7574
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7575
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7576
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7576
                                       (letrec*
                                        ((x-cnd7577
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7577
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7578
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7579
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7579
                                             (letrec*
                                              ((x-cnd7580
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7580
                                                (letrec*
                                                 ((x-cnd7581
                                                   (letrec*
                                                    ((x7583
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7582
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7583 x7582)))))
                                                 (if x-cnd7581
                                                   (letrec*
                                                    ((x7585
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7584
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7585 x7584)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7586
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7587
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7587
                                                (letrec*
                                                 ((x-cnd7588
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7588
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7589
                                                       (letrec*
                                                        ((x-cnd7590
                                                          (letrec*
                                                           ((x7591
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
                                                             (= x7591 n)))))
                                                        (if x-cnd7590
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7592
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
                                                                    ((g7593
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7594
                                                                           (letrec*
                                                                            ((x7596
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
                                                                             (x7595
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
                                                                               x7596
                                                                               x7595)))))
                                                                         (if x-cnd7594
                                                                           (letrec*
                                                                            ((x7597
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
                                                                               x7597)))
                                                                           #f)))))
                                                                    g7593))))
                                                                g7592))))
                                                           (letrec*
                                                            ((g7598
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7598))
                                                          #f))))
                                                     g7589))
                                                   #f))
                                                #f)))))
                                         g7586)))))
                                   g7578)))))
                             g7575)))))
                       g7573))))
                   g7572)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x7600
                        (letrec*
                         ((x7601
                           (letrec*
                            ((x7602
                              (begin
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7602)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7601)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7600)))))
                   g7599)))
               (caaddr
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
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7606)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7605)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7604)))))
                   g7603)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7607
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7607)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7610
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7610))))
                    (g7609
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7611
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7612 (if val7252 val7252 #f)))
                             g7612)))))
                       g7611))))
                   g7609)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7616))))
                    (g7614
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7617))))
                    (g7615
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
                       ((g7618
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7619 res))
                       g7619))))
                   g7615)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7620
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7620)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7624))))
                    (g7622
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7625))))
                    (g7623
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7626
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7626))))
                   g7623)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7628
                        (letrec*
                         ((x7629
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7629)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7628)))))
                   g7627)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7631
                        (letrec*
                         ((x7632
                           (letrec*
                            ((x7633
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7633)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7632)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7631)))))
                   g7630)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7635
                        (letrec*
                         ((x7636
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7636)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7635)))))
                   g7634)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7638
                        (letrec*
                         ((x7639
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7639)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7638)))))
                   g7637)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7643
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7643))))
                    (g7641
                     (letrec*
                      ((x7644
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7644))))
                    (g7642
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7645)))))
                   g7642)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7647
                        (letrec*
                         ((x7648
                           (letrec*
                            ((x7649
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7649)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7648)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7647)))))
                   g7646)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7652))))
                    (g7651
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7651)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7653
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7653)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7655
                        (letrec*
                         ((x7656
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7656)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7655)))))
                   g7654)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7657
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7657)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7660))))
                    (g7659
                     (letrec*
                      ((x-cnd7661
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7661
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7664
                           (letrec*
                            ((x7665
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7665))))
                          (x7662
                           (letrec*
                            ((x7663
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7663)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7664 x7662)))))))
                   g7659)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((x7667
                        (letrec*
                         ((x7668
                           (letrec*
                            ((x7669
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7669)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7668)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7667)))))
                   g7666)))
               (cddadr
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
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7673)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7672)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7671)))))
                   g7670)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7676))))
                    (g7675
                     (letrec*
                      ((x7677
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7677)))))
                   g7675)))
               (caadar
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
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7681)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7680)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7679)))))
                   g7678)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7682
                     (letrec*
                      ((x7685
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7685))))
                    (g7683
                     (letrec*
                      ((x7686
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7686))))
                    (g7684
                     (letrec*
                      ((x-cnd7687
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7687
                        (letrec*
                         ((g7688
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7688)
                        (letrec*
                         ((x-cnd7689
                           (letrec*
                            ((x7690
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7690)))))
                         (if x-cnd7689
                           (letrec*
                            ((g7691
                              (letrec*
                               ((x7692
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7692)))))
                            g7691)
                           (letrec*
                            ((x-cnd7693
                              (letrec*
                               ((x7694
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7694)))))
                            (if x-cnd7693
                              (letrec*
                               ((g7695
                                 (letrec*
                                  ((x7697
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7696
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7697 x7696)))))
                               g7695)
                              (letrec*
                               ((x-cnd7698
                                 (letrec*
                                  ((x7699
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7699)))))
                               (if x-cnd7698
                                 (letrec*
                                  ((g7700
                                    (letrec*
                                     ((x7703
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7702
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7701
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7703 x7702 x7701)))))
                                  g7700)
                                 (letrec*
                                  ((x-cnd7704
                                    (letrec*
                                     ((x7705
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7705)))))
                                  (if x-cnd7704
                                    (letrec*
                                     ((g7706
                                       (letrec*
                                        ((x7710
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7709
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7708
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7707
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7710 x7709 x7708 x7707)))))
                                     g7706)
                                    (letrec*
                                     ((x-cnd7711
                                       (letrec*
                                        ((x7712
                                          (letrec*
                                           ((x7713
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7713)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7712)))))
                                     (if x-cnd7711
                                       (letrec*
                                        ((g7714
                                          (letrec*
                                           ((x7720
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7719
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7718
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7717
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7715
                                             (letrec*
                                              ((x7716
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7716)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7720
                                              x7719
                                              x7718
                                              x7717
                                              x7715)))))
                                        g7714)
                                       (letrec*
                                        ((x-cnd7721
                                          (letrec*
                                           ((x7722
                                             (letrec*
                                              ((x7723
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x7723)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x7722)))))
                                        (if x-cnd7721
                                          (letrec*
                                           ((g7724
                                             (letrec*
                                              ((x7732
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7731
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7730
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7729
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7727
                                                (letrec*
                                                 ((x7728
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x7728))))
                                               (x7725
                                                (letrec*
                                                 ((x7726
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x7726)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x7732
                                                 x7731
                                                 x7730
                                                 x7729
                                                 x7727
                                                 x7725)))))
                                           g7724)
                                          (letrec*
                                           ((x-cnd7733
                                             (letrec*
                                              ((x7734
                                                (letrec*
                                                 ((x7735
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x7735)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x7734)))))
                                           (if x-cnd7733
                                             (letrec*
                                              ((g7736
                                                (letrec*
                                                 ((x7746
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7745
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7744
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7743
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7741
                                                   (letrec*
                                                    ((x7742
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x7742))))
                                                  (x7739
                                                   (letrec*
                                                    ((x7740
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x7740))))
                                                  (x7737
                                                   (letrec*
                                                    ((x7738
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x7738)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x7746
                                                    x7745
                                                    x7744
                                                    x7743
                                                    x7741
                                                    x7739
                                                    x7737)))))
                                              g7736)
                                             (letrec*
                                              ((g7747
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7747)))))))))))))))))))
                   g7684)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7750
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x7750))))
                    (g7749
                     (letrec*
                      ((x-cnd7751
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7751
                        #f
                        (letrec*
                         ((x-cnd7752
                           (letrec*
                            ((x7753
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x7753 e)))))
                         (if x-cnd7752
                           l
                           (letrec*
                            ((x7754
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x7754)))))))))
                   g7749)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7756
                        (letrec*
                         ((x7757
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x7758)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x7757)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x7756)))))
                   g7755)))
               (cadddr
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
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x7762)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x7761)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x7760)))))
                   g7759)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7763
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g7763)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7766
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x7766))))
                    (g7765
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g7765)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7768
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7768))))
                   g7767)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x7770)))))
                   g7769)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7772
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7772
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x7773)))
                           #f))))
                      (letrec*
                       ((g7774
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g7774))))
                   g7771)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7776
                        (letrec*
                         ((x7777
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x7778)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x7777)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x7776)))))
                   g7775)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x-cnd7780
                        (letrec*
                         ((x7781 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x7781 c)))))
                      (if x-cnd7780
                        (letrec*
                         ((x7782 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x7782)))
                        #f))))
                   g7779)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x7785))))
                    (g7784
                     (letrec*
                      ((x-cnd7786
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7786
                        #f
                        (letrec*
                         ((x-cnd7787
                           (letrec*
                            ((x7788
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x7788 k)))))
                         (if x-cnd7787
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x7789)))))))))
                   g7784)))
               (not (lambda (x) (letrec* ((g7790 (if x #f #t))) g7790)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7791
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g7791)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x7794))))
                    (g7793
                     (letrec*
                      ((x-cnd7795
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7795
                        #f
                        (letrec*
                         ((x-cnd7796
                           (letrec*
                            ((x7797
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x7797 e)))))
                         (if x-cnd7796
                           l
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x7798)))))))))
                   g7793)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7800
                        (letrec*
                         ((x7801
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x7802)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x7801)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x7800)))))
                   g7799)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x7805))))
                    (g7804
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7806
                             (letrec*
                              ((x-cnd7807
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7807
                                0
                                (letrec*
                                 ((x7808
                                   (letrec*
                                    ((x7809
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x7809)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x7808)))))))
                           g7806))))
                      (letrec*
                       ((g7810
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g7810))))
                   g7804)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7816
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7816))))
                   g7813)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x7818)))))
                   g7817)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x7820
                        (letrec*
                         ((x7821
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x7821)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x7820)))))
                   g7819)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7822
                     (letrec*
                      ((x7824
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x7824))))
                    (g7823
                     (letrec*
                      ((x-cnd7825
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7825
                        #f
                        (letrec*
                         ((x-cnd7826
                           (letrec*
                            ((x7827
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x7827 k)))))
                         (if x-cnd7826
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7828
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x7828)))))))))
                   g7823)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7829
                     (letrec*
                      ((x7830
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x7830)))))
                   g7829)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7831
                     (letrec*
                      ((x7834
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7834))))
                    (g7832
                     (letrec*
                      ((x7835
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x7835))))
                    (g7833
                     (letrec*
                      ((x7836
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x7836)))))
                   g7833)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7838
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7838))))
                   g7837)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7839
                     (letrec*
                      ((x7842
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x7842))))
                    (g7840
                     (letrec*
                      ((x7843
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x7843))))
                    (g7841
                     (letrec*
                      ((x-cnd7844
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7844
                        #t
                        (letrec*
                         ((x-cnd7845
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7845
                           (letrec*
                            ((g7846
                              (letrec*
                               ((x7848
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x7848))))
                             (g7847
                              (letrec*
                               ((x7849
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x7849)))))
                            g7847)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g7841)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7850
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x7852))))
                    (g7851
                     (letrec*
                      ((x-cnd7853
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7853
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7851)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7854
                     (letrec*
                      ((x7857
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7857))))
                    (g7855
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x7858))))
                    (g7856
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7859
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7859))))
                   g7856)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7860
                     (letrec*
                      ((x7861
                        (letrec*
                         ((x7862
                           (letrec*
                            ((x7863
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x7863)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x7862)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x7861)))))
                   g7860)))
               (newline (lambda () (letrec* ((g7864 #f)) g7864)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7865
                     (letrec*
                      ((x7867
                        (letrec*
                         ((x7868
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x7868))))
                       (x7866
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x7867 x7866)))))
                   g7865)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x7871
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x7871))))
                    (g7870
                     (letrec*
                      ((x7872
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x7872)))))
                   g7870)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x7877
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x7877))))
                    (g7874
                     (letrec*
                      ((x7878
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x7878))))
                    (g7875
                     (letrec*
                      ((x7879
                        (letrec*
                         ((x7880
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x7880)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x7879))))
                    (g7876
                     (letrec*
                      ((x-cnd7881
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7881
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7883
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x7882
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x7883 x7882)))))))
                   g7876)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x-cnd7885
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7885
                        a
                        (letrec*
                         ((x7886
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x7886)))))))
                   g7884)))
               (member
                (lambda (x l)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((x-cnd7888
                        (begin
                          (write '(funapp 1476 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7888
                        empty
                        (letrec*
                         ((x-cnd7889
                           (letrec*
                            ((x7890
                              (begin
                                (write '(funapp 1481 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1481 55))
                              (display "\n")
                              (equal? x x7890)))))
                         (if x-cnd7889
                           l
                           (letrec*
                            ((x7891
                              (begin
                                (write '(funapp 1484 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1484 55))
                              (display "\n")
                              (member x x7891)))))))))
                   g7887))))
              (letrec*
               ((g7892
                 (letrec*
                  ((xj7349
                    (begin
                      (write '(funapp 1489 28))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 1489 32))
                         (display "\n")
                         'module))))
                   (xk7350
                    (begin
                      (write '(funapp 1489 51))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 1489 55))
                         (display "\n")
                         'importer)))))
                  (letrec*
                   ((g7893
                     (begin
                       (write '(funapp 1492 22))
                       (display "\n")
                       ((lambda (j7351 k7352 f7353)
                          (letrec*
                           ((g7894
                             (lambda ()
                               (letrec*
                                ((g7895
                                  (letrec*
                                   ((x7897
                                     (letrec*
                                      ((x7899
                                        (begin
                                          (write '(funapp 1501 45))
                                          (display "\n")
                                          (listof any/c)))
                                       (x7898
                                        (begin
                                          (write '(funapp 1502 45))
                                          (display "\n")
                                          (listof any/c))))
                                      (begin
                                        (write '(funapp 1503 37))
                                        (display "\n")
                                        (any/c x7899 x7898))))
                                    (x7896
                                     (begin
                                       (write '(funapp 1504 42))
                                       (display "\n")
                                       (f7353))))
                                   (begin
                                     (write '(funapp 1505 34))
                                     (display "\n")
                                     (x7897 j7351 k7352 x7896)))))
                                g7895))))
                           g7894))
                        xj7349
                        xk7350
                        member))))
                   g7893))))
               g7892))))
           g7367))))
       g7365)))
    g7364)))
