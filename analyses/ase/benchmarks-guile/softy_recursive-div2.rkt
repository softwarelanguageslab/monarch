(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
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
                   ((x-cnd7363
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7363
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
           ((x7367 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7367)))))
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
           ((g7370 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7371
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7372
                     (lambda (k j lst)
                       (letrec*
                        ((g7373
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7374
                                  (begin
                                    (write '(funapp 66 47))
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
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7376
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
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
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7378
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
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
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7380
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
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
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7383 #t)) g7383)) g7270))))
                      (if x-cnd7382
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
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
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7386 #t)) g7386)) g7273))))
                      (if x-cnd7385
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
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
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7388
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
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
                          (write '(funapp 126 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7390
                        g7279
                        (begin
                          (write '(blame g7277 127 42))
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
                          (write '(funapp 134 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7392
                        g7282
                        (begin
                          (write '(blame g7280 135 42))
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
                          (write '(funapp 142 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7394
                        g7285
                        (begin
                          (write '(blame g7283 143 42))
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
                               (write '(funapp 153 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7397
                             (begin
                               (write '(funapp 154 42))
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
                               (write '(funapp 165 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7400
                             (begin
                               (write '(funapp 167 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7404
                                (letrec*
                                 ((x7405
                                   (begin
                                     (write '(funapp 171 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 172 34))
                                   (display "\n")
                                   (contract k j x7405))))
                               (x7401
                                (letrec*
                                 ((x7403
                                   (begin
                                     (write '(funapp 175 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7402
                                   (begin
                                     (write '(funapp 175 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 176 34))
                                   (display "\n")
                                   (x7403 k j x7402)))))
                              (begin
                                (write '(funapp 177 31))
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
                          (write '(funapp 184 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 184 55))
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
                          (write '(funapp 192 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7411
                                (letrec*
                                 ((x7412
                                   (begin
                                     (write '(funapp 194 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 194 64))
                                   (display "\n")
                                   (not x7412)))))
                              g7411))
                           g7288))))
                      (if x-cnd7410
                        g7288
                        (begin
                          (write '(blame g7286 199 24))
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
                   (begin (write '(funapp 204 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 204 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7414
                    (begin
                      (write '(funapp 207 21))
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
                                         (write '(funapp 216 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7419
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 218 36))
                                       (display "\n")
                                       (f7295 x7420 x7419)))))
                                  (begin
                                    (write '(funapp 219 33))
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
                              (write '(funapp 224 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7415))))))
                  g7414)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 228 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 228 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7421
                    (begin
                      (write '(funapp 231 21))
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
                                         (write '(funapp 240 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7426
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 242 36))
                                       (display "\n")
                                       (f7302 x7427 x7426)))))
                                  (begin
                                    (write '(funapp 243 33))
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
                              (write '(funapp 248 53))
                              (display "\n")
                              (orig-- a b))))
                          g7422))))))
                  g7421)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 252 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 252 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7428
                    (begin
                      (write '(funapp 255 21))
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
                                         (write '(funapp 264 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7433
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 266 36))
                                       (display "\n")
                                       (f7309 x7434 x7433)))))
                                  (begin
                                    (write '(funapp 267 33))
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
                              (write '(funapp 272 53))
                              (display "\n")
                              (orig-* a b))))
                          g7429))))))
                  g7428)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 276 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 276 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7435
                    (begin
                      (write '(funapp 279 21))
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
                                         (write '(funapp 288 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7440
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 290 36))
                                       (display "\n")
                                       (f7316 x7441 x7440)))))
                                  (begin
                                    (write '(funapp 291 33))
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
                              (write '(funapp 296 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7436))))))
                  g7435)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 300 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 300 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7442
                    (begin
                      (write '(funapp 303 21))
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
                                         (write '(funapp 312 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 313 36))
                                       (display "\n")
                                       (f7322 x7447)))))
                                  (begin
                                    (write '(funapp 314 33))
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
                              (write '(funapp 319 51))
                              (display "\n")
                              (orig-car p))))
                          g7443))))))
                  g7442)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 323 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 323 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7448
                    (begin
                      (write '(funapp 326 21))
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
                                         (write '(funapp 335 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 336 36))
                                       (display "\n")
                                       (f7328 x7453)))))
                                  (begin
                                    (write '(funapp 337 33))
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
                              (write '(funapp 342 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7449))))))
                  g7448)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 346 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 346 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7454
                    (begin
                      (write '(funapp 349 21))
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
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7459
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 360 36))
                                       (display "\n")
                                       (f7335 x7460 x7459)))))
                                  (begin
                                    (write '(funapp 361 33))
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
                              (write '(funapp 367 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7455))))))
                  g7454)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 371 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 371 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7461
                    (begin
                      (write '(funapp 374 21))
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
                                         (write '(funapp 383 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 384 36))
                                       (display "\n")
                                       (f7341 x7466)))))
                                  (begin
                                    (write '(funapp 385 33))
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
                              (write '(funapp 391 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7462))))))
                  g7461)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 395 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 395 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7467
                    (begin
                      (write '(funapp 398 21))
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
                                         (write '(funapp 407 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7472
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 409 36))
                                       (display "\n")
                                       (f7348 x7473 x7472)))))
                                  (begin
                                    (write '(funapp 410 33))
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
                              (write '(funapp 416 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7468))))))
                  g7467)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7474
                     (if cnd
                       (begin (write '(funapp 421 35)) (display "\n") '())
                       (begin
                         (write '(funapp 421 40))
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
                             (write '(funapp 428 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 428 58))
                           (display "\n")
                           (cdr x7477)))))
                      (begin
                        (write '(funapp 429 23))
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
                          (write '(funapp 435 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 435 62))
                        (display "\n")
                        (assert x7481))))
                    (g7479
                     (letrec*
                      ((x7482
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 436 57))
                        (display "\n")
                        (assert x7482))))
                    (g7480
                     (letrec*
                      ((x-cnd7483
                        (begin
                          (write '(funapp 439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7483
                        (begin (write '(funapp 441 24)) (display "\n") '())
                        (letrec*
                         ((x7486
                           (letrec*
                            ((x7487
                              (begin
                                (write '(funapp 443 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 443 61))
                              (display "\n")
                              (f x7487))))
                          (x7484
                           (letrec*
                            ((x7485
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (map f x7485)))))
                         (begin
                           (write '(funapp 445 26))
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
                          (write '(funapp 450 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 450 55))
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
                                (write '(funapp 459 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 459 61))
                              (display "\n")
                              (car x7493)))))
                         (begin
                           (write '(funapp 460 26))
                           (display "\n")
                           (cdr x7492)))))
                      (begin
                        (write '(funapp 461 23))
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
                                (write '(funapp 470 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 470 61))
                              (display "\n")
                              (cdr x7497)))))
                         (begin
                           (write '(funapp 471 26))
                           (display "\n")
                           (car x7496)))))
                      (begin
                        (write '(funapp 472 23))
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
                          (write '(funapp 478 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 478 60))
                        (display "\n")
                        (assert x7501))))
                    (g7499
                     (letrec*
                      ((x7502
                        (begin
                          (write '(funapp 480 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 480 59))
                        (display "\n")
                        (assert x7502))))
                    (g7500
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
                       ((g7503
                         (begin
                           (write '(funapp 486 32))
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
                             (write '(funapp 494 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 494 58))
                           (display "\n")
                           (cdr x7507)))))
                      (begin
                        (write '(funapp 495 23))
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
                                (write '(funapp 504 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 504 61))
                              (display "\n")
                              (car x7511)))))
                         (begin
                           (write '(funapp 505 26))
                           (display "\n")
                           (car x7510)))))
                      (begin
                        (write '(funapp 506 23))
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
                          (write '(funapp 511 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 511 57))
                        (display "\n")
                        (assert x7514))))
                    (g7513
                     (letrec*
                      ((x-cnd7515
                        (begin
                          (write '(funapp 514 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7515
                        #f
                        (letrec*
                         ((x-cnd7516
                           (letrec*
                            ((x7517
                              (begin
                                (write '(funapp 519 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 519 56))
                              (display "\n")
                              (eq? x7517 k)))))
                         (if x-cnd7516
                           (begin
                             (write '(funapp 521 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7518
                              (begin
                                (write '(funapp 522 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 522 55))
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
                          (write '(funapp 527 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 527 60))
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
                          (write '(funapp 532 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 532 57))
                        (display "\n")
                        (assert x7523))))
                    (g7522
                     (letrec*
                      ((x-cnd7524
                        (begin
                          (write '(funapp 535 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7524
                        ""
                        (letrec*
                         ((x7527
                           (letrec*
                            ((x7528
                              (begin
                                (write '(funapp 540 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 540 55))
                              (display "\n")
                              (char->string x7528))))
                          (x7525
                           (letrec*
                            ((x7526
                              (begin
                                (write '(funapp 542 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 542 55))
                              (display "\n")
                              (list->string x7526)))))
                         (begin
                           (write '(funapp 543 26))
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
                          (write '(funapp 548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 548 58))
                        (display "\n")
                        (assert x7532))))
                    (g7530
                     (letrec*
                      ((x7533
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7533))))
                    (g7531
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 552 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7534
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 554 52))
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
                                (write '(funapp 564 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 564 61))
                              (display "\n")
                              (cdr x7538)))))
                         (begin
                           (write '(funapp 565 26))
                           (display "\n")
                           (cdr x7537)))))
                      (begin
                        (write '(funapp 566 23))
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
                          (write '(funapp 571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 571 57))
                        (display "\n")
                        (assert x7542))))
                    (g7540
                     (letrec*
                      ((x7543
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7543))))
                    (g7541
                     (letrec*
                      ((x-cnd7544
                        (begin
                          (write '(funapp 575 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7544
                        x
                        (letrec*
                         ((x7546
                           (begin
                             (write '(funapp 579 34))
                             (display "\n")
                             (cdr x)))
                          (x7545
                           (begin
                             (write '(funapp 579 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 580 26))
                           (display "\n")
                           (list-tail x7546 x7545)))))))
                   g7541)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7547
                     (begin (write '(funapp 582 49)) (display "\n") '())))
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
                           (write '(funapp 589 48))
                           (display "\n")
                           (char-ci>=? c x7550)))))
                      (if x-cnd7549
                        (letrec*
                         ((x7551 #\z))
                         (begin
                           (write '(funapp 591 48))
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
                          (write '(funapp 597 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 597 59))
                        (display "\n")
                        (assert x7554))))
                    (g7553
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 600 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7555
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 606 39))
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
                             (write '(funapp 618 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 618 62))
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
                                   (write '(funapp 626 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 627 32))
                                 (display "\n")
                                 (= x7560 10)))))
                            (letrec*
                             ((g7561
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7562
                                    (begin
                                      (write '(funapp 633 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 634 35))
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
                             (write '(funapp 643 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 643 58))
                           (display "\n")
                           (cdr x7565)))))
                      (begin
                        (write '(funapp 644 23))
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
                          (write '(funapp 649 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 649 59))
                        (display "\n")
                        (assert x7568))))
                    (g7567
                     (begin (write '(funapp 650 28)) (display "\n") (> x 0))))
                   g7567)))
               ($pc (begin (write '(funapp 652 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7569 #f)) g7569)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7570
                     (letrec*
                      ((x7571
                        (begin
                          (write '(funapp 658 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 658 55))
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
                          (write '(funapp 663 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 663 59))
                        (display "\n")
                        (assert x7574))))
                    (g7573
                     (letrec*
                      ((x-cnd7575
                        (begin
                          (write '(funapp 666 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7575
                        (begin
                          (write '(funapp 667 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 667 49))
                          (display "\n")
                          (floor x))))))
                   g7573)))
               ($cmp (begin (write '(funapp 669 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7576
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 675 33))
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
                                   (write '(funapp 683 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7578
                                 (begin
                                   (write '(funapp 684 46))
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
                                         (write '(funapp 692 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7580
                                       (letrec*
                                        ((x-cnd7581
                                          (begin
                                            (write '(funapp 695 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7581
                                          (begin
                                            (write '(funapp 696 55))
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
                                               (write '(funapp 705 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7583
                                             (letrec*
                                              ((x-cnd7584
                                                (begin
                                                  (write '(funapp 708 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7584
                                                (letrec*
                                                 ((x-cnd7585
                                                   (letrec*
                                                    ((x7587
                                                      (begin
                                                        (write
                                                         '(funapp 713 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7586
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 715 53))
                                                      (display "\n")
                                                      (equal? x7587 x7586)))))
                                                 (if x-cnd7585
                                                   (letrec*
                                                    ((x7589
                                                      (begin
                                                        (write
                                                         '(funapp 718 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7588
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 720 53))
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
                                                  (write '(funapp 729 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7591
                                                (letrec*
                                                 ((x-cnd7592
                                                   (begin
                                                     (write '(funapp 732 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7592
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 735 57))
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
                                                                  742
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 744 60))
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
                                                                          753
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
                                                                                   762
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
                                                                               x7600
                                                                               x7599)))))
                                                                         (if x-cnd7598
                                                                           (letrec*
                                                                            ((x7601
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
                                                                               x7601)))
                                                                           #f)))))
                                                                    g7597))))
                                                                g7596))))
                                                           (letrec*
                                                            ((g7602
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   784
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
                                (write '(funapp 802 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 802 61))
                              (display "\n")
                              (car x7606)))))
                         (begin
                           (write '(funapp 803 26))
                           (display "\n")
                           (car x7605)))))
                      (begin
                        (write '(funapp 804 23))
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
                                (write '(funapp 813 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 813 61))
                              (display "\n")
                              (cdr x7610)))))
                         (begin
                           (write '(funapp 814 26))
                           (display "\n")
                           (car x7609)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (car x7608)))))
                   g7607)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7611
                     (begin
                       (write '(funapp 817 53))
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
                          (write '(funapp 821 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 821 59))
                        (display "\n")
                        (assert x7614))))
                    (g7613
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 824 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7615
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 830 39))
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
                          (write '(funapp 840 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 840 60))
                        (display "\n")
                        (assert x7620))))
                    (g7618
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 842 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 842 59))
                        (display "\n")
                        (assert x7621))))
                    (g7619
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
                       ((g7622
                         (begin
                           (write '(funapp 848 32))
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
                       (write '(funapp 851 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 851 57)) (display "\n") '())))))
                   g7624)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 855 58))
                        (display "\n")
                        (assert x7628))))
                    (g7626
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7629))))
                    (g7627
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 859 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7630
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 861 52))
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
                             (write '(funapp 869 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 869 58))
                           (display "\n")
                           (car x7633)))))
                      (begin
                        (write '(funapp 870 23))
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
                                (write '(funapp 879 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 879 61))
                              (display "\n")
                              (cdr x7637)))))
                         (begin
                           (write '(funapp 880 26))
                           (display "\n")
                           (car x7636)))))
                      (begin
                        (write '(funapp 881 23))
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
                             (write '(funapp 889 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 889 58))
                           (display "\n")
                           (cdr x7640)))))
                      (begin
                        (write '(funapp 890 23))
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
                             (write '(funapp 897 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 897 58))
                           (display "\n")
                           (car x7643)))))
                      (begin
                        (write '(funapp 898 23))
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
                          (write '(funapp 903 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 903 58))
                        (display "\n")
                        (assert x7647))))
                    (g7645
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7648))))
                    (g7646
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 905 66))
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
                                (write '(funapp 915 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 915 61))
                              (display "\n")
                              (car x7653)))))
                         (begin
                           (write '(funapp 916 26))
                           (display "\n")
                           (car x7652)))))
                      (begin
                        (write '(funapp 917 23))
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
                          (write '(funapp 922 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7656))))
                    (g7655
                     (begin (write '(funapp 923 28)) (display "\n") (< x 0))))
                   g7655)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7657
                     (begin
                       (write '(funapp 925 53))
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
                             (write '(funapp 931 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 931 58))
                           (display "\n")
                           (car x7660)))))
                      (begin
                        (write '(funapp 932 23))
                        (display "\n")
                        (car x7659)))))
                   g7658)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7661
                     (begin (write '(funapp 934 51)) (display "\n") '())))
                   g7661)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 938 57))
                        (display "\n")
                        (assert x7664))))
                    (g7663
                     (letrec*
                      ((x-cnd7665
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7665
                        (begin (write '(funapp 943 24)) (display "\n") '())
                        (letrec*
                         ((x7668
                           (letrec*
                            ((x7669
                              (begin
                                (write '(funapp 945 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 945 61))
                              (display "\n")
                              (reverse x7669))))
                          (x7666
                           (letrec*
                            ((x7667
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (list x7667)))))
                         (begin
                           (write '(funapp 947 26))
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
                                (write '(funapp 956 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 956 61))
                              (display "\n")
                              (car x7673)))))
                         (begin
                           (write '(funapp 957 26))
                           (display "\n")
                           (car x7672)))))
                      (begin
                        (write '(funapp 958 23))
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
                                (write '(funapp 967 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 967 61))
                              (display "\n")
                              (car x7677)))))
                         (begin
                           (write '(funapp 968 26))
                           (display "\n")
                           (cdr x7676)))))
                      (begin
                        (write '(funapp 969 23))
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
                          (write '(funapp 974 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 974 59))
                        (display "\n")
                        (assert x7680))))
                    (g7679
                     (letrec*
                      ((x7681
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 975 60))
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
                                (write '(funapp 984 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 984 61))
                              (display "\n")
                              (cdr x7685)))))
                         (begin
                           (write '(funapp 985 26))
                           (display "\n")
                           (car x7684)))))
                      (begin
                        (write '(funapp 986 23))
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
                          (write '(funapp 992 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 992 59))
                        (display "\n")
                        (assert x7689))))
                    (g7687
                     (letrec*
                      ((x7690
                        (begin
                          (write '(funapp 993 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 993 60))
                        (display "\n")
                        (assert x7690))))
                    (g7688
                     (letrec*
                      ((x-cnd7691
                        (begin
                          (write '(funapp 996 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7691
                        (letrec*
                         ((g7692
                           (begin
                             (write '(funapp 998 42))
                             (display "\n")
                             (proc))))
                         g7692)
                        (letrec*
                         ((x-cnd7693
                           (letrec*
                            ((x7694
                              (begin
                                (write '(funapp 1001 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1001 58))
                              (display "\n")
                              (null? x7694)))))
                         (if x-cnd7693
                           (letrec*
                            ((g7695
                              (letrec*
                               ((x7696
                                 (begin
                                   (write '(funapp 1005 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1005 61))
                                 (display "\n")
                                 (proc x7696)))))
                            g7695)
                           (letrec*
                            ((x-cnd7697
                              (letrec*
                               ((x7698
                                 (begin
                                   (write '(funapp 1009 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1009 62))
                                 (display "\n")
                                 (null? x7698)))))
                            (if x-cnd7697
                              (letrec*
                               ((g7699
                                 (letrec*
                                  ((x7701
                                    (begin
                                      (write '(funapp 1014 43))
                                      (display "\n")
                                      (car args)))
                                   (x7700
                                    (begin
                                      (write '(funapp 1014 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1015 35))
                                    (display "\n")
                                    (proc x7701 x7700)))))
                               g7699)
                              (letrec*
                               ((x-cnd7702
                                 (letrec*
                                  ((x7703
                                    (begin
                                      (write '(funapp 1020 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1021 35))
                                    (display "\n")
                                    (null? x7703)))))
                               (if x-cnd7702
                                 (letrec*
                                  ((g7704
                                    (letrec*
                                     ((x7707
                                       (begin
                                         (write '(funapp 1026 46))
                                         (display "\n")
                                         (car args)))
                                      (x7706
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7705
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1029 38))
                                       (display "\n")
                                       (proc x7707 x7706 x7705)))))
                                  g7704)
                                 (letrec*
                                  ((x-cnd7708
                                    (letrec*
                                     ((x7709
                                       (begin
                                         (write '(funapp 1034 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1035 38))
                                       (display "\n")
                                       (null? x7709)))))
                                  (if x-cnd7708
                                    (letrec*
                                     ((g7710
                                       (letrec*
                                        ((x7714
                                          (begin
                                            (write '(funapp 1040 49))
                                            (display "\n")
                                            (car args)))
                                         (x7713
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7712
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7711
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1044 41))
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
                                               (write '(funapp 1051 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1052 44))
                                             (display "\n")
                                             (cdr x7717)))))
                                        (begin
                                          (write '(funapp 1053 41))
                                          (display "\n")
                                          (null? x7716)))))
                                     (if x-cnd7715
                                       (letrec*
                                        ((g7718
                                          (letrec*
                                           ((x7724
                                             (begin
                                               (write '(funapp 1058 52))
                                               (display "\n")
                                               (car args)))
                                            (x7723
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7722
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7721
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7719
                                             (letrec*
                                              ((x7720
                                                (begin
                                                  (write '(funapp 1064 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (car x7720)))))
                                           (begin
                                             (write '(funapp 1066 44))
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
                                                  (write '(funapp 1078 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1079 47))
                                                (display "\n")
                                                (cddr x7727)))))
                                           (begin
                                             (write '(funapp 1080 44))
                                             (display "\n")
                                             (null? x7726)))))
                                        (if x-cnd7725
                                          (letrec*
                                           ((g7728
                                             (letrec*
                                              ((x7736
                                                (begin
                                                  (write '(funapp 1085 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7735
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7734
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7733
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7731
                                                (letrec*
                                                 ((x7732
                                                   (begin
                                                     (write '(funapp 1091 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1092 50))
                                                   (display "\n")
                                                   (car x7732))))
                                               (x7729
                                                (letrec*
                                                 ((x7730
                                                   (begin
                                                     (write '(funapp 1095 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1096 50))
                                                   (display "\n")
                                                   (cadr x7730)))))
                                              (begin
                                                (write '(funapp 1097 47))
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
                                                     (write '(funapp 1110 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1111 50))
                                                   (display "\n")
                                                   (cdddr x7739)))))
                                              (begin
                                                (write '(funapp 1112 47))
                                                (display "\n")
                                                (null? x7738)))))
                                           (if x-cnd7737
                                             (letrec*
                                              ((g7740
                                                (letrec*
                                                 ((x7750
                                                   (begin
                                                     (write '(funapp 1117 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7749
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7748
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7747
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7745
                                                   (letrec*
                                                    ((x7746
                                                      (begin
                                                        (write
                                                         '(funapp 1123 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1124 53))
                                                      (display "\n")
                                                      (car x7746))))
                                                  (x7743
                                                   (letrec*
                                                    ((x7744
                                                      (begin
                                                        (write
                                                         '(funapp 1127 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1128 53))
                                                      (display "\n")
                                                      (cadr x7744))))
                                                  (x7741
                                                   (letrec*
                                                    ((x7742
                                                      (begin
                                                        (write
                                                         '(funapp 1131 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1132 53))
                                                      (display "\n")
                                                      (caddr x7742)))))
                                                 (begin
                                                   (write '(funapp 1133 50))
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
                                                  (write '(funapp 1144 49))
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
                          (write '(funapp 1150 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1150 57))
                        (display "\n")
                        (assert x7754))))
                    (g7753
                     (letrec*
                      ((x-cnd7755
                        (begin
                          (write '(funapp 1153 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7755
                        #f
                        (letrec*
                         ((x-cnd7756
                           (letrec*
                            ((x7757
                              (begin
                                (write '(funapp 1158 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1158 55))
                              (display "\n")
                              (equal? x7757 e)))))
                         (if x-cnd7756
                           l
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 1161 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1161 55))
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7762)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (cdr x7761)))))
                      (begin
                        (write '(funapp 1172 23))
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
                                (write '(funapp 1181 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1181 61))
                              (display "\n")
                              (cdr x7766)))))
                         (begin
                           (write '(funapp 1182 26))
                           (display "\n")
                           (cdr x7765)))))
                      (begin
                        (write '(funapp 1183 23))
                        (display "\n")
                        (car x7764)))))
                   g7763)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7767
                     (begin
                       (write '(funapp 1185 53))
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
                          (write '(funapp 1189 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1189 59))
                        (display "\n")
                        (assert x7770))))
                    (g7769
                     (begin (write '(funapp 1190 28)) (display "\n") (= x 0))))
                   g7769)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1197 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7772
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1199 52))
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
                          (write '(funapp 1205 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1205 55))
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
                             (write '(funapp 1215 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7776
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 1217 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1217 55))
                              (display "\n")
                              (list? x7777)))
                           #f))))
                      (letrec*
                       ((g7778
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1220 52))
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
                                (write '(funapp 1230 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1230 61))
                              (display "\n")
                              (car x7782)))))
                         (begin
                           (write '(funapp 1231 26))
                           (display "\n")
                           (cdr x7781)))))
                      (begin
                        (write '(funapp 1232 23))
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
                           (write '(funapp 1239 58))
                           (display "\n")
                           (char<=? x7785 c)))))
                      (if x-cnd7784
                        (letrec*
                         ((x7786 #\9))
                         (begin
                           (write '(funapp 1241 48))
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
                          (write '(funapp 1248 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1248 57))
                        (display "\n")
                        (assert x7789))))
                    (g7788
                     (letrec*
                      ((x-cnd7790
                        (begin
                          (write '(funapp 1251 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7790
                        #f
                        (letrec*
                         ((x-cnd7791
                           (letrec*
                            ((x7792
                              (begin
                                (write '(funapp 1256 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1256 56))
                              (display "\n")
                              (eqv? x7792 k)))))
                         (if x-cnd7791
                           (begin
                             (write '(funapp 1258 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7793
                              (begin
                                (write '(funapp 1259 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1259 55))
                              (display "\n")
                              (assq k x7793)))))))))
                   g7788)))
               (not (lambda (x) (letrec* ((g7794 (if x #f #t))) g7794)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7795
                     (begin
                       (write '(funapp 1263 50))
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
                          (write '(funapp 1267 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1267 57))
                        (display "\n")
                        (assert x7798))))
                    (g7797
                     (letrec*
                      ((x-cnd7799
                        (begin
                          (write '(funapp 1270 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7799
                        #f
                        (letrec*
                         ((x-cnd7800
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1275 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1275 55))
                              (display "\n")
                              (eq? x7801 e)))))
                         (if x-cnd7800
                           l
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1278 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1278 55))
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
                                (write '(funapp 1287 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1287 61))
                              (display "\n")
                              (car x7806)))))
                         (begin
                           (write '(funapp 1288 26))
                           (display "\n")
                           (cdr x7805)))))
                      (begin
                        (write '(funapp 1289 23))
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
                          (write '(funapp 1294 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1294 57))
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
                                  (write '(funapp 1302 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7811
                                0
                                (letrec*
                                 ((x7812
                                   (letrec*
                                    ((x7813
                                      (begin
                                        (write '(funapp 1307 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1307 63))
                                      (display "\n")
                                      (rec x7813)))))
                                 (begin
                                   (write '(funapp 1308 34))
                                   (display "\n")
                                   (+ 1 x7812)))))))
                           g7810))))
                      (letrec*
                       ((g7814
                         (begin
                           (write '(funapp 1310 40))
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
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7818))))
                    (g7816
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7819))))
                    (g7817
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1319 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7820
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1321 52))
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
                          (write '(funapp 1327 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1327 65))
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
                             (write '(funapp 1334 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1334 58))
                           (display "\n")
                           (car x7825)))))
                      (begin
                        (write '(funapp 1335 23))
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
                          (write '(funapp 1340 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1340 57))
                        (display "\n")
                        (assert x7828))))
                    (g7827
                     (letrec*
                      ((x-cnd7829
                        (begin
                          (write '(funapp 1343 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7829
                        #f
                        (letrec*
                         ((x-cnd7830
                           (letrec*
                            ((x7831
                              (begin
                                (write '(funapp 1348 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1348 56))
                              (display "\n")
                              (equal? x7831 k)))))
                         (if x-cnd7830
                           (begin
                             (write '(funapp 1350 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7832
                              (begin
                                (write '(funapp 1351 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1351 55))
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
                          (write '(funapp 1356 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1356 55))
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
                          (write '(funapp 1361 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1361 58))
                        (display "\n")
                        (assert x7838))))
                    (g7836
                     (letrec*
                      ((x7839
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7839))))
                    (g7837
                     (letrec*
                      ((x7840
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1363 63))
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
                          (write '(funapp 1370 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7842
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1372 52))
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
                          (write '(funapp 1378 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1378 62))
                        (display "\n")
                        (assert x7846))))
                    (g7844
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1379 57))
                        (display "\n")
                        (assert x7847))))
                    (g7845
                     (letrec*
                      ((x-cnd7848
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7848
                        #t
                        (letrec*
                         ((x-cnd7849
                           (begin
                             (write '(funapp 1386 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7849
                           (letrec*
                            ((g7850
                              (letrec*
                               ((x7852
                                 (begin
                                   (write '(funapp 1389 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1389 64))
                                 (display "\n")
                                 (f x7852))))
                             (g7851
                              (letrec*
                               ((x7853
                                 (begin
                                   (write '(funapp 1391 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1391 58))
                                 (display "\n")
                                 (for-each f x7853)))))
                            g7851)
                           (begin
                             (write '(funapp 1393 27))
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
                          (write '(funapp 1398 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1398 59))
                        (display "\n")
                        (assert x7856))))
                    (g7855
                     (letrec*
                      ((x-cnd7857
                        (begin
                          (write '(funapp 1400 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7857
                        (begin
                          (write '(funapp 1400 67))
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
                          (write '(funapp 1405 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1405 58))
                        (display "\n")
                        (assert x7861))))
                    (g7859
                     (letrec*
                      ((x7862
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7862))))
                    (g7860
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1409 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7863
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1411 52))
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
                                (write '(funapp 1421 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1421 61))
                              (display "\n")
                              (cdr x7867)))))
                         (begin
                           (write '(funapp 1422 26))
                           (display "\n")
                           (cdr x7866)))))
                      (begin
                        (write '(funapp 1423 23))
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
                             (write '(funapp 1431 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1431 58))
                           (display "\n")
                           (abs x7872))))
                       (x7870
                        (begin
                          (write '(funapp 1432 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1433 23))
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
                          (write '(funapp 1439 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1439 59))
                        (display "\n")
                        (assert x7875))))
                    (g7874
                     (letrec*
                      ((x7876
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1440 56))
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
                          (write '(funapp 1445 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1445 57))
                        (display "\n")
                        (assert x7881))))
                    (g7878
                     (letrec*
                      ((x7882
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1446 63))
                        (display "\n")
                        (assert x7882))))
                    (g7879
                     (letrec*
                      ((x7883
                        (letrec*
                         ((x7884
                           (begin
                             (write '(funapp 1449 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1449 61))
                           (display "\n")
                           (< index x7884)))))
                      (begin
                        (write '(funapp 1450 23))
                        (display "\n")
                        (assert x7883))))
                    (g7880
                     (letrec*
                      ((x-cnd7885
                        (begin
                          (write '(funapp 1453 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7885
                        (begin
                          (write '(funapp 1455 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7887
                           (begin
                             (write '(funapp 1457 34))
                             (display "\n")
                             (cdr l)))
                          (x7886
                           (begin
                             (write '(funapp 1457 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1458 26))
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
                          (write '(funapp 1465 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7889
                        a
                        (letrec*
                         ((x7890
                           (begin
                             (write '(funapp 1468 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1468 57))
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
                          (write '(funapp 1475 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7892
                        empty
                        (letrec*
                         ((x7896
                           (begin
                             (write '(funapp 1479 34))
                             (display "\n")
                             (car l)))
                          (x7893
                           (letrec*
                            ((x7894
                              (letrec*
                               ((x7895
                                 (begin
                                   (write '(funapp 1482 54))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1482 64))
                                 (display "\n")
                                 (cdr x7895)))))
                            (begin
                              (write '(funapp 1483 29))
                              (display "\n")
                              (recursive-div2 x7894)))))
                         (begin
                           (write '(funapp 1484 26))
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
                          (write '(funapp 1492 25))
                          (display "\n")
                          ((lambda ()
                             (letrec*
                              ((g7899
                                (letrec*
                                 ((x7900
                                   (letrec*
                                    ((x7901
                                      (begin
                                        (write '(funapp 1498 43))
                                        (display "\n")
                                        (cons/c any/c even-list/c))))
                                    (begin
                                      (write '(funapp 1499 35))
                                      (display "\n")
                                      (cons/c any/c x7901)))))
                                 (begin
                                   (write '(funapp 1500 32))
                                   (display "\n")
                                   (or/c null? x7900)))))
                              g7899))
                           g7351))))
                      (if x-cnd7898
                        g7351
                        (begin
                          (write '(blame g7349 1505 24))
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
                       (letrec*
                        ((x7905
                          (begin
                            (write '(funapp 1517 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 1517 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1517 61))
                             (display "\n")
                             'module)
                           x7905))))
                      (xk7353
                       (letrec*
                        ((x7906
                          (begin
                            (write '(funapp 1519 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 1519 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1519 54))
                             (display "\n")
                             'importer)
                           x7906)))))
                     (letrec*
                      ((g7907
                        (begin
                          (write '(funapp 1522 25))
                          (display "\n")
                          ((lambda (j7355 k7356 f7357)
                             (letrec*
                              ((g7908
                                (lambda (g7354)
                                  (letrec*
                                   ((g7909
                                     (letrec*
                                      ((x7913
                                        (begin
                                          (write '(funapp 1529 45))
                                          (display "\n")
                                          (listof any/c)))
                                       (x7910
                                        (letrec*
                                         ((x7911
                                           (letrec*
                                            ((x7912
                                              (begin
                                                (write '(funapp 1534 51))
                                                (display "\n")
                                                (even-list/c))))
                                            (begin
                                              (write '(funapp 1535 43))
                                              (display "\n")
                                              (x7912 j7355 k7356 g7354)))))
                                         (begin
                                           (write '(funapp 1536 40))
                                           (display "\n")
                                           (f7357 x7911)))))
                                      (begin
                                        (write '(funapp 1537 37))
                                        (display "\n")
                                        (x7913 j7355 k7356 x7910)))))
                                   g7909))))
                              g7908))
                           xj7352
                           xk7353
                           recursive-div2))))
                      g7907)))
                   (x7903 (input)))
                  (begin
                    (write '(funapp 1545 19))
                    (display "\n")
                    (x7904 x7903)))))
               g7902))))
           g7371))))
       g7369)))
    g7368)))
