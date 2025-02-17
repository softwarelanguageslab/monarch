(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
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
                   ((x-cnd7361
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7361
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
           ((x7365 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7365)))))
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
           ((g7368 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7369
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7370
                     (lambda (k j lst)
                       (letrec*
                        ((g7371
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7372
                                  (begin
                                    (write '(funapp 66 47))
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
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7374
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
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
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7376
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
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
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7378
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
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
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7381 #t)) g7381)) g7270))))
                      (if x-cnd7380
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
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
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7384 #t)) g7384)) g7273))))
                      (if x-cnd7383
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
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
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7386
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
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
                          (write '(funapp 126 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7388
                        g7279
                        (begin
                          (write '(blame g7277 127 42))
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
                          (write '(funapp 134 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7390
                        g7282
                        (begin
                          (write '(blame g7280 135 42))
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
                          (write '(funapp 142 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7392
                        g7285
                        (begin
                          (write '(blame g7283 143 42))
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
                               (write '(funapp 153 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7395
                             (begin
                               (write '(funapp 154 42))
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
                               (write '(funapp 165 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7398
                             (begin
                               (write '(funapp 167 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7402
                                (letrec*
                                 ((x7403
                                   (begin
                                     (write '(funapp 171 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 172 34))
                                   (display "\n")
                                   (contract k j x7403))))
                               (x7399
                                (letrec*
                                 ((x7401
                                   (begin
                                     (write '(funapp 175 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7400
                                   (begin
                                     (write '(funapp 175 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 176 34))
                                   (display "\n")
                                   (x7401 k j x7400)))))
                              (begin
                                (write '(funapp 177 31))
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
                          (write '(funapp 184 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 184 55))
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
                          (write '(funapp 192 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7409
                                (letrec*
                                 ((x7410
                                   (begin
                                     (write '(funapp 194 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 194 64))
                                   (display "\n")
                                   (not x7410)))))
                              g7409))
                           g7288))))
                      (if x-cnd7408
                        g7288
                        (begin
                          (write '(blame g7286 199 24))
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
                   (begin (write '(funapp 204 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 204 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7412
                    (begin
                      (write '(funapp 207 21))
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
                                         (write '(funapp 216 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7417
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 218 36))
                                       (display "\n")
                                       (f7295 x7418 x7417)))))
                                  (begin
                                    (write '(funapp 219 33))
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
                              (write '(funapp 224 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7413))))))
                  g7412)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 228 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 228 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7419
                    (begin
                      (write '(funapp 231 21))
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
                                         (write '(funapp 240 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7424
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 242 36))
                                       (display "\n")
                                       (f7302 x7425 x7424)))))
                                  (begin
                                    (write '(funapp 243 33))
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
                              (write '(funapp 248 53))
                              (display "\n")
                              (orig-- a b))))
                          g7420))))))
                  g7419)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 252 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 252 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7426
                    (begin
                      (write '(funapp 255 21))
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
                                         (write '(funapp 264 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7431
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 266 36))
                                       (display "\n")
                                       (f7309 x7432 x7431)))))
                                  (begin
                                    (write '(funapp 267 33))
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
                              (write '(funapp 272 53))
                              (display "\n")
                              (orig-* a b))))
                          g7427))))))
                  g7426)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 276 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 276 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7433
                    (begin
                      (write '(funapp 279 21))
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
                                         (write '(funapp 288 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7438
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 290 36))
                                       (display "\n")
                                       (f7316 x7439 x7438)))))
                                  (begin
                                    (write '(funapp 291 33))
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
                              (write '(funapp 296 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7434))))))
                  g7433)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 300 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 300 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7440
                    (begin
                      (write '(funapp 303 21))
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
                                         (write '(funapp 312 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 313 36))
                                       (display "\n")
                                       (f7322 x7445)))))
                                  (begin
                                    (write '(funapp 314 33))
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
                              (write '(funapp 319 51))
                              (display "\n")
                              (orig-car p))))
                          g7441))))))
                  g7440)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 323 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 323 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7446
                    (begin
                      (write '(funapp 326 21))
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
                                         (write '(funapp 335 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 336 36))
                                       (display "\n")
                                       (f7328 x7451)))))
                                  (begin
                                    (write '(funapp 337 33))
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
                              (write '(funapp 342 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7447))))))
                  g7446)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 346 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 346 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7452
                    (begin
                      (write '(funapp 349 21))
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
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7457
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 360 36))
                                       (display "\n")
                                       (f7335 x7458 x7457)))))
                                  (begin
                                    (write '(funapp 361 33))
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
                              (write '(funapp 367 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7453))))))
                  g7452)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 371 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 371 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7459
                    (begin
                      (write '(funapp 374 21))
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
                                         (write '(funapp 383 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 384 36))
                                       (display "\n")
                                       (f7341 x7464)))))
                                  (begin
                                    (write '(funapp 385 33))
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
                              (write '(funapp 391 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7460))))))
                  g7459)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 395 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 395 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7465
                    (begin
                      (write '(funapp 398 21))
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
                                         (write '(funapp 407 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7470
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 409 36))
                                       (display "\n")
                                       (f7348 x7471 x7470)))))
                                  (begin
                                    (write '(funapp 410 33))
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
                              (write '(funapp 416 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7466))))))
                  g7465)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7472
                     (if cnd
                       (begin (write '(funapp 421 35)) (display "\n") '())
                       (begin
                         (write '(funapp 421 40))
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
                             (write '(funapp 428 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 428 58))
                           (display "\n")
                           (cdr x7475)))))
                      (begin
                        (write '(funapp 429 23))
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
                          (write '(funapp 435 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 435 62))
                        (display "\n")
                        (assert x7479))))
                    (g7477
                     (letrec*
                      ((x7480
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 436 57))
                        (display "\n")
                        (assert x7480))))
                    (g7478
                     (letrec*
                      ((x-cnd7481
                        (begin
                          (write '(funapp 439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7481
                        (begin (write '(funapp 441 24)) (display "\n") '())
                        (letrec*
                         ((x7484
                           (letrec*
                            ((x7485
                              (begin
                                (write '(funapp 443 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 443 61))
                              (display "\n")
                              (f x7485))))
                          (x7482
                           (letrec*
                            ((x7483
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (map f x7483)))))
                         (begin
                           (write '(funapp 445 26))
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
                          (write '(funapp 450 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 450 55))
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
                                (write '(funapp 459 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 459 61))
                              (display "\n")
                              (car x7491)))))
                         (begin
                           (write '(funapp 460 26))
                           (display "\n")
                           (cdr x7490)))))
                      (begin
                        (write '(funapp 461 23))
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
                                (write '(funapp 470 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 470 61))
                              (display "\n")
                              (cdr x7495)))))
                         (begin
                           (write '(funapp 471 26))
                           (display "\n")
                           (car x7494)))))
                      (begin
                        (write '(funapp 472 23))
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
                          (write '(funapp 478 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 478 60))
                        (display "\n")
                        (assert x7499))))
                    (g7497
                     (letrec*
                      ((x7500
                        (begin
                          (write '(funapp 480 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 480 59))
                        (display "\n")
                        (assert x7500))))
                    (g7498
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
                       ((g7501
                         (begin
                           (write '(funapp 486 32))
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
                             (write '(funapp 494 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 494 58))
                           (display "\n")
                           (cdr x7505)))))
                      (begin
                        (write '(funapp 495 23))
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
                                (write '(funapp 504 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 504 61))
                              (display "\n")
                              (car x7509)))))
                         (begin
                           (write '(funapp 505 26))
                           (display "\n")
                           (car x7508)))))
                      (begin
                        (write '(funapp 506 23))
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
                          (write '(funapp 511 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 511 57))
                        (display "\n")
                        (assert x7512))))
                    (g7511
                     (letrec*
                      ((x-cnd7513
                        (begin
                          (write '(funapp 514 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7513
                        #f
                        (letrec*
                         ((x-cnd7514
                           (letrec*
                            ((x7515
                              (begin
                                (write '(funapp 519 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 519 56))
                              (display "\n")
                              (eq? x7515 k)))))
                         (if x-cnd7514
                           (begin
                             (write '(funapp 521 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7516
                              (begin
                                (write '(funapp 522 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 522 55))
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
                          (write '(funapp 527 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 527 60))
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
                          (write '(funapp 532 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 532 57))
                        (display "\n")
                        (assert x7521))))
                    (g7520
                     (letrec*
                      ((x-cnd7522
                        (begin
                          (write '(funapp 535 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7522
                        ""
                        (letrec*
                         ((x7525
                           (letrec*
                            ((x7526
                              (begin
                                (write '(funapp 540 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 540 55))
                              (display "\n")
                              (char->string x7526))))
                          (x7523
                           (letrec*
                            ((x7524
                              (begin
                                (write '(funapp 542 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 542 55))
                              (display "\n")
                              (list->string x7524)))))
                         (begin
                           (write '(funapp 543 26))
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
                          (write '(funapp 548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 548 58))
                        (display "\n")
                        (assert x7530))))
                    (g7528
                     (letrec*
                      ((x7531
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7531))))
                    (g7529
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 552 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7532
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 554 52))
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
                                (write '(funapp 564 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 564 61))
                              (display "\n")
                              (cdr x7536)))))
                         (begin
                           (write '(funapp 565 26))
                           (display "\n")
                           (cdr x7535)))))
                      (begin
                        (write '(funapp 566 23))
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
                          (write '(funapp 571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 571 57))
                        (display "\n")
                        (assert x7540))))
                    (g7538
                     (letrec*
                      ((x7541
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7541))))
                    (g7539
                     (letrec*
                      ((x-cnd7542
                        (begin
                          (write '(funapp 575 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7542
                        x
                        (letrec*
                         ((x7544
                           (begin
                             (write '(funapp 579 34))
                             (display "\n")
                             (cdr x)))
                          (x7543
                           (begin
                             (write '(funapp 579 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 580 26))
                           (display "\n")
                           (list-tail x7544 x7543)))))))
                   g7539)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7545
                     (begin (write '(funapp 582 49)) (display "\n") '())))
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
                           (write '(funapp 589 48))
                           (display "\n")
                           (char-ci>=? c x7548)))))
                      (if x-cnd7547
                        (letrec*
                         ((x7549 #\z))
                         (begin
                           (write '(funapp 591 48))
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
                          (write '(funapp 597 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 597 59))
                        (display "\n")
                        (assert x7552))))
                    (g7551
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 600 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7553
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 606 39))
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
                             (write '(funapp 618 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 618 62))
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
                                   (write '(funapp 626 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 627 32))
                                 (display "\n")
                                 (= x7558 10)))))
                            (letrec*
                             ((g7559
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7560
                                    (begin
                                      (write '(funapp 633 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 634 35))
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
                             (write '(funapp 643 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 643 58))
                           (display "\n")
                           (cdr x7563)))))
                      (begin
                        (write '(funapp 644 23))
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
                          (write '(funapp 649 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 649 59))
                        (display "\n")
                        (assert x7566))))
                    (g7565
                     (begin (write '(funapp 650 28)) (display "\n") (> x 0))))
                   g7565)))
               ($pc (begin (write '(funapp 652 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7567 #f)) g7567)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7568
                     (letrec*
                      ((x7569
                        (begin
                          (write '(funapp 658 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 658 55))
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
                          (write '(funapp 663 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 663 59))
                        (display "\n")
                        (assert x7572))))
                    (g7571
                     (letrec*
                      ((x-cnd7573
                        (begin
                          (write '(funapp 666 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7573
                        (begin
                          (write '(funapp 667 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 667 49))
                          (display "\n")
                          (floor x))))))
                   g7571)))
               ($cmp (begin (write '(funapp 669 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7574
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 675 33))
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
                                   (write '(funapp 683 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7576
                                 (begin
                                   (write '(funapp 684 46))
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
                                         (write '(funapp 692 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7578
                                       (letrec*
                                        ((x-cnd7579
                                          (begin
                                            (write '(funapp 695 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7579
                                          (begin
                                            (write '(funapp 696 55))
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
                                               (write '(funapp 705 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7581
                                             (letrec*
                                              ((x-cnd7582
                                                (begin
                                                  (write '(funapp 708 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7582
                                                (letrec*
                                                 ((x-cnd7583
                                                   (letrec*
                                                    ((x7585
                                                      (begin
                                                        (write
                                                         '(funapp 713 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7584
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 715 53))
                                                      (display "\n")
                                                      (equal? x7585 x7584)))))
                                                 (if x-cnd7583
                                                   (letrec*
                                                    ((x7587
                                                      (begin
                                                        (write
                                                         '(funapp 718 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7586
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 720 53))
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
                                                  (write '(funapp 729 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7589
                                                (letrec*
                                                 ((x-cnd7590
                                                   (begin
                                                     (write '(funapp 732 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7590
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 735 57))
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
                                                                  742
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 744 60))
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
                                                                          753
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
                                                                                   762
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
                                                                               x7598
                                                                               x7597)))))
                                                                         (if x-cnd7596
                                                                           (letrec*
                                                                            ((x7599
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
                                                                               x7599)))
                                                                           #f)))))
                                                                    g7595))))
                                                                g7594))))
                                                           (letrec*
                                                            ((g7600
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   784
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
                                (write '(funapp 802 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 802 61))
                              (display "\n")
                              (car x7604)))))
                         (begin
                           (write '(funapp 803 26))
                           (display "\n")
                           (car x7603)))))
                      (begin
                        (write '(funapp 804 23))
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
                                (write '(funapp 813 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 813 61))
                              (display "\n")
                              (cdr x7608)))))
                         (begin
                           (write '(funapp 814 26))
                           (display "\n")
                           (car x7607)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (car x7606)))))
                   g7605)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7609
                     (begin
                       (write '(funapp 817 53))
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
                          (write '(funapp 821 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 821 59))
                        (display "\n")
                        (assert x7612))))
                    (g7611
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 824 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7613
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 830 39))
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
                          (write '(funapp 840 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 840 60))
                        (display "\n")
                        (assert x7618))))
                    (g7616
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 842 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 842 59))
                        (display "\n")
                        (assert x7619))))
                    (g7617
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
                       ((g7620
                         (begin
                           (write '(funapp 848 32))
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
                       (write '(funapp 851 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 851 57)) (display "\n") '())))))
                   g7622)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 855 58))
                        (display "\n")
                        (assert x7626))))
                    (g7624
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7627))))
                    (g7625
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 859 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7628
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 861 52))
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
                             (write '(funapp 869 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 869 58))
                           (display "\n")
                           (car x7631)))))
                      (begin
                        (write '(funapp 870 23))
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
                                (write '(funapp 879 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 879 61))
                              (display "\n")
                              (cdr x7635)))))
                         (begin
                           (write '(funapp 880 26))
                           (display "\n")
                           (car x7634)))))
                      (begin
                        (write '(funapp 881 23))
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
                             (write '(funapp 889 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 889 58))
                           (display "\n")
                           (cdr x7638)))))
                      (begin
                        (write '(funapp 890 23))
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
                             (write '(funapp 897 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 897 58))
                           (display "\n")
                           (car x7641)))))
                      (begin
                        (write '(funapp 898 23))
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
                          (write '(funapp 903 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 903 58))
                        (display "\n")
                        (assert x7645))))
                    (g7643
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7646))))
                    (g7644
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 905 66))
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
                                (write '(funapp 915 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 915 61))
                              (display "\n")
                              (car x7651)))))
                         (begin
                           (write '(funapp 916 26))
                           (display "\n")
                           (car x7650)))))
                      (begin
                        (write '(funapp 917 23))
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
                          (write '(funapp 922 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7654))))
                    (g7653
                     (begin (write '(funapp 923 28)) (display "\n") (< x 0))))
                   g7653)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7655
                     (begin
                       (write '(funapp 925 53))
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
                             (write '(funapp 931 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 931 58))
                           (display "\n")
                           (car x7658)))))
                      (begin
                        (write '(funapp 932 23))
                        (display "\n")
                        (car x7657)))))
                   g7656)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7659
                     (begin (write '(funapp 934 51)) (display "\n") '())))
                   g7659)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 938 57))
                        (display "\n")
                        (assert x7662))))
                    (g7661
                     (letrec*
                      ((x-cnd7663
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7663
                        (begin (write '(funapp 943 24)) (display "\n") '())
                        (letrec*
                         ((x7666
                           (letrec*
                            ((x7667
                              (begin
                                (write '(funapp 945 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 945 61))
                              (display "\n")
                              (reverse x7667))))
                          (x7664
                           (letrec*
                            ((x7665
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (list x7665)))))
                         (begin
                           (write '(funapp 947 26))
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
                                (write '(funapp 956 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 956 61))
                              (display "\n")
                              (car x7671)))))
                         (begin
                           (write '(funapp 957 26))
                           (display "\n")
                           (car x7670)))))
                      (begin
                        (write '(funapp 958 23))
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
                                (write '(funapp 967 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 967 61))
                              (display "\n")
                              (car x7675)))))
                         (begin
                           (write '(funapp 968 26))
                           (display "\n")
                           (cdr x7674)))))
                      (begin
                        (write '(funapp 969 23))
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
                          (write '(funapp 974 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 974 59))
                        (display "\n")
                        (assert x7678))))
                    (g7677
                     (letrec*
                      ((x7679
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 975 60))
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
                                (write '(funapp 984 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 984 61))
                              (display "\n")
                              (cdr x7683)))))
                         (begin
                           (write '(funapp 985 26))
                           (display "\n")
                           (car x7682)))))
                      (begin
                        (write '(funapp 986 23))
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
                          (write '(funapp 992 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 992 59))
                        (display "\n")
                        (assert x7687))))
                    (g7685
                     (letrec*
                      ((x7688
                        (begin
                          (write '(funapp 993 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 993 60))
                        (display "\n")
                        (assert x7688))))
                    (g7686
                     (letrec*
                      ((x-cnd7689
                        (begin
                          (write '(funapp 996 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7689
                        (letrec*
                         ((g7690
                           (begin
                             (write '(funapp 998 42))
                             (display "\n")
                             (proc))))
                         g7690)
                        (letrec*
                         ((x-cnd7691
                           (letrec*
                            ((x7692
                              (begin
                                (write '(funapp 1001 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1001 58))
                              (display "\n")
                              (null? x7692)))))
                         (if x-cnd7691
                           (letrec*
                            ((g7693
                              (letrec*
                               ((x7694
                                 (begin
                                   (write '(funapp 1005 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1005 61))
                                 (display "\n")
                                 (proc x7694)))))
                            g7693)
                           (letrec*
                            ((x-cnd7695
                              (letrec*
                               ((x7696
                                 (begin
                                   (write '(funapp 1009 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1009 62))
                                 (display "\n")
                                 (null? x7696)))))
                            (if x-cnd7695
                              (letrec*
                               ((g7697
                                 (letrec*
                                  ((x7699
                                    (begin
                                      (write '(funapp 1014 43))
                                      (display "\n")
                                      (car args)))
                                   (x7698
                                    (begin
                                      (write '(funapp 1014 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1015 35))
                                    (display "\n")
                                    (proc x7699 x7698)))))
                               g7697)
                              (letrec*
                               ((x-cnd7700
                                 (letrec*
                                  ((x7701
                                    (begin
                                      (write '(funapp 1020 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1021 35))
                                    (display "\n")
                                    (null? x7701)))))
                               (if x-cnd7700
                                 (letrec*
                                  ((g7702
                                    (letrec*
                                     ((x7705
                                       (begin
                                         (write '(funapp 1026 46))
                                         (display "\n")
                                         (car args)))
                                      (x7704
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7703
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1029 38))
                                       (display "\n")
                                       (proc x7705 x7704 x7703)))))
                                  g7702)
                                 (letrec*
                                  ((x-cnd7706
                                    (letrec*
                                     ((x7707
                                       (begin
                                         (write '(funapp 1034 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1035 38))
                                       (display "\n")
                                       (null? x7707)))))
                                  (if x-cnd7706
                                    (letrec*
                                     ((g7708
                                       (letrec*
                                        ((x7712
                                          (begin
                                            (write '(funapp 1040 49))
                                            (display "\n")
                                            (car args)))
                                         (x7711
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7710
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7709
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1044 41))
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
                                               (write '(funapp 1051 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1052 44))
                                             (display "\n")
                                             (cdr x7715)))))
                                        (begin
                                          (write '(funapp 1053 41))
                                          (display "\n")
                                          (null? x7714)))))
                                     (if x-cnd7713
                                       (letrec*
                                        ((g7716
                                          (letrec*
                                           ((x7722
                                             (begin
                                               (write '(funapp 1058 52))
                                               (display "\n")
                                               (car args)))
                                            (x7721
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7720
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7719
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7717
                                             (letrec*
                                              ((x7718
                                                (begin
                                                  (write '(funapp 1064 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (car x7718)))))
                                           (begin
                                             (write '(funapp 1066 44))
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
                                                  (write '(funapp 1078 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1079 47))
                                                (display "\n")
                                                (cddr x7725)))))
                                           (begin
                                             (write '(funapp 1080 44))
                                             (display "\n")
                                             (null? x7724)))))
                                        (if x-cnd7723
                                          (letrec*
                                           ((g7726
                                             (letrec*
                                              ((x7734
                                                (begin
                                                  (write '(funapp 1085 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7733
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7732
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7731
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7729
                                                (letrec*
                                                 ((x7730
                                                   (begin
                                                     (write '(funapp 1091 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1092 50))
                                                   (display "\n")
                                                   (car x7730))))
                                               (x7727
                                                (letrec*
                                                 ((x7728
                                                   (begin
                                                     (write '(funapp 1095 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1096 50))
                                                   (display "\n")
                                                   (cadr x7728)))))
                                              (begin
                                                (write '(funapp 1097 47))
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
                                                     (write '(funapp 1110 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1111 50))
                                                   (display "\n")
                                                   (cdddr x7737)))))
                                              (begin
                                                (write '(funapp 1112 47))
                                                (display "\n")
                                                (null? x7736)))))
                                           (if x-cnd7735
                                             (letrec*
                                              ((g7738
                                                (letrec*
                                                 ((x7748
                                                   (begin
                                                     (write '(funapp 1117 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7747
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7746
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7745
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7743
                                                   (letrec*
                                                    ((x7744
                                                      (begin
                                                        (write
                                                         '(funapp 1123 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1124 53))
                                                      (display "\n")
                                                      (car x7744))))
                                                  (x7741
                                                   (letrec*
                                                    ((x7742
                                                      (begin
                                                        (write
                                                         '(funapp 1127 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1128 53))
                                                      (display "\n")
                                                      (cadr x7742))))
                                                  (x7739
                                                   (letrec*
                                                    ((x7740
                                                      (begin
                                                        (write
                                                         '(funapp 1131 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1132 53))
                                                      (display "\n")
                                                      (caddr x7740)))))
                                                 (begin
                                                   (write '(funapp 1133 50))
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
                                                  (write '(funapp 1144 49))
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
                          (write '(funapp 1150 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1150 57))
                        (display "\n")
                        (assert x7752))))
                    (g7751
                     (letrec*
                      ((x-cnd7753
                        (begin
                          (write '(funapp 1153 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7753
                        #f
                        (letrec*
                         ((x-cnd7754
                           (letrec*
                            ((x7755
                              (begin
                                (write '(funapp 1158 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1158 55))
                              (display "\n")
                              (equal? x7755 e)))))
                         (if x-cnd7754
                           l
                           (letrec*
                            ((x7756
                              (begin
                                (write '(funapp 1161 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1161 55))
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7760)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (cdr x7759)))))
                      (begin
                        (write '(funapp 1172 23))
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
                                (write '(funapp 1181 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1181 61))
                              (display "\n")
                              (cdr x7764)))))
                         (begin
                           (write '(funapp 1182 26))
                           (display "\n")
                           (cdr x7763)))))
                      (begin
                        (write '(funapp 1183 23))
                        (display "\n")
                        (car x7762)))))
                   g7761)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7765
                     (begin
                       (write '(funapp 1185 53))
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
                          (write '(funapp 1189 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1189 59))
                        (display "\n")
                        (assert x7768))))
                    (g7767
                     (begin (write '(funapp 1190 28)) (display "\n") (= x 0))))
                   g7767)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1197 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7770
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1199 52))
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
                          (write '(funapp 1205 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1205 55))
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
                             (write '(funapp 1215 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1217 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1217 55))
                              (display "\n")
                              (list? x7775)))
                           #f))))
                      (letrec*
                       ((g7776
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1220 52))
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
                                (write '(funapp 1230 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1230 61))
                              (display "\n")
                              (car x7780)))))
                         (begin
                           (write '(funapp 1231 26))
                           (display "\n")
                           (cdr x7779)))))
                      (begin
                        (write '(funapp 1232 23))
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
                           (write '(funapp 1239 58))
                           (display "\n")
                           (char<=? x7783 c)))))
                      (if x-cnd7782
                        (letrec*
                         ((x7784 #\9))
                         (begin
                           (write '(funapp 1241 48))
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
                          (write '(funapp 1248 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1248 57))
                        (display "\n")
                        (assert x7787))))
                    (g7786
                     (letrec*
                      ((x-cnd7788
                        (begin
                          (write '(funapp 1251 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7788
                        #f
                        (letrec*
                         ((x-cnd7789
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 1256 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1256 56))
                              (display "\n")
                              (eqv? x7790 k)))))
                         (if x-cnd7789
                           (begin
                             (write '(funapp 1258 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 1259 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1259 55))
                              (display "\n")
                              (assq k x7791)))))))))
                   g7786)))
               (not (lambda (x) (letrec* ((g7792 (if x #f #t))) g7792)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7793
                     (begin
                       (write '(funapp 1263 50))
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
                          (write '(funapp 1267 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1267 57))
                        (display "\n")
                        (assert x7796))))
                    (g7795
                     (letrec*
                      ((x-cnd7797
                        (begin
                          (write '(funapp 1270 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7797
                        #f
                        (letrec*
                         ((x-cnd7798
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 1275 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1275 55))
                              (display "\n")
                              (eq? x7799 e)))))
                         (if x-cnd7798
                           l
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 1278 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1278 55))
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
                                (write '(funapp 1287 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1287 61))
                              (display "\n")
                              (car x7804)))))
                         (begin
                           (write '(funapp 1288 26))
                           (display "\n")
                           (cdr x7803)))))
                      (begin
                        (write '(funapp 1289 23))
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
                          (write '(funapp 1294 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1294 57))
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
                                  (write '(funapp 1302 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7809
                                0
                                (letrec*
                                 ((x7810
                                   (letrec*
                                    ((x7811
                                      (begin
                                        (write '(funapp 1307 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1307 63))
                                      (display "\n")
                                      (rec x7811)))))
                                 (begin
                                   (write '(funapp 1308 34))
                                   (display "\n")
                                   (+ 1 x7810)))))))
                           g7808))))
                      (letrec*
                       ((g7812
                         (begin
                           (write '(funapp 1310 40))
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
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7817))))
                    (g7815
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1319 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7818
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1321 52))
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
                          (write '(funapp 1327 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1327 65))
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
                             (write '(funapp 1334 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1334 58))
                           (display "\n")
                           (car x7823)))))
                      (begin
                        (write '(funapp 1335 23))
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
                          (write '(funapp 1340 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1340 57))
                        (display "\n")
                        (assert x7826))))
                    (g7825
                     (letrec*
                      ((x-cnd7827
                        (begin
                          (write '(funapp 1343 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7827
                        #f
                        (letrec*
                         ((x-cnd7828
                           (letrec*
                            ((x7829
                              (begin
                                (write '(funapp 1348 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1348 56))
                              (display "\n")
                              (equal? x7829 k)))))
                         (if x-cnd7828
                           (begin
                             (write '(funapp 1350 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7830
                              (begin
                                (write '(funapp 1351 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1351 55))
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
                          (write '(funapp 1356 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1356 55))
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
                          (write '(funapp 1361 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1361 58))
                        (display "\n")
                        (assert x7836))))
                    (g7834
                     (letrec*
                      ((x7837
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7837))))
                    (g7835
                     (letrec*
                      ((x7838
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1363 63))
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
                          (write '(funapp 1370 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7840
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1372 52))
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
                          (write '(funapp 1378 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1378 62))
                        (display "\n")
                        (assert x7844))))
                    (g7842
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1379 57))
                        (display "\n")
                        (assert x7845))))
                    (g7843
                     (letrec*
                      ((x-cnd7846
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7846
                        #t
                        (letrec*
                         ((x-cnd7847
                           (begin
                             (write '(funapp 1386 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7847
                           (letrec*
                            ((g7848
                              (letrec*
                               ((x7850
                                 (begin
                                   (write '(funapp 1389 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1389 64))
                                 (display "\n")
                                 (f x7850))))
                             (g7849
                              (letrec*
                               ((x7851
                                 (begin
                                   (write '(funapp 1391 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1391 58))
                                 (display "\n")
                                 (for-each f x7851)))))
                            g7849)
                           (begin
                             (write '(funapp 1393 27))
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
                          (write '(funapp 1398 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1398 59))
                        (display "\n")
                        (assert x7854))))
                    (g7853
                     (letrec*
                      ((x-cnd7855
                        (begin
                          (write '(funapp 1400 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7855
                        (begin
                          (write '(funapp 1400 67))
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
                          (write '(funapp 1405 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1405 58))
                        (display "\n")
                        (assert x7859))))
                    (g7857
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7860))))
                    (g7858
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1409 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7861
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1411 52))
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
                                (write '(funapp 1421 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1421 61))
                              (display "\n")
                              (cdr x7865)))))
                         (begin
                           (write '(funapp 1422 26))
                           (display "\n")
                           (cdr x7864)))))
                      (begin
                        (write '(funapp 1423 23))
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
                             (write '(funapp 1431 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1431 58))
                           (display "\n")
                           (abs x7870))))
                       (x7868
                        (begin
                          (write '(funapp 1432 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1433 23))
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
                          (write '(funapp 1439 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1439 59))
                        (display "\n")
                        (assert x7873))))
                    (g7872
                     (letrec*
                      ((x7874
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1440 56))
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
                          (write '(funapp 1445 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1445 57))
                        (display "\n")
                        (assert x7879))))
                    (g7876
                     (letrec*
                      ((x7880
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1446 63))
                        (display "\n")
                        (assert x7880))))
                    (g7877
                     (letrec*
                      ((x7881
                        (letrec*
                         ((x7882
                           (begin
                             (write '(funapp 1449 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1449 61))
                           (display "\n")
                           (< index x7882)))))
                      (begin
                        (write '(funapp 1450 23))
                        (display "\n")
                        (assert x7881))))
                    (g7878
                     (letrec*
                      ((x-cnd7883
                        (begin
                          (write '(funapp 1453 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7883
                        (begin
                          (write '(funapp 1455 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7885
                           (begin
                             (write '(funapp 1457 34))
                             (display "\n")
                             (cdr l)))
                          (x7884
                           (begin
                             (write '(funapp 1457 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1458 26))
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
                          (write '(funapp 1465 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7887
                        a
                        (letrec*
                         ((x7888
                           (begin
                             (write '(funapp 1468 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1468 57))
                           (display "\n")
                           (gcd b x7888)))))))
                   g7886)))
               (sum
                (lambda (n)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x-cnd7890
                        (begin
                          (write '(funapp 1475 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd7890
                        0
                        (letrec*
                         ((x7891
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 1479 51))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1479 61))
                              (display "\n")
                              (sum x7892)))))
                         (begin
                           (write '(funapp 1480 26))
                           (display "\n")
                           (+ n x7891)))))))
                   g7889))))
              (letrec*
               ((g7893
                 (letrec*
                  ((xj7349
                    (letrec*
                     ((x7894
                       (begin (write '(funapp 1485 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 1485 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 1485 58))
                          (display "\n")
                          'module)
                        x7894))))
                   (xk7350
                    (letrec*
                     ((x7895
                       (begin (write '(funapp 1486 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 1486 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 1486 58))
                          (display "\n")
                          'importer)
                        x7895)))))
                  (letrec*
                   ((g7896
                     (begin
                       (write '(funapp 1489 22))
                       (display "\n")
                       ((lambda (j7352 k7353 f7354)
                          (letrec*
                           ((g7897
                             (lambda (g7351)
                               (letrec*
                                ((g7898
                                  (letrec*
                                   ((x7355
                                     (begin
                                       (write '(funapp 1496 42))
                                       (display "\n")
                                       (integer?/c j7352 k7353 g7351))))
                                   (letrec*
                                    ((g7899
                                      (letrec*
                                       ((x7901
                                         (begin
                                           (write '(funapp 1501 40))
                                           (display "\n")
                                           ((lambda (n)
                                              (letrec*
                                               ((g7902
                                                 (letrec*
                                                  ((x7903
                                                    (begin
                                                      (write '(funapp 1505 55))
                                                      (display "\n")
                                                      (>=/c n))))
                                                  (begin
                                                    (write '(funapp 1506 47))
                                                    (display "\n")
                                                    (and/c
                                                     integer?/c
                                                     x7903)))))
                                               g7902))
                                            x7355)))
                                        (x7900
                                         (begin
                                           (write '(funapp 1509 46))
                                           (display "\n")
                                           (f7354 x7355))))
                                       (begin
                                         (write '(funapp 1510 38))
                                         (display "\n")
                                         (x7901 j7352 k7353 x7900)))))
                                    g7899))))
                                g7898))))
                           g7897))
                        xj7349
                        xk7350
                        sum))))
                   g7896))))
               g7893))))
           g7369))))
       g7367)))
    g7366)))
