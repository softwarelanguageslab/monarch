(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
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
                   ((x-cnd7375
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7375
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
           ((x7379 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7379)))))
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
           ((g7382 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7383
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7384
                     (lambda (k j lst)
                       (letrec*
                        ((g7385
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7386
                                  (begin
                                    (write '(funapp 66 47))
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
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7388
                        g7263
                        (begin
                          (write '(blame g7261 76 42))
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
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7390
                        g7266
                        (begin
                          (write '(blame g7264 84 42))
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
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7392
                        g7269
                        (begin
                          (write '(blame g7267 92 42))
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
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7395 #t)) g7395)) g7272))))
                      (if x-cnd7394
                        g7272
                        (begin
                          (write '(blame g7270 101 42))
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
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7398 #t)) g7398)) g7275))))
                      (if x-cnd7397
                        g7275
                        (begin
                          (write '(blame g7273 110 42))
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
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7400
                        g7278
                        (begin
                          (write '(blame g7276 118 42))
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
                          (write '(funapp 126 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7402
                        g7281
                        (begin
                          (write '(blame g7279 127 42))
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
                          (write '(funapp 134 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7404
                        g7284
                        (begin
                          (write '(blame g7282 135 42))
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
                          (write '(funapp 142 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7406
                        g7287
                        (begin
                          (write '(blame g7285 143 42))
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
                               (write '(funapp 153 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7409
                             (begin
                               (write '(funapp 154 42))
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
                               (write '(funapp 165 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7412
                             (begin
                               (write '(funapp 167 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7416
                                (letrec*
                                 ((x7417
                                   (begin
                                     (write '(funapp 171 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 172 34))
                                   (display "\n")
                                   (contract k j x7417))))
                               (x7413
                                (letrec*
                                 ((x7415
                                   (begin
                                     (write '(funapp 175 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7414
                                   (begin
                                     (write '(funapp 175 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 176 34))
                                   (display "\n")
                                   (x7415 k j x7414)))))
                              (begin
                                (write '(funapp 177 31))
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
                          (write '(funapp 184 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 184 55))
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
                          (write '(funapp 192 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7423
                                (letrec*
                                 ((x7424
                                   (begin
                                     (write '(funapp 194 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 194 64))
                                   (display "\n")
                                   (not x7424)))))
                              g7423))
                           g7290))))
                      (if x-cnd7422
                        g7290
                        (begin
                          (write '(blame g7288 199 24))
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
                   (begin (write '(funapp 204 26)) (display "\n") 'server))
                  (xk7292
                   (begin (write '(funapp 204 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7426
                    (begin
                      (write '(funapp 207 21))
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
                                         (write '(funapp 216 44))
                                         (display "\n")
                                         (number?/c j7295 k7296 g7293)))
                                      (x7431
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7295 k7296 g7294))))
                                     (begin
                                       (write '(funapp 218 36))
                                       (display "\n")
                                       (f7297 x7432 x7431)))))
                                  (begin
                                    (write '(funapp 219 33))
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
                              (write '(funapp 224 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7427))))))
                  g7426)))
               (-
                (letrec*
                 ((xj7298
                   (begin (write '(funapp 228 26)) (display "\n") 'server))
                  (xk7299
                   (begin (write '(funapp 228 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7433
                    (begin
                      (write '(funapp 231 21))
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
                                         (write '(funapp 240 44))
                                         (display "\n")
                                         (number?/c j7302 k7303 g7300)))
                                      (x7438
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7302 k7303 g7301))))
                                     (begin
                                       (write '(funapp 242 36))
                                       (display "\n")
                                       (f7304 x7439 x7438)))))
                                  (begin
                                    (write '(funapp 243 33))
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
                              (write '(funapp 248 53))
                              (display "\n")
                              (orig-- a b))))
                          g7434))))))
                  g7433)))
               (*
                (letrec*
                 ((xj7305
                   (begin (write '(funapp 252 26)) (display "\n") 'server))
                  (xk7306
                   (begin (write '(funapp 252 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7440
                    (begin
                      (write '(funapp 255 21))
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
                                         (write '(funapp 264 44))
                                         (display "\n")
                                         (number?/c j7309 k7310 g7307)))
                                      (x7445
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7309 k7310 g7308))))
                                     (begin
                                       (write '(funapp 266 36))
                                       (display "\n")
                                       (f7311 x7446 x7445)))))
                                  (begin
                                    (write '(funapp 267 33))
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
                              (write '(funapp 272 53))
                              (display "\n")
                              (orig-* a b))))
                          g7441))))))
                  g7440)))
               (/
                (letrec*
                 ((xj7312
                   (begin (write '(funapp 276 26)) (display "\n") 'server))
                  (xk7313
                   (begin (write '(funapp 276 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7447
                    (begin
                      (write '(funapp 279 21))
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
                                         (write '(funapp 288 44))
                                         (display "\n")
                                         (number?/c j7316 k7317 g7314)))
                                      (x7452
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7316 k7317 g7315))))
                                     (begin
                                       (write '(funapp 290 36))
                                       (display "\n")
                                       (f7318 x7453 x7452)))))
                                  (begin
                                    (write '(funapp 291 33))
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
                              (write '(funapp 296 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7448))))))
                  g7447)))
               (car
                (letrec*
                 ((xj7319
                   (begin (write '(funapp 300 26)) (display "\n") 'server))
                  (xk7320
                   (begin (write '(funapp 300 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7454
                    (begin
                      (write '(funapp 303 21))
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
                                         (write '(funapp 312 44))
                                         (display "\n")
                                         (pair?/c j7322 k7323 g7321))))
                                     (begin
                                       (write '(funapp 313 36))
                                       (display "\n")
                                       (f7324 x7459)))))
                                  (begin
                                    (write '(funapp 314 33))
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
                              (write '(funapp 319 51))
                              (display "\n")
                              (orig-car p))))
                          g7455))))))
                  g7454)))
               (cdr
                (letrec*
                 ((xj7325
                   (begin (write '(funapp 323 26)) (display "\n") 'server))
                  (xk7326
                   (begin (write '(funapp 323 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7460
                    (begin
                      (write '(funapp 326 21))
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
                                         (write '(funapp 335 44))
                                         (display "\n")
                                         (pair?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 336 36))
                                       (display "\n")
                                       (f7330 x7465)))))
                                  (begin
                                    (write '(funapp 337 33))
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
                              (write '(funapp 342 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7461))))))
                  g7460)))
               (cons
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 346 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 346 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7466
                    (begin
                      (write '(funapp 349 21))
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
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (any/c j7335 k7336 g7333)))
                                      (x7471
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 360 36))
                                       (display "\n")
                                       (f7337 x7472 x7471)))))
                                  (begin
                                    (write '(funapp 361 33))
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
                              (write '(funapp 367 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7467))))))
                  g7466)))
               (vector-ref
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 371 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 371 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7473
                    (begin
                      (write '(funapp 374 21))
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
                                         (write '(funapp 383 44))
                                         (display "\n")
                                         (vector?/c j7341 k7342 g7340))))
                                     (begin
                                       (write '(funapp 384 36))
                                       (display "\n")
                                       (f7343 x7478)))))
                                  (begin
                                    (write '(funapp 385 33))
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
                              (write '(funapp 391 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7474))))))
                  g7473)))
               (vector-set!
                (letrec*
                 ((xj7344
                   (begin (write '(funapp 395 26)) (display "\n") 'server))
                  (xk7345
                   (begin (write '(funapp 395 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7479
                    (begin
                      (write '(funapp 398 21))
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
                                         (write '(funapp 407 44))
                                         (display "\n")
                                         (vector?/c j7348 k7349 g7346)))
                                      (x7484
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (integer?/c j7348 k7349 g7347))))
                                     (begin
                                       (write '(funapp 409 36))
                                       (display "\n")
                                       (f7350 x7485 x7484)))))
                                  (begin
                                    (write '(funapp 410 33))
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
                              (write '(funapp 416 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7480))))))
                  g7479)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7486
                     (if cnd
                       (begin (write '(funapp 421 35)) (display "\n") '())
                       (begin
                         (write '(funapp 421 40))
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
                             (write '(funapp 428 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 428 58))
                           (display "\n")
                           (cdr x7489)))))
                      (begin
                        (write '(funapp 429 23))
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
                          (write '(funapp 435 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 435 62))
                        (display "\n")
                        (assert x7493))))
                    (g7491
                     (letrec*
                      ((x7494
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 436 57))
                        (display "\n")
                        (assert x7494))))
                    (g7492
                     (letrec*
                      ((x-cnd7495
                        (begin
                          (write '(funapp 439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7495
                        (begin (write '(funapp 441 24)) (display "\n") '())
                        (letrec*
                         ((x7498
                           (letrec*
                            ((x7499
                              (begin
                                (write '(funapp 443 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 443 61))
                              (display "\n")
                              (f x7499))))
                          (x7496
                           (letrec*
                            ((x7497
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (map f x7497)))))
                         (begin
                           (write '(funapp 445 26))
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
                          (write '(funapp 450 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 450 55))
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
                                (write '(funapp 459 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 459 61))
                              (display "\n")
                              (car x7505)))))
                         (begin
                           (write '(funapp 460 26))
                           (display "\n")
                           (cdr x7504)))))
                      (begin
                        (write '(funapp 461 23))
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
                                (write '(funapp 470 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 470 61))
                              (display "\n")
                              (cdr x7509)))))
                         (begin
                           (write '(funapp 471 26))
                           (display "\n")
                           (car x7508)))))
                      (begin
                        (write '(funapp 472 23))
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
                          (write '(funapp 478 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 478 60))
                        (display "\n")
                        (assert x7513))))
                    (g7511
                     (letrec*
                      ((x7514
                        (begin
                          (write '(funapp 480 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 480 59))
                        (display "\n")
                        (assert x7514))))
                    (g7512
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
                       ((g7515
                         (begin
                           (write '(funapp 486 32))
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
                             (write '(funapp 494 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 494 58))
                           (display "\n")
                           (cdr x7519)))))
                      (begin
                        (write '(funapp 495 23))
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
                                (write '(funapp 504 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 504 61))
                              (display "\n")
                              (car x7523)))))
                         (begin
                           (write '(funapp 505 26))
                           (display "\n")
                           (car x7522)))))
                      (begin
                        (write '(funapp 506 23))
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
                          (write '(funapp 511 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 511 57))
                        (display "\n")
                        (assert x7526))))
                    (g7525
                     (letrec*
                      ((x-cnd7527
                        (begin
                          (write '(funapp 514 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7527
                        #f
                        (letrec*
                         ((x-cnd7528
                           (letrec*
                            ((x7529
                              (begin
                                (write '(funapp 519 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 519 56))
                              (display "\n")
                              (eq? x7529 k)))))
                         (if x-cnd7528
                           (begin
                             (write '(funapp 521 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7530
                              (begin
                                (write '(funapp 522 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 522 55))
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
                          (write '(funapp 527 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 527 60))
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
                          (write '(funapp 532 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 532 57))
                        (display "\n")
                        (assert x7535))))
                    (g7534
                     (letrec*
                      ((x-cnd7536
                        (begin
                          (write '(funapp 535 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7536
                        ""
                        (letrec*
                         ((x7539
                           (letrec*
                            ((x7540
                              (begin
                                (write '(funapp 540 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 540 55))
                              (display "\n")
                              (char->string x7540))))
                          (x7537
                           (letrec*
                            ((x7538
                              (begin
                                (write '(funapp 542 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 542 55))
                              (display "\n")
                              (list->string x7538)))))
                         (begin
                           (write '(funapp 543 26))
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
                          (write '(funapp 548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 548 58))
                        (display "\n")
                        (assert x7544))))
                    (g7542
                     (letrec*
                      ((x7545
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7545))))
                    (g7543
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 552 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7546
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 554 52))
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
                                (write '(funapp 564 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 564 61))
                              (display "\n")
                              (cdr x7550)))))
                         (begin
                           (write '(funapp 565 26))
                           (display "\n")
                           (cdr x7549)))))
                      (begin
                        (write '(funapp 566 23))
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
                          (write '(funapp 571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 571 57))
                        (display "\n")
                        (assert x7554))))
                    (g7552
                     (letrec*
                      ((x7555
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7555))))
                    (g7553
                     (letrec*
                      ((x-cnd7556
                        (begin
                          (write '(funapp 575 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7556
                        x
                        (letrec*
                         ((x7558
                           (begin
                             (write '(funapp 579 34))
                             (display "\n")
                             (cdr x)))
                          (x7557
                           (begin
                             (write '(funapp 579 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 580 26))
                           (display "\n")
                           (list-tail x7558 x7557)))))))
                   g7553)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7559
                     (begin (write '(funapp 582 49)) (display "\n") '())))
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
                           (write '(funapp 589 48))
                           (display "\n")
                           (char-ci>=? c x7562)))))
                      (if x-cnd7561
                        (letrec*
                         ((x7563 #\z))
                         (begin
                           (write '(funapp 591 48))
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
                          (write '(funapp 597 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 597 59))
                        (display "\n")
                        (assert x7566))))
                    (g7565
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 600 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7567
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 606 39))
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
                             (write '(funapp 618 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 618 62))
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
                                   (write '(funapp 626 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 627 32))
                                 (display "\n")
                                 (= x7572 10)))))
                            (letrec*
                             ((g7573
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7574
                                    (begin
                                      (write '(funapp 633 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 634 35))
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
                             (write '(funapp 643 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 643 58))
                           (display "\n")
                           (cdr x7577)))))
                      (begin
                        (write '(funapp 644 23))
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
                          (write '(funapp 649 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 649 59))
                        (display "\n")
                        (assert x7580))))
                    (g7579
                     (begin (write '(funapp 650 28)) (display "\n") (> x 0))))
                   g7579)))
               ($pc (begin (write '(funapp 652 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7581 #f)) g7581)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7582
                     (letrec*
                      ((x7583
                        (begin
                          (write '(funapp 658 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 658 55))
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
                          (write '(funapp 663 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 663 59))
                        (display "\n")
                        (assert x7586))))
                    (g7585
                     (letrec*
                      ((x-cnd7587
                        (begin
                          (write '(funapp 666 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7587
                        (begin
                          (write '(funapp 667 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 667 49))
                          (display "\n")
                          (floor x))))))
                   g7585)))
               ($cmp (begin (write '(funapp 669 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7588
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 675 33))
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
                                   (write '(funapp 683 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7590
                                 (begin
                                   (write '(funapp 684 46))
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
                                         (write '(funapp 692 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7592
                                       (letrec*
                                        ((x-cnd7593
                                          (begin
                                            (write '(funapp 695 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7593
                                          (begin
                                            (write '(funapp 696 55))
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
                                               (write '(funapp 705 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7595
                                             (letrec*
                                              ((x-cnd7596
                                                (begin
                                                  (write '(funapp 708 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7596
                                                (letrec*
                                                 ((x-cnd7597
                                                   (letrec*
                                                    ((x7599
                                                      (begin
                                                        (write
                                                         '(funapp 713 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7598
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 715 53))
                                                      (display "\n")
                                                      (equal? x7599 x7598)))))
                                                 (if x-cnd7597
                                                   (letrec*
                                                    ((x7601
                                                      (begin
                                                        (write
                                                         '(funapp 718 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7600
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 720 53))
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
                                                  (write '(funapp 729 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7603
                                                (letrec*
                                                 ((x-cnd7604
                                                   (begin
                                                     (write '(funapp 732 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7604
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 735 57))
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
                                                                  742
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 744 60))
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
                                                                          753
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
                                                                                   762
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
                                                                               x7612
                                                                               x7611)))))
                                                                         (if x-cnd7610
                                                                           (letrec*
                                                                            ((x7613
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
                                                                               x7613)))
                                                                           #f)))))
                                                                    g7609))))
                                                                g7608))))
                                                           (letrec*
                                                            ((g7614
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   784
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
                                (write '(funapp 802 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 802 61))
                              (display "\n")
                              (car x7618)))))
                         (begin
                           (write '(funapp 803 26))
                           (display "\n")
                           (car x7617)))))
                      (begin
                        (write '(funapp 804 23))
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
                                (write '(funapp 813 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 813 61))
                              (display "\n")
                              (cdr x7622)))))
                         (begin
                           (write '(funapp 814 26))
                           (display "\n")
                           (car x7621)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (car x7620)))))
                   g7619)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7623
                     (begin
                       (write '(funapp 817 53))
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
                          (write '(funapp 821 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 821 59))
                        (display "\n")
                        (assert x7626))))
                    (g7625
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 824 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7627
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 830 39))
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
                          (write '(funapp 840 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 840 60))
                        (display "\n")
                        (assert x7632))))
                    (g7630
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 842 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 842 59))
                        (display "\n")
                        (assert x7633))))
                    (g7631
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
                       ((g7634
                         (begin
                           (write '(funapp 848 32))
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
                       (write '(funapp 851 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 851 57)) (display "\n") '())))))
                   g7636)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 855 58))
                        (display "\n")
                        (assert x7640))))
                    (g7638
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7641))))
                    (g7639
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 859 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7642
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 861 52))
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
                             (write '(funapp 869 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 869 58))
                           (display "\n")
                           (car x7645)))))
                      (begin
                        (write '(funapp 870 23))
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
                                (write '(funapp 879 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 879 61))
                              (display "\n")
                              (cdr x7649)))))
                         (begin
                           (write '(funapp 880 26))
                           (display "\n")
                           (car x7648)))))
                      (begin
                        (write '(funapp 881 23))
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
                             (write '(funapp 889 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 889 58))
                           (display "\n")
                           (cdr x7652)))))
                      (begin
                        (write '(funapp 890 23))
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
                             (write '(funapp 897 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 897 58))
                           (display "\n")
                           (car x7655)))))
                      (begin
                        (write '(funapp 898 23))
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
                          (write '(funapp 903 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 903 58))
                        (display "\n")
                        (assert x7659))))
                    (g7657
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7660))))
                    (g7658
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 905 66))
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
                                (write '(funapp 915 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 915 61))
                              (display "\n")
                              (car x7665)))))
                         (begin
                           (write '(funapp 916 26))
                           (display "\n")
                           (car x7664)))))
                      (begin
                        (write '(funapp 917 23))
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
                          (write '(funapp 922 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7668))))
                    (g7667
                     (begin (write '(funapp 923 28)) (display "\n") (< x 0))))
                   g7667)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7669
                     (begin
                       (write '(funapp 925 53))
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
                             (write '(funapp 931 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 931 58))
                           (display "\n")
                           (car x7672)))))
                      (begin
                        (write '(funapp 932 23))
                        (display "\n")
                        (car x7671)))))
                   g7670)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7673
                     (begin (write '(funapp 934 51)) (display "\n") '())))
                   g7673)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 938 57))
                        (display "\n")
                        (assert x7676))))
                    (g7675
                     (letrec*
                      ((x-cnd7677
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7677
                        (begin (write '(funapp 943 24)) (display "\n") '())
                        (letrec*
                         ((x7680
                           (letrec*
                            ((x7681
                              (begin
                                (write '(funapp 945 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 945 61))
                              (display "\n")
                              (reverse x7681))))
                          (x7678
                           (letrec*
                            ((x7679
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (list x7679)))))
                         (begin
                           (write '(funapp 947 26))
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
                                (write '(funapp 956 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 956 61))
                              (display "\n")
                              (car x7685)))))
                         (begin
                           (write '(funapp 957 26))
                           (display "\n")
                           (car x7684)))))
                      (begin
                        (write '(funapp 958 23))
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
                                (write '(funapp 967 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 967 61))
                              (display "\n")
                              (car x7689)))))
                         (begin
                           (write '(funapp 968 26))
                           (display "\n")
                           (cdr x7688)))))
                      (begin
                        (write '(funapp 969 23))
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
                          (write '(funapp 974 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 974 59))
                        (display "\n")
                        (assert x7692))))
                    (g7691
                     (letrec*
                      ((x7693
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 975 60))
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
                                (write '(funapp 984 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 984 61))
                              (display "\n")
                              (cdr x7697)))))
                         (begin
                           (write '(funapp 985 26))
                           (display "\n")
                           (car x7696)))))
                      (begin
                        (write '(funapp 986 23))
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
                          (write '(funapp 992 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 992 59))
                        (display "\n")
                        (assert x7701))))
                    (g7699
                     (letrec*
                      ((x7702
                        (begin
                          (write '(funapp 993 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 993 60))
                        (display "\n")
                        (assert x7702))))
                    (g7700
                     (letrec*
                      ((x-cnd7703
                        (begin
                          (write '(funapp 996 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7703
                        (letrec*
                         ((g7704
                           (begin
                             (write '(funapp 998 42))
                             (display "\n")
                             (proc))))
                         g7704)
                        (letrec*
                         ((x-cnd7705
                           (letrec*
                            ((x7706
                              (begin
                                (write '(funapp 1001 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1001 58))
                              (display "\n")
                              (null? x7706)))))
                         (if x-cnd7705
                           (letrec*
                            ((g7707
                              (letrec*
                               ((x7708
                                 (begin
                                   (write '(funapp 1005 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1005 61))
                                 (display "\n")
                                 (proc x7708)))))
                            g7707)
                           (letrec*
                            ((x-cnd7709
                              (letrec*
                               ((x7710
                                 (begin
                                   (write '(funapp 1009 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1009 62))
                                 (display "\n")
                                 (null? x7710)))))
                            (if x-cnd7709
                              (letrec*
                               ((g7711
                                 (letrec*
                                  ((x7713
                                    (begin
                                      (write '(funapp 1014 43))
                                      (display "\n")
                                      (car args)))
                                   (x7712
                                    (begin
                                      (write '(funapp 1014 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1015 35))
                                    (display "\n")
                                    (proc x7713 x7712)))))
                               g7711)
                              (letrec*
                               ((x-cnd7714
                                 (letrec*
                                  ((x7715
                                    (begin
                                      (write '(funapp 1020 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1021 35))
                                    (display "\n")
                                    (null? x7715)))))
                               (if x-cnd7714
                                 (letrec*
                                  ((g7716
                                    (letrec*
                                     ((x7719
                                       (begin
                                         (write '(funapp 1026 46))
                                         (display "\n")
                                         (car args)))
                                      (x7718
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7717
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1029 38))
                                       (display "\n")
                                       (proc x7719 x7718 x7717)))))
                                  g7716)
                                 (letrec*
                                  ((x-cnd7720
                                    (letrec*
                                     ((x7721
                                       (begin
                                         (write '(funapp 1034 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1035 38))
                                       (display "\n")
                                       (null? x7721)))))
                                  (if x-cnd7720
                                    (letrec*
                                     ((g7722
                                       (letrec*
                                        ((x7726
                                          (begin
                                            (write '(funapp 1040 49))
                                            (display "\n")
                                            (car args)))
                                         (x7725
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7724
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7723
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1044 41))
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
                                               (write '(funapp 1051 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1052 44))
                                             (display "\n")
                                             (cdr x7729)))))
                                        (begin
                                          (write '(funapp 1053 41))
                                          (display "\n")
                                          (null? x7728)))))
                                     (if x-cnd7727
                                       (letrec*
                                        ((g7730
                                          (letrec*
                                           ((x7736
                                             (begin
                                               (write '(funapp 1058 52))
                                               (display "\n")
                                               (car args)))
                                            (x7735
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7734
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7733
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7731
                                             (letrec*
                                              ((x7732
                                                (begin
                                                  (write '(funapp 1064 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (car x7732)))))
                                           (begin
                                             (write '(funapp 1066 44))
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
                                                  (write '(funapp 1078 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1079 47))
                                                (display "\n")
                                                (cddr x7739)))))
                                           (begin
                                             (write '(funapp 1080 44))
                                             (display "\n")
                                             (null? x7738)))))
                                        (if x-cnd7737
                                          (letrec*
                                           ((g7740
                                             (letrec*
                                              ((x7748
                                                (begin
                                                  (write '(funapp 1085 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7747
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7746
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7745
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7743
                                                (letrec*
                                                 ((x7744
                                                   (begin
                                                     (write '(funapp 1091 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1092 50))
                                                   (display "\n")
                                                   (car x7744))))
                                               (x7741
                                                (letrec*
                                                 ((x7742
                                                   (begin
                                                     (write '(funapp 1095 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1096 50))
                                                   (display "\n")
                                                   (cadr x7742)))))
                                              (begin
                                                (write '(funapp 1097 47))
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
                                                     (write '(funapp 1110 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1111 50))
                                                   (display "\n")
                                                   (cdddr x7751)))))
                                              (begin
                                                (write '(funapp 1112 47))
                                                (display "\n")
                                                (null? x7750)))))
                                           (if x-cnd7749
                                             (letrec*
                                              ((g7752
                                                (letrec*
                                                 ((x7762
                                                   (begin
                                                     (write '(funapp 1117 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7761
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7760
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7759
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7757
                                                   (letrec*
                                                    ((x7758
                                                      (begin
                                                        (write
                                                         '(funapp 1123 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1124 53))
                                                      (display "\n")
                                                      (car x7758))))
                                                  (x7755
                                                   (letrec*
                                                    ((x7756
                                                      (begin
                                                        (write
                                                         '(funapp 1127 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1128 53))
                                                      (display "\n")
                                                      (cadr x7756))))
                                                  (x7753
                                                   (letrec*
                                                    ((x7754
                                                      (begin
                                                        (write
                                                         '(funapp 1131 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1132 53))
                                                      (display "\n")
                                                      (caddr x7754)))))
                                                 (begin
                                                   (write '(funapp 1133 50))
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
                                                  (write '(funapp 1144 49))
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
                          (write '(funapp 1150 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1150 57))
                        (display "\n")
                        (assert x7766))))
                    (g7765
                     (letrec*
                      ((x-cnd7767
                        (begin
                          (write '(funapp 1153 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7767
                        #f
                        (letrec*
                         ((x-cnd7768
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1158 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1158 55))
                              (display "\n")
                              (equal? x7769 e)))))
                         (if x-cnd7768
                           l
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1161 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1161 55))
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7774)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (cdr x7773)))))
                      (begin
                        (write '(funapp 1172 23))
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
                                (write '(funapp 1181 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1181 61))
                              (display "\n")
                              (cdr x7778)))))
                         (begin
                           (write '(funapp 1182 26))
                           (display "\n")
                           (cdr x7777)))))
                      (begin
                        (write '(funapp 1183 23))
                        (display "\n")
                        (car x7776)))))
                   g7775)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7779
                     (begin
                       (write '(funapp 1185 53))
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
                          (write '(funapp 1189 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1189 59))
                        (display "\n")
                        (assert x7782))))
                    (g7781
                     (begin (write '(funapp 1190 28)) (display "\n") (= x 0))))
                   g7781)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1197 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7784
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1199 52))
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
                          (write '(funapp 1205 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1205 55))
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
                             (write '(funapp 1215 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7788
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 1217 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1217 55))
                              (display "\n")
                              (list? x7789)))
                           #f))))
                      (letrec*
                       ((g7790
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1220 52))
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
                                (write '(funapp 1230 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1230 61))
                              (display "\n")
                              (car x7794)))))
                         (begin
                           (write '(funapp 1231 26))
                           (display "\n")
                           (cdr x7793)))))
                      (begin
                        (write '(funapp 1232 23))
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
                           (write '(funapp 1239 58))
                           (display "\n")
                           (char<=? x7797 c)))))
                      (if x-cnd7796
                        (letrec*
                         ((x7798 #\9))
                         (begin
                           (write '(funapp 1241 48))
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
                          (write '(funapp 1248 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1248 57))
                        (display "\n")
                        (assert x7801))))
                    (g7800
                     (letrec*
                      ((x-cnd7802
                        (begin
                          (write '(funapp 1251 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7802
                        #f
                        (letrec*
                         ((x-cnd7803
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 1256 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1256 56))
                              (display "\n")
                              (eqv? x7804 k)))))
                         (if x-cnd7803
                           (begin
                             (write '(funapp 1258 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7805
                              (begin
                                (write '(funapp 1259 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1259 55))
                              (display "\n")
                              (assq k x7805)))))))))
                   g7800)))
               (not (lambda (x) (letrec* ((g7806 (if x #f #t))) g7806)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7807
                     (begin
                       (write '(funapp 1263 50))
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
                          (write '(funapp 1267 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1267 57))
                        (display "\n")
                        (assert x7810))))
                    (g7809
                     (letrec*
                      ((x-cnd7811
                        (begin
                          (write '(funapp 1270 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7811
                        #f
                        (letrec*
                         ((x-cnd7812
                           (letrec*
                            ((x7813
                              (begin
                                (write '(funapp 1275 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1275 55))
                              (display "\n")
                              (eq? x7813 e)))))
                         (if x-cnd7812
                           l
                           (letrec*
                            ((x7814
                              (begin
                                (write '(funapp 1278 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1278 55))
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
                                (write '(funapp 1287 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1287 61))
                              (display "\n")
                              (car x7818)))))
                         (begin
                           (write '(funapp 1288 26))
                           (display "\n")
                           (cdr x7817)))))
                      (begin
                        (write '(funapp 1289 23))
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
                          (write '(funapp 1294 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1294 57))
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
                                  (write '(funapp 1302 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7823
                                0
                                (letrec*
                                 ((x7824
                                   (letrec*
                                    ((x7825
                                      (begin
                                        (write '(funapp 1307 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1307 63))
                                      (display "\n")
                                      (rec x7825)))))
                                 (begin
                                   (write '(funapp 1308 34))
                                   (display "\n")
                                   (+ 1 x7824)))))))
                           g7822))))
                      (letrec*
                       ((g7826
                         (begin
                           (write '(funapp 1310 40))
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
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7830))))
                    (g7828
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7831))))
                    (g7829
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1319 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7832
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1321 52))
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
                          (write '(funapp 1327 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1327 65))
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
                             (write '(funapp 1334 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1334 58))
                           (display "\n")
                           (car x7837)))))
                      (begin
                        (write '(funapp 1335 23))
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
                          (write '(funapp 1340 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1340 57))
                        (display "\n")
                        (assert x7840))))
                    (g7839
                     (letrec*
                      ((x-cnd7841
                        (begin
                          (write '(funapp 1343 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7841
                        #f
                        (letrec*
                         ((x-cnd7842
                           (letrec*
                            ((x7843
                              (begin
                                (write '(funapp 1348 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1348 56))
                              (display "\n")
                              (equal? x7843 k)))))
                         (if x-cnd7842
                           (begin
                             (write '(funapp 1350 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7844
                              (begin
                                (write '(funapp 1351 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1351 55))
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
                          (write '(funapp 1356 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1356 55))
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
                          (write '(funapp 1361 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1361 58))
                        (display "\n")
                        (assert x7850))))
                    (g7848
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7851))))
                    (g7849
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1363 63))
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
                          (write '(funapp 1370 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7854
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1372 52))
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
                          (write '(funapp 1378 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1378 62))
                        (display "\n")
                        (assert x7858))))
                    (g7856
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1379 57))
                        (display "\n")
                        (assert x7859))))
                    (g7857
                     (letrec*
                      ((x-cnd7860
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7860
                        #t
                        (letrec*
                         ((x-cnd7861
                           (begin
                             (write '(funapp 1386 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7861
                           (letrec*
                            ((g7862
                              (letrec*
                               ((x7864
                                 (begin
                                   (write '(funapp 1389 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1389 64))
                                 (display "\n")
                                 (f x7864))))
                             (g7863
                              (letrec*
                               ((x7865
                                 (begin
                                   (write '(funapp 1391 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1391 58))
                                 (display "\n")
                                 (for-each f x7865)))))
                            g7863)
                           (begin
                             (write '(funapp 1393 27))
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
                          (write '(funapp 1398 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1398 59))
                        (display "\n")
                        (assert x7868))))
                    (g7867
                     (letrec*
                      ((x-cnd7869
                        (begin
                          (write '(funapp 1400 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7869
                        (begin
                          (write '(funapp 1400 67))
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
                          (write '(funapp 1405 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1405 58))
                        (display "\n")
                        (assert x7873))))
                    (g7871
                     (letrec*
                      ((x7874
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7874))))
                    (g7872
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1409 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7875
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1411 52))
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
                                (write '(funapp 1421 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1421 61))
                              (display "\n")
                              (cdr x7879)))))
                         (begin
                           (write '(funapp 1422 26))
                           (display "\n")
                           (cdr x7878)))))
                      (begin
                        (write '(funapp 1423 23))
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
                             (write '(funapp 1431 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1431 58))
                           (display "\n")
                           (abs x7884))))
                       (x7882
                        (begin
                          (write '(funapp 1432 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1433 23))
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
                          (write '(funapp 1439 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1439 59))
                        (display "\n")
                        (assert x7887))))
                    (g7886
                     (letrec*
                      ((x7888
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1440 56))
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
                          (write '(funapp 1445 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1445 57))
                        (display "\n")
                        (assert x7893))))
                    (g7890
                     (letrec*
                      ((x7894
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1446 63))
                        (display "\n")
                        (assert x7894))))
                    (g7891
                     (letrec*
                      ((x7895
                        (letrec*
                         ((x7896
                           (begin
                             (write '(funapp 1449 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1449 61))
                           (display "\n")
                           (< index x7896)))))
                      (begin
                        (write '(funapp 1450 23))
                        (display "\n")
                        (assert x7895))))
                    (g7892
                     (letrec*
                      ((x-cnd7897
                        (begin
                          (write '(funapp 1453 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7897
                        (begin
                          (write '(funapp 1455 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7899
                           (begin
                             (write '(funapp 1457 34))
                             (display "\n")
                             (cdr l)))
                          (x7898
                           (begin
                             (write '(funapp 1457 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1458 26))
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
                          (write '(funapp 1465 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7901
                        a
                        (letrec*
                         ((x7902
                           (begin
                             (write '(funapp 1468 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1468 57))
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
                          (write '(funapp 1475 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd7904
                        empty
                        (letrec*
                         ((x7905
                           (letrec*
                            ((x7906
                              (begin
                                (write '(funapp 1480 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1480 55))
                              (display "\n")
                              (mk-list x7906 x)))))
                         (begin
                           (write '(funapp 1481 26))
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
                          (write '(funapp 1488 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7908
                        #f
                        (letrec*
                         ((val7259
                           (letrec*
                            ((x7909
                              (begin
                                (write '(funapp 1492 53))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1492 64))
                              (display "\n")
                              (= x x7909)))))
                         (letrec*
                          ((g7910
                            (if val7259
                              val7259
                              (letrec*
                               ((x7911
                                 (begin
                                   (write '(funapp 1497 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1497 59))
                                 (display "\n")
                                 (mem x x7911))))))
                          g7910))))))
                   g7907))))
              (letrec*
               ((g7912
                 (letrec*
                  ((xj7351
                    (letrec*
                     ((x7914
                       (begin (write '(funapp 1503 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 1503 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 1503 58))
                          (display "\n")
                          'module)
                        x7914))))
                   (xk7352
                    (letrec*
                     ((x7915
                       (begin (write '(funapp 1504 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 1504 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 1504 58))
                          (display "\n")
                          'importer)
                        x7915)))))
                  (letrec*
                   ((g7916
                     (begin
                       (write '(funapp 1507 22))
                       (display "\n")
                       ((lambda (j7355 k7356 f7357)
                          (letrec*
                           ((g7917
                             (lambda (g7353 g7354)
                               (letrec*
                                ((g7918
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
                                    ((g7919
                                      (letrec*
                                       ((x7921
                                         (begin
                                           (write '(funapp 1520 40))
                                           (display "\n")
                                           ((lambda (_ x)
                                              (letrec*
                                               ((g7922
                                                 (letrec*
                                                  ((x7927
                                                    (begin
                                                      (write '(funapp 1524 55))
                                                      (display "\n")
                                                      (listof integer?/c))))
                                                  (begin
                                                    (write '(funapp 1525 47))
                                                    (display "\n")
                                                    (and/c
                                                     x7927
                                                     (lambda (g7360
                                                              g7361
                                                              g7362)
                                                       (letrec*
                                                        ((g7923
                                                          (letrec*
                                                           ((x-cnd7924
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1532
                                                                  56))
                                                               (display "\n")
                                                               ((lambda (l)
                                                                  (letrec*
                                                                   ((g7925
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
                                                                       ((g7926
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
                                                                       g7926))))
                                                                   g7925))
                                                                g7362))))
                                                           (if x-cnd7924
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
                                                        g7923)))))))
                                               g7922))
                                            x7358
                                            x7359)))
                                        (x7920
                                         (begin
                                           (write '(funapp 1565 46))
                                           (display "\n")
                                           (f7357 x7358 x7359))))
                                       (begin
                                         (write '(funapp 1566 38))
                                         (display "\n")
                                         (x7921 j7355 k7356 x7920)))))
                                    g7919))))
                                g7918))))
                           g7917))
                        xj7351
                        xk7352
                        mk-list))))
                   g7916)))
                (g7913
                 (letrec*
                  ((x7930
                    (letrec*
                     ((xj7363
                       (letrec*
                        ((x7931
                          (begin
                            (write '(funapp 1578 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 1578 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1578 61))
                             (display "\n")
                             'module)
                           x7931))))
                      (xk7364
                       (letrec*
                        ((x7932
                          (begin
                            (write '(funapp 1580 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 1580 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1580 54))
                             (display "\n")
                             'importer)
                           x7932)))))
                     (letrec*
                      ((g7933
                        (begin
                          (write '(funapp 1583 25))
                          (display "\n")
                          ((lambda (j7367 k7368 f7369)
                             (letrec*
                              ((g7934
                                (lambda (g7365 g7366)
                                  (letrec*
                                   ((g7935
                                     (letrec*
                                      ((x7936
                                        (letrec*
                                         ((x7939
                                           (begin
                                             (write '(funapp 1592 48))
                                             (display "\n")
                                             (integer?/c j7367 k7368 g7365)))
                                          (x7937
                                           (letrec*
                                            ((x7938
                                              (begin
                                                (write '(funapp 1595 51))
                                                (display "\n")
                                                (listof integer?/c))))
                                            (begin
                                              (write '(funapp 1596 43))
                                              (display "\n")
                                              (x7938 j7367 k7368 g7366)))))
                                         (begin
                                           (write '(funapp 1597 40))
                                           (display "\n")
                                           (f7369 x7939 x7937)))))
                                      (begin
                                        (write '(funapp 1598 37))
                                        (display "\n")
                                        (boolean?/c j7367 k7368 x7936)))))
                                   g7935))))
                              g7934))
                           xj7363
                           xk7364
                           mem))))
                      g7933)))
                   (x7929 (input))
                   (x7928 (input)))
                  (begin
                    (write '(funapp 1607 19))
                    (display "\n")
                    (x7930 x7929 x7928)))))
               g7913))))
           g7383))))
       g7381)))
    g7380)))
