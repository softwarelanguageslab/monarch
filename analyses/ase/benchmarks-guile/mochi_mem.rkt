(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7370 #t)) g7370)))
    (meta (lambda (v) (letrec* ((g7371 v)) g7371)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7372
          (letrec*
           ((g7373
             (letrec*
              ((x-e7374 lst))
              (letrec*
               ((v1742 x-e7374))
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
                   ((x-cnd7375
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7375
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
           g7373)))
        g7372)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7376 (lambda (v) (letrec* ((g7377 v)) g7377)))) g7376)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7378
          (letrec*
           ((x7379 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7379)))))
        g7378))))
   (letrec*
    ((g7380
      (letrec*
       ((g7381
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
           ((g7382 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7383
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7384
                     (lambda (k j lst)
                       (letrec*
                        ((g7385
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7386
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7386))
                             lst))))
                        g7385))))
                   g7384)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7387
                     (letrec*
                      ((x-cnd7388
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7388
                        g7263
                        (begin
                          (write '(blame g7261 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7387)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7389
                     (letrec*
                      ((x-cnd7390
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7390
                        g7266
                        (begin
                          (write '(blame g7264 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7389)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7391
                     (letrec*
                      ((x-cnd7392
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7392
                        g7269
                        (begin
                          (write '(blame g7267 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7391)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7393
                     (letrec*
                      ((x-cnd7394
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7395 #t)) g7395)) g7272))))
                      (if x-cnd7394
                        g7272
                        (begin
                          (write '(blame g7270 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7393)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7396
                     (letrec*
                      ((x-cnd7397
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7398 #t)) g7398)) g7275))))
                      (if x-cnd7397
                        g7275
                        (begin
                          (write '(blame g7273 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7396)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7399
                     (letrec*
                      ((x-cnd7400
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7400
                        g7278
                        (begin
                          (write '(blame g7276 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7399)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7401
                     (letrec*
                      ((x-cnd7402
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7402
                        g7281
                        (begin
                          (write '(blame g7279 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7401)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7403
                     (letrec*
                      ((x-cnd7404
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7404
                        g7284
                        (begin
                          (write '(blame g7282 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7403)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7405
                     (letrec*
                      ((x-cnd7406
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7406
                        g7287
                        (begin
                          (write '(blame g7285 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7405)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7407
                     (lambda (k j v)
                       (letrec*
                        ((g7408
                          (letrec*
                           ((x-cnd7409
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7409
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7408))))
                   g7407)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7410
                     (lambda (k j v)
                       (letrec*
                        ((g7411
                          (letrec*
                           ((x-cnd7412
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7412
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7416
                                (letrec*
                                 ((x7417
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7417))))
                               (x7413
                                (letrec*
                                 ((x7415
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7414
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7415 k j x7414)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7416 x7413)))))))
                        g7411))))
                   g7410)))
               (any? (lambda (v) (letrec* ((g7418 #t)) g7418)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7419
                     (letrec*
                      ((x7420
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7420)))))
                   g7419)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7421
                     (letrec*
                      ((x-cnd7422
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7423
                                (letrec*
                                 ((x7424
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7424)))))
                              g7423))
                           g7290))))
                      (if x-cnd7422
                        g7290
                        (begin
                          (write '(blame g7288 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7421)))
               (meta (lambda (v) (letrec* ((g7425 v)) g7425)))
               (+
                (letrec*
                 ((xj7291
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7292
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7426
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7295 k7296 f7297)
                         (letrec*
                          ((g7428
                            (lambda (g7293 g7294)
                              (letrec*
                               ((g7429
                                 (letrec*
                                  ((x7430
                                    (letrec*
                                     ((x7432
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7295 k7296 g7293)))
                                      (x7431
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7295 k7296 g7294))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7297 x7432 x7431)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7295 k7296 x7430)))))
                               g7429))))
                          g7428))
                       xj7291
                       xk7292
                       (lambda (a b)
                         (letrec*
                          ((g7427
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7427))))))
                  g7426)))
               (-
                (letrec*
                 ((xj7298
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7299
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7433
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7302 k7303 f7304)
                         (letrec*
                          ((g7435
                            (lambda (g7300 g7301)
                              (letrec*
                               ((g7436
                                 (letrec*
                                  ((x7437
                                    (letrec*
                                     ((x7439
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7302 k7303 g7300)))
                                      (x7438
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7302 k7303 g7301))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7304 x7439 x7438)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7302 k7303 x7437)))))
                               g7436))))
                          g7435))
                       xj7298
                       xk7299
                       (lambda (a b)
                         (letrec*
                          ((g7434
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7434))))))
                  g7433)))
               (*
                (letrec*
                 ((xj7305
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7306
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7440
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7309 k7310 f7311)
                         (letrec*
                          ((g7442
                            (lambda (g7307 g7308)
                              (letrec*
                               ((g7443
                                 (letrec*
                                  ((x7444
                                    (letrec*
                                     ((x7446
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7309 k7310 g7307)))
                                      (x7445
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7309 k7310 g7308))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7311 x7446 x7445)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7309 k7310 x7444)))))
                               g7443))))
                          g7442))
                       xj7305
                       xk7306
                       (lambda (a b)
                         (letrec*
                          ((g7441
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7441))))))
                  g7440)))
               (/
                (letrec*
                 ((xj7312
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7313
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7447
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7316 k7317 f7318)
                         (letrec*
                          ((g7449
                            (lambda (g7314 g7315)
                              (letrec*
                               ((g7450
                                 (letrec*
                                  ((x7451
                                    (letrec*
                                     ((x7453
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7316 k7317 g7314)))
                                      (x7452
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7316 k7317 g7315))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7318 x7453 x7452)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7316 k7317 x7451)))))
                               g7450))))
                          g7449))
                       xj7312
                       xk7313
                       (lambda (a b)
                         (letrec*
                          ((g7448
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7448))))))
                  g7447)))
               (car
                (letrec*
                 ((xj7319
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7320
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7454
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7322 k7323 f7324)
                         (letrec*
                          ((g7456
                            (lambda (g7321)
                              (letrec*
                               ((g7457
                                 (letrec*
                                  ((x7458
                                    (letrec*
                                     ((x7459
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7322 k7323 g7321))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7324 x7459)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7322 k7323 x7458)))))
                               g7457))))
                          g7456))
                       xj7319
                       xk7320
                       (lambda (p)
                         (letrec*
                          ((g7455
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7455))))))
                  g7454)))
               (cdr
                (letrec*
                 ((xj7325
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7326
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7460
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7462
                            (lambda (g7327)
                              (letrec*
                               ((g7463
                                 (letrec*
                                  ((x7464
                                    (letrec*
                                     ((x7465
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7330 x7465)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7328 k7329 x7464)))))
                               g7463))))
                          g7462))
                       xj7325
                       xk7326
                       (lambda (p)
                         (letrec*
                          ((g7461
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7461))))))
                  g7460)))
               (cons
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7466
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7468
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7469
                                 (letrec*
                                  ((x7470
                                    (letrec*
                                     ((x7472
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7335 k7336 g7333)))
                                      (x7471
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7337 x7472 x7471)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7335 k7336 x7470)))))
                               g7469))))
                          g7468))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7467
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7467))))))
                  g7466)))
               (vector-ref
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7473
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7341 k7342 f7343)
                         (letrec*
                          ((g7475
                            (lambda (g7340)
                              (letrec*
                               ((g7476
                                 (letrec*
                                  ((x7477
                                    (letrec*
                                     ((x7478
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7341 k7342 g7340))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7343 x7478)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7341 k7342 x7477)))))
                               g7476))))
                          g7475))
                       xj7338
                       xk7339
                       (lambda (v i)
                         (letrec*
                          ((g7474
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7474))))))
                  g7473)))
               (vector-set!
                (letrec*
                 ((xj7344
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7345
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7479
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7348 k7349 f7350)
                         (letrec*
                          ((g7481
                            (lambda (g7346 g7347)
                              (letrec*
                               ((g7482
                                 (letrec*
                                  ((x7483
                                    (letrec*
                                     ((x7485
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7348 k7349 g7346)))
                                      (x7484
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7348 k7349 g7347))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7350 x7485 x7484)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7348 k7349 x7483)))))
                               g7482))))
                          g7481))
                       xj7344
                       xk7345
                       (lambda (vec i v)
                         (letrec*
                          ((g7480
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7480))))))
                  g7479)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7486
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7486)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7487
                     (letrec*
                      ((x7488
                        (letrec*
                         ((x7489
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7489)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7488)))))
                   g7487)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7490
                     (letrec*
                      ((x7493
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7493))))
                    (g7491
                     (letrec*
                      ((x7494
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7494))))
                    (g7492
                     (letrec*
                      ((x-cnd7495
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7495
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7498
                           (letrec*
                            ((x7499
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7499))))
                          (x7496
                           (letrec*
                            ((x7497
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7497)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7498 x7496)))))))
                   g7492)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7500
                     (letrec*
                      ((x7501
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7501)))))
                   g7500)))
               (cadadr
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
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7505)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7504)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7503)))))
                   g7502)))
               (cdadar
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
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7509)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7508)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7507)))))
                   g7506)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7510
                     (letrec*
                      ((x7513
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7513))))
                    (g7511
                     (letrec*
                      ((x7514
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7514))))
                    (g7512
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
                       ((g7515
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7516 res))
                       g7516))))
                   g7512)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7517
                     (letrec*
                      ((x7518
                        (letrec*
                         ((x7519
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7519)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7518)))))
                   g7517)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7520
                     (letrec*
                      ((x7521
                        (letrec*
                         ((x7522
                           (letrec*
                            ((x7523
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7523)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7522)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7521)))))
                   g7520)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7524
                     (letrec*
                      ((x7526
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7526))))
                    (g7525
                     (letrec*
                      ((x-cnd7527
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7527
                        #f
                        (letrec*
                         ((x-cnd7528
                           (letrec*
                            ((x7529
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7529 k)))))
                         (if x-cnd7528
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7530
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7530)))))))))
                   g7525)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7531
                     (letrec*
                      ((x7532
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7532)))))
                   g7531)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7533
                     (letrec*
                      ((x7535
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7535))))
                    (g7534
                     (letrec*
                      ((x-cnd7536
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7536
                        ""
                        (letrec*
                         ((x7539
                           (letrec*
                            ((x7540
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7540))))
                          (x7537
                           (letrec*
                            ((x7538
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7538)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7539 x7537)))))))
                   g7534)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7541
                     (letrec*
                      ((x7544
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7544))))
                    (g7542
                     (letrec*
                      ((x7545
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7545))))
                    (g7543
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7546
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7546))))
                   g7543)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7547
                     (letrec*
                      ((x7548
                        (letrec*
                         ((x7549
                           (letrec*
                            ((x7550
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7550)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7549)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7548)))))
                   g7547)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7551
                     (letrec*
                      ((x7554
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7554))))
                    (g7552
                     (letrec*
                      ((x7555
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7555))))
                    (g7553
                     (letrec*
                      ((x-cnd7556
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7556
                        x
                        (letrec*
                         ((x7558
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7557
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7558 x7557)))))))
                   g7553)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7559
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7559)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7560
                     (letrec*
                      ((x-cnd7561
                        (letrec*
                         ((x7562 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7562)))))
                      (if x-cnd7561
                        (letrec*
                         ((x7563 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7563)))
                        #f))))
                   g7560)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7564
                     (letrec*
                      ((x7566
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7566))))
                    (g7565
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7567
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7568 (if val7243 val7243 #f)))
                             g7568)))))
                       g7567))))
                   g7565)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7569
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7570
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7570 9)))))
                      (letrec*
                       ((g7571
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7572
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7572 10)))))
                            (letrec*
                             ((g7573
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7574
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7574 32))))))
                             g7573)))))
                       g7571))))
                   g7569)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7575
                     (letrec*
                      ((x7576
                        (letrec*
                         ((x7577
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7577)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7576)))))
                   g7575)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7578
                     (letrec*
                      ((x7580
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7580))))
                    (g7579
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7579)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7581 #f)) g7581)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7582
                     (letrec*
                      ((x7583
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7583)))))
                   g7582)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7584
                     (letrec*
                      ((x7586
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7586))))
                    (g7585
                     (letrec*
                      ((x-cnd7587
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7587
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7585)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7588
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7589
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7590
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7590
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7591
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7592
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7592
                                       (letrec*
                                        ((x-cnd7593
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7593
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7594
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7595
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7595
                                             (letrec*
                                              ((x-cnd7596
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7596
                                                (letrec*
                                                 ((x-cnd7597
                                                   (letrec*
                                                    ((x7599
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7598
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7599 x7598)))))
                                                 (if x-cnd7597
                                                   (letrec*
                                                    ((x7601
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7600
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7601 x7600)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7602
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7603
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7603
                                                (letrec*
                                                 ((x-cnd7604
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7604
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7605
                                                       (letrec*
                                                        ((x-cnd7606
                                                          (letrec*
                                                           ((x7607
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
                                                             (= x7607 n)))))
                                                        (if x-cnd7606
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7608
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
                                                                    ((g7609
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7610
                                                                           (letrec*
                                                                            ((x7612
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
                                                                             (x7611
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
                                                                               x7612
                                                                               x7611)))))
                                                                         (if x-cnd7610
                                                                           (letrec*
                                                                            ((x7613
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
                                                                               x7613)))
                                                                           #f)))))
                                                                    g7609))))
                                                                g7608))))
                                                           (letrec*
                                                            ((g7614
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7614))
                                                          #f))))
                                                     g7605))
                                                   #f))
                                                #f)))))
                                         g7602)))))
                                   g7594)))))
                             g7591)))))
                       g7589))))
                   g7588)))
               (cdaaar
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
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7618)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7617)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7616)))))
                   g7615)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7620
                        (letrec*
                         ((x7621
                           (letrec*
                            ((x7622
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7622)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7621)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7620)))))
                   g7619)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7623
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7623)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7626))))
                    (g7625
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7627
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7628 (if val7252 val7252 #f)))
                             g7628)))))
                       g7627))))
                   g7625)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7632))))
                    (g7630
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7633))))
                    (g7631
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
                       ((g7634
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7635 res))
                       g7635))))
                   g7631)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7636
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7636)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7640))))
                    (g7638
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7641))))
                    (g7639
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7642
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7642))))
                   g7639)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7644
                        (letrec*
                         ((x7645
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7645)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7644)))))
                   g7643)))
               (cdaddr
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
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7649)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7648)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7647)))))
                   g7646)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7651
                        (letrec*
                         ((x7652
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7652)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7651)))))
                   g7650)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7654
                        (letrec*
                         ((x7655
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7655)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7654)))))
                   g7653)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7659))))
                    (g7657
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7660))))
                    (g7658
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7661)))))
                   g7658)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7663
                        (letrec*
                         ((x7664
                           (letrec*
                            ((x7665
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7665)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7664)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7663)))))
                   g7662)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((x7668
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7668))))
                    (g7667
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7667)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7669
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7669)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((x7671
                        (letrec*
                         ((x7672
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7672)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7671)))))
                   g7670)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7673
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7673)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7676))))
                    (g7675
                     (letrec*
                      ((x-cnd7677
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7677
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7680
                           (letrec*
                            ((x7681
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7681))))
                          (x7678
                           (letrec*
                            ((x7679
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7679)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7680 x7678)))))))
                   g7675)))
               (caaadr
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
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7685)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7684)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7683)))))
                   g7682)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7686
                     (letrec*
                      ((x7687
                        (letrec*
                         ((x7688
                           (letrec*
                            ((x7689
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7689)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7688)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7687)))))
                   g7686)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7690
                     (letrec*
                      ((x7692
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7692))))
                    (g7691
                     (letrec*
                      ((x7693
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7693)))))
                   g7691)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7694
                     (letrec*
                      ((x7695
                        (letrec*
                         ((x7696
                           (letrec*
                            ((x7697
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7697)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7696)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7695)))))
                   g7694)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7698
                     (letrec*
                      ((x7701
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7701))))
                    (g7699
                     (letrec*
                      ((x7702
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7702))))
                    (g7700
                     (letrec*
                      ((x-cnd7703
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7703
                        (letrec*
                         ((g7704
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7704)
                        (letrec*
                         ((x-cnd7705
                           (letrec*
                            ((x7706
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7706)))))
                         (if x-cnd7705
                           (letrec*
                            ((g7707
                              (letrec*
                               ((x7708
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7708)))))
                            g7707)
                           (letrec*
                            ((x-cnd7709
                              (letrec*
                               ((x7710
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7710)))))
                            (if x-cnd7709
                              (letrec*
                               ((g7711
                                 (letrec*
                                  ((x7713
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7712
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7713 x7712)))))
                               g7711)
                              (letrec*
                               ((x-cnd7714
                                 (letrec*
                                  ((x7715
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7715)))))
                               (if x-cnd7714
                                 (letrec*
                                  ((g7716
                                    (letrec*
                                     ((x7719
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7718
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7717
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7719 x7718 x7717)))))
                                  g7716)
                                 (letrec*
                                  ((x-cnd7720
                                    (letrec*
                                     ((x7721
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7721)))))
                                  (if x-cnd7720
                                    (letrec*
                                     ((g7722
                                       (letrec*
                                        ((x7726
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7725
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7724
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7723
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7726 x7725 x7724 x7723)))))
                                     g7722)
                                    (letrec*
                                     ((x-cnd7727
                                       (letrec*
                                        ((x7728
                                          (letrec*
                                           ((x7729
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7729)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7728)))))
                                     (if x-cnd7727
                                       (letrec*
                                        ((g7730
                                          (letrec*
                                           ((x7736
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7735
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7734
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7733
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7731
                                             (letrec*
                                              ((x7732
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7732)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7736
                                              x7735
                                              x7734
                                              x7733
                                              x7731)))))
                                        g7730)
                                       (letrec*
                                        ((x-cnd7737
                                          (letrec*
                                           ((x7738
                                             (letrec*
                                              ((x7739
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x7739)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x7738)))))
                                        (if x-cnd7737
                                          (letrec*
                                           ((g7740
                                             (letrec*
                                              ((x7748
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7747
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7746
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7745
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7743
                                                (letrec*
                                                 ((x7744
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x7744))))
                                               (x7741
                                                (letrec*
                                                 ((x7742
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x7742)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x7748
                                                 x7747
                                                 x7746
                                                 x7745
                                                 x7743
                                                 x7741)))))
                                           g7740)
                                          (letrec*
                                           ((x-cnd7749
                                             (letrec*
                                              ((x7750
                                                (letrec*
                                                 ((x7751
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x7751)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x7750)))))
                                           (if x-cnd7749
                                             (letrec*
                                              ((g7752
                                                (letrec*
                                                 ((x7762
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7761
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7760
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7759
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7757
                                                   (letrec*
                                                    ((x7758
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x7758))))
                                                  (x7755
                                                   (letrec*
                                                    ((x7756
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x7756))))
                                                  (x7753
                                                   (letrec*
                                                    ((x7754
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x7754)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x7762
                                                    x7761
                                                    x7760
                                                    x7759
                                                    x7757
                                                    x7755
                                                    x7753)))))
                                              g7752)
                                             (letrec*
                                              ((g7763
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7763)))))))))))))))))))
                   g7700)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7766
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x7766))))
                    (g7765
                     (letrec*
                      ((x-cnd7767
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7767
                        #f
                        (letrec*
                         ((x-cnd7768
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x7769 e)))))
                         (if x-cnd7768
                           l
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x7770)))))))))
                   g7765)))
               (cddddr
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
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x7774)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x7773)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x7772)))))
                   g7771)))
               (cadddr
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
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x7778)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x7777)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x7776)))))
                   g7775)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7779
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g7779)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x7782))))
                    (g7781
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g7781)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7784
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7784))))
                   g7783)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x7786)))))
                   g7785)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7788
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7788
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x7789)))
                           #f))))
                      (letrec*
                       ((g7790
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g7790))))
                   g7787)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7792
                        (letrec*
                         ((x7793
                           (letrec*
                            ((x7794
                              (begin
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x7794)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x7793)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x7792)))))
                   g7791)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x-cnd7796
                        (letrec*
                         ((x7797 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x7797 c)))))
                      (if x-cnd7796
                        (letrec*
                         ((x7798 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x7798)))
                        #f))))
                   g7795)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x7801))))
                    (g7800
                     (letrec*
                      ((x-cnd7802
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7802
                        #f
                        (letrec*
                         ((x-cnd7803
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x7804 k)))))
                         (if x-cnd7803
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7805
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x7805)))))))))
                   g7800)))
               (not (lambda (x) (letrec* ((g7806 (if x #f #t))) g7806)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7807
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g7807)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7808
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x7810))))
                    (g7809
                     (letrec*
                      ((x-cnd7811
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7811
                        #f
                        (letrec*
                         ((x-cnd7812
                           (letrec*
                            ((x7813
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x7813 e)))))
                         (if x-cnd7812
                           l
                           (letrec*
                            ((x7814
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x7814)))))))))
                   g7809)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((x7816
                        (letrec*
                         ((x7817
                           (letrec*
                            ((x7818
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x7818)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x7817)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x7816)))))
                   g7815)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x7821))))
                    (g7820
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7822
                             (letrec*
                              ((x-cnd7823
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7823
                                0
                                (letrec*
                                 ((x7824
                                   (letrec*
                                    ((x7825
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x7825)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x7824)))))))
                           g7822))))
                      (letrec*
                       ((g7826
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g7826))))
                   g7820)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7827
                     (letrec*
                      ((x7830
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7830))))
                    (g7828
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x7831))))
                    (g7829
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7832
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7832))))
                   g7829)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7833
                     (letrec*
                      ((x7834
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x7834)))))
                   g7833)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((x7836
                        (letrec*
                         ((x7837
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x7837)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x7836)))))
                   g7835)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x7840
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x7840))))
                    (g7839
                     (letrec*
                      ((x-cnd7841
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7841
                        #f
                        (letrec*
                         ((x-cnd7842
                           (letrec*
                            ((x7843
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x7843 k)))))
                         (if x-cnd7842
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7844
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x7844)))))))))
                   g7839)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7845
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x7846)))))
                   g7845)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((x7850
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7850))))
                    (g7848
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x7851))))
                    (g7849
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x7852)))))
                   g7849)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7854
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7854))))
                   g7853)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7855
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x7858))))
                    (g7856
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x7859))))
                    (g7857
                     (letrec*
                      ((x-cnd7860
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7860
                        #t
                        (letrec*
                         ((x-cnd7861
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7861
                           (letrec*
                            ((g7862
                              (letrec*
                               ((x7864
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x7864))))
                             (g7863
                              (letrec*
                               ((x7865
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x7865)))))
                            g7863)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g7857)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((x7868
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x7868))))
                    (g7867
                     (letrec*
                      ((x-cnd7869
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7869
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7867)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x7873
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7873))))
                    (g7871
                     (letrec*
                      ((x7874
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x7874))))
                    (g7872
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7875
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7875))))
                   g7872)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x7877
                        (letrec*
                         ((x7878
                           (letrec*
                            ((x7879
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x7879)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x7878)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x7877)))))
                   g7876)))
               (newline (lambda () (letrec* ((g7880 #f)) g7880)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((x7883
                        (letrec*
                         ((x7884
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x7884))))
                       (x7882
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x7883 x7882)))))
                   g7881)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7887
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x7887))))
                    (g7886
                     (letrec*
                      ((x7888
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x7888)))))
                   g7886)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7893
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x7893))))
                    (g7890
                     (letrec*
                      ((x7894
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x7894))))
                    (g7891
                     (letrec*
                      ((x7895
                        (letrec*
                         ((x7896
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x7896)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x7895))))
                    (g7892
                     (letrec*
                      ((x-cnd7897
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7897
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7899
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x7898
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x7899 x7898)))))))
                   g7892)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x-cnd7901
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7901
                        a
                        (letrec*
                         ((x7902
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x7902)))))))
                   g7900)))
               (mk-list
                (lambda (n x)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x-cnd7904
                        (begin
                          (write '(funapp 1476 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd7904
                        empty
                        (letrec*
                         ((x7905
                           (letrec*
                            ((x7906
                              (begin
                                (write '(funapp 1481 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1481 55))
                              (display "\n")
                              (mk-list x7906 x)))))
                         (begin
                           (write '(funapp 1482 26))
                           (display "\n")
                           (cons x x7905)))))))
                   g7903)))
               (mem
                (lambda (x xs)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x-cnd7908
                        (begin
                          (write '(funapp 1489 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7908
                        #f
                        (letrec*
                         ((val7259
                           (letrec*
                            ((x7909
                              (begin
                                (write '(funapp 1493 53))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1493 64))
                              (display "\n")
                              (= x x7909)))))
                         (letrec*
                          ((g7910
                            (if val7259
                              val7259
                              (letrec*
                               ((x7911
                                 (begin
                                   (write '(funapp 1498 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1498 59))
                                 (display "\n")
                                 (mem x x7911))))))
                          g7910))))))
                   g7907))))
              (letrec*
               ((g7912
                 (letrec*
                  ((xj7351
                    (begin
                      (write '(funapp 1504 28))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 1504 32))
                         (display "\n")
                         'module))))
                   (xk7352
                    (begin
                      (write '(funapp 1504 51))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 1504 55))
                         (display "\n")
                         'importer)))))
                  (letrec*
                   ((g7914
                     (begin
                       (write '(funapp 1507 22))
                       (display "\n")
                       ((lambda (j7355 k7356 f7357)
                          (letrec*
                           ((g7915
                             (lambda (g7353 g7354)
                               (letrec*
                                ((g7916
                                  (letrec*
                                   ((x7358
                                     (begin
                                       (write '(funapp 1514 42))
                                       (display "\n")
                                       (integer?/c j7355 k7356 g7353)))
                                    (x7359
                                     (begin
                                       (write '(funapp 1515 42))
                                       (display "\n")
                                       (integer?/c j7355 k7356 g7354))))
                                   (letrec*
                                    ((g7917
                                      (letrec*
                                       ((x7919
                                         (begin
                                           (write '(funapp 1520 40))
                                           (display "\n")
                                           ((lambda (_ x)
                                              (letrec*
                                               ((g7920
                                                 (letrec*
                                                  ((x7925
                                                    (begin
                                                      (write '(funapp 1524 55))
                                                      (display "\n")
                                                      (listof integer?/c))))
                                                  (begin
                                                    (write '(funapp 1525 47))
                                                    (display "\n")
                                                    (and/c
                                                     x7925
                                                     (lambda (g7360
                                                              g7361
                                                              g7362)
                                                       (letrec*
                                                        ((g7921
                                                          (letrec*
                                                           ((x-cnd7922
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1532
                                                                  56))
                                                               (display "\n")
                                                               ((lambda (l)
                                                                  (letrec*
                                                                   ((g7923
                                                                     (letrec*
                                                                      ((val7260
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             1537
                                                                             65))
                                                                          (display
                                                                           "\n")
                                                                          (empty?
                                                                           l))))
                                                                      (letrec*
                                                                       ((g7924
                                                                         (if val7260
                                                                           val7260
                                                                           (begin
                                                                             (write
                                                                              '(funapp
                                                                                1542
                                                                                68))
                                                                             (display
                                                                              "\n")
                                                                             (member
                                                                              x
                                                                              l)))))
                                                                       g7924))))
                                                                   g7923))
                                                                g7362))))
                                                           (if x-cnd7922
                                                             g7362
                                                             (begin
                                                               (write
                                                                '(blame
                                                                  g7360
                                                                  1550
                                                                  55))
                                                               (display "\n")
                                                               (error
                                                                (format
                                                                 "contract violation, blaming ~a~%"
                                                                 g7360)))))))
                                                        g7921)))))))
                                               g7920))
                                            x7358
                                            x7359)))
                                        (x7918
                                         (begin
                                           (write '(funapp 1565 46))
                                           (display "\n")
                                           (f7357 x7358 x7359))))
                                       (begin
                                         (write '(funapp 1566 38))
                                         (display "\n")
                                         (x7919 j7355 k7356 x7918)))))
                                    g7917))))
                                g7916))))
                           g7915))
                        xj7351
                        xk7352
                        mk-list))))
                   g7914)))
                (g7913
                 (letrec*
                  ((x7928
                    (letrec*
                     ((xj7363
                       (begin
                         (write '(funapp 1578 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1578 35))
                            (display "\n")
                            'module))))
                      (xk7364
                       (begin
                         (write '(funapp 1578 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 1578 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g7929
                        (begin
                          (write '(funapp 1581 25))
                          (display "\n")
                          ((lambda (j7367 k7368 f7369)
                             (letrec*
                              ((g7930
                                (lambda (g7365 g7366)
                                  (letrec*
                                   ((g7931
                                     (letrec*
                                      ((x7932
                                        (letrec*
                                         ((x7935
                                           (begin
                                             (write '(funapp 1590 48))
                                             (display "\n")
                                             (integer?/c j7367 k7368 g7365)))
                                          (x7933
                                           (letrec*
                                            ((x7934
                                              (begin
                                                (write '(funapp 1593 51))
                                                (display "\n")
                                                (listof integer?/c))))
                                            (begin
                                              (write '(funapp 1594 43))
                                              (display "\n")
                                              (x7934 j7367 k7368 g7366)))))
                                         (begin
                                           (write '(funapp 1595 40))
                                           (display "\n")
                                           (f7369 x7935 x7933)))))
                                      (begin
                                        (write '(funapp 1596 37))
                                        (display "\n")
                                        (boolean?/c j7367 k7368 x7932)))))
                                   g7931))))
                              g7930))
                           xj7363
                           xk7364
                           mem))))
                      g7929)))
                   (x7927 (input))
                   (x7926 (input)))
                  (begin
                    (write '(funapp 1605 19))
                    (display "\n")
                    (x7928 x7927 x7926)))))
               g7913))))
           g7383))))
       g7381)))
    g7380)))
