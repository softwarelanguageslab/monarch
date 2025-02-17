(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7362 #t)) g7362)))
    (meta (lambda (v) (letrec* ((g7363 v)) g7363)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7364
          (letrec*
           ((g7365
             (letrec*
              ((x-e7366 lst))
              (letrec*
               ((v1742 x-e7366))
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
                   ((x-cnd7367
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7367
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
           g7365)))
        g7364)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7368 (lambda (v) (letrec* ((g7369 v)) g7369)))) g7368)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7370
          (letrec*
           ((x7371 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7371)))))
        g7370))))
   (letrec*
    ((g7372
      (letrec*
       ((g7373
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
           ((g7374 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7375
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7376
                     (lambda (k j lst)
                       (letrec*
                        ((g7377
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7378
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7378))
                             lst))))
                        g7377))))
                   g7376)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7379
                     (letrec*
                      ((x-cnd7380
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7380
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7379)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7381
                     (letrec*
                      ((x-cnd7382
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7382
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7381)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7383
                     (letrec*
                      ((x-cnd7384
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7384
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7383)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7385
                     (letrec*
                      ((x-cnd7386
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7387 #t)) g7387)) g7270))))
                      (if x-cnd7386
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7385)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7388
                     (letrec*
                      ((x-cnd7389
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7390 #t)) g7390)) g7273))))
                      (if x-cnd7389
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7388)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7391
                     (letrec*
                      ((x-cnd7392
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7392
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7391)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7393
                     (letrec*
                      ((x-cnd7394
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7394
                        g7279
                        (begin
                          (write '(blame g7277 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7393)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7395
                     (letrec*
                      ((x-cnd7396
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7396
                        g7282
                        (begin
                          (write '(blame g7280 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7395)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7397
                     (letrec*
                      ((x-cnd7398
                        (begin
                          (write '(funapp 142 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7398
                        g7285
                        (begin
                          (write '(blame g7283 143 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7397)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7399
                     (lambda (k j v)
                       (letrec*
                        ((g7400
                          (letrec*
                           ((x-cnd7401
                             (begin
                               (write '(funapp 153 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7401
                             (begin
                               (write '(funapp 154 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7400))))
                   g7399)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7402
                     (lambda (k j v)
                       (letrec*
                        ((g7403
                          (letrec*
                           ((x-cnd7404
                             (begin
                               (write '(funapp 165 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7404
                             (begin
                               (write '(funapp 167 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7408
                                (letrec*
                                 ((x7409
                                   (begin
                                     (write '(funapp 171 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 172 34))
                                   (display "\n")
                                   (contract k j x7409))))
                               (x7405
                                (letrec*
                                 ((x7407
                                   (begin
                                     (write '(funapp 175 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7406
                                   (begin
                                     (write '(funapp 175 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 176 34))
                                   (display "\n")
                                   (x7407 k j x7406)))))
                              (begin
                                (write '(funapp 177 31))
                                (display "\n")
                                (orig-cons x7408 x7405)))))))
                        g7403))))
                   g7402)))
               (any? (lambda (v) (letrec* ((g7410 #t)) g7410)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7411
                     (letrec*
                      ((x7412
                        (begin
                          (write '(funapp 184 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 184 55))
                        (display "\n")
                        (not x7412)))))
                   g7411)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7413
                     (letrec*
                      ((x-cnd7414
                        (begin
                          (write '(funapp 192 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7415
                                (letrec*
                                 ((x7416
                                   (begin
                                     (write '(funapp 194 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 194 64))
                                   (display "\n")
                                   (not x7416)))))
                              g7415))
                           g7288))))
                      (if x-cnd7414
                        g7288
                        (begin
                          (write '(blame g7286 199 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7413)))
               (meta (lambda (v) (letrec* ((g7417 v)) g7417)))
               (+
                (letrec*
                 ((xj7289
                   (begin (write '(funapp 204 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 204 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7418
                    (begin
                      (write '(funapp 207 21))
                      (display "\n")
                      ((lambda (j7293 k7294 f7295)
                         (letrec*
                          ((g7420
                            (lambda (g7291 g7292)
                              (letrec*
                               ((g7421
                                 (letrec*
                                  ((x7422
                                    (letrec*
                                     ((x7424
                                       (begin
                                         (write '(funapp 216 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7423
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 218 36))
                                       (display "\n")
                                       (f7295 x7424 x7423)))))
                                  (begin
                                    (write '(funapp 219 33))
                                    (display "\n")
                                    (number?/c j7293 k7294 x7422)))))
                               g7421))))
                          g7420))
                       xj7289
                       xk7290
                       (lambda (a b)
                         (letrec*
                          ((g7419
                            (begin
                              (write '(funapp 224 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7419))))))
                  g7418)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 228 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 228 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7425
                    (begin
                      (write '(funapp 231 21))
                      (display "\n")
                      ((lambda (j7300 k7301 f7302)
                         (letrec*
                          ((g7427
                            (lambda (g7298 g7299)
                              (letrec*
                               ((g7428
                                 (letrec*
                                  ((x7429
                                    (letrec*
                                     ((x7431
                                       (begin
                                         (write '(funapp 240 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7430
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 242 36))
                                       (display "\n")
                                       (f7302 x7431 x7430)))))
                                  (begin
                                    (write '(funapp 243 33))
                                    (display "\n")
                                    (number?/c j7300 k7301 x7429)))))
                               g7428))))
                          g7427))
                       xj7296
                       xk7297
                       (lambda (a b)
                         (letrec*
                          ((g7426
                            (begin
                              (write '(funapp 248 53))
                              (display "\n")
                              (orig-- a b))))
                          g7426))))))
                  g7425)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 252 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 252 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7432
                    (begin
                      (write '(funapp 255 21))
                      (display "\n")
                      ((lambda (j7307 k7308 f7309)
                         (letrec*
                          ((g7434
                            (lambda (g7305 g7306)
                              (letrec*
                               ((g7435
                                 (letrec*
                                  ((x7436
                                    (letrec*
                                     ((x7438
                                       (begin
                                         (write '(funapp 264 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7437
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 266 36))
                                       (display "\n")
                                       (f7309 x7438 x7437)))))
                                  (begin
                                    (write '(funapp 267 33))
                                    (display "\n")
                                    (number?/c j7307 k7308 x7436)))))
                               g7435))))
                          g7434))
                       xj7303
                       xk7304
                       (lambda (a b)
                         (letrec*
                          ((g7433
                            (begin
                              (write '(funapp 272 53))
                              (display "\n")
                              (orig-* a b))))
                          g7433))))))
                  g7432)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 276 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 276 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7439
                    (begin
                      (write '(funapp 279 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7441
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7442
                                 (letrec*
                                  ((x7443
                                    (letrec*
                                     ((x7445
                                       (begin
                                         (write '(funapp 288 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7444
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 290 36))
                                       (display "\n")
                                       (f7316 x7445 x7444)))))
                                  (begin
                                    (write '(funapp 291 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7443)))))
                               g7442))))
                          g7441))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7440
                            (begin
                              (write '(funapp 296 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7440))))))
                  g7439)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 300 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 300 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7446
                    (begin
                      (write '(funapp 303 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7448
                            (lambda (g7319)
                              (letrec*
                               ((g7449
                                 (letrec*
                                  ((x7450
                                    (letrec*
                                     ((x7451
                                       (begin
                                         (write '(funapp 312 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 313 36))
                                       (display "\n")
                                       (f7322 x7451)))))
                                  (begin
                                    (write '(funapp 314 33))
                                    (display "\n")
                                    (any/c j7320 k7321 x7450)))))
                               g7449))))
                          g7448))
                       xj7317
                       xk7318
                       (lambda (p)
                         (letrec*
                          ((g7447
                            (begin
                              (write '(funapp 319 51))
                              (display "\n")
                              (orig-car p))))
                          g7447))))))
                  g7446)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 323 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 323 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7452
                    (begin
                      (write '(funapp 326 21))
                      (display "\n")
                      ((lambda (j7326 k7327 f7328)
                         (letrec*
                          ((g7454
                            (lambda (g7325)
                              (letrec*
                               ((g7455
                                 (letrec*
                                  ((x7456
                                    (letrec*
                                     ((x7457
                                       (begin
                                         (write '(funapp 335 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 336 36))
                                       (display "\n")
                                       (f7328 x7457)))))
                                  (begin
                                    (write '(funapp 337 33))
                                    (display "\n")
                                    (any/c j7326 k7327 x7456)))))
                               g7455))))
                          g7454))
                       xj7323
                       xk7324
                       (lambda (p)
                         (letrec*
                          ((g7453
                            (begin
                              (write '(funapp 342 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7453))))))
                  g7452)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 346 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 346 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7458
                    (begin
                      (write '(funapp 349 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7460
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7461
                                 (letrec*
                                  ((x7462
                                    (letrec*
                                     ((x7464
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7463
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 360 36))
                                       (display "\n")
                                       (f7335 x7464 x7463)))))
                                  (begin
                                    (write '(funapp 361 33))
                                    (display "\n")
                                    (pair?/c j7333 k7334 x7462)))))
                               g7461))))
                          g7460))
                       xj7329
                       xk7330
                       (lambda (a b)
                         (letrec*
                          ((g7459
                            (begin
                              (write '(funapp 367 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7459))))))
                  g7458)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 371 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 371 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7465
                    (begin
                      (write '(funapp 374 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7467
                            (lambda (g7338)
                              (letrec*
                               ((g7468
                                 (letrec*
                                  ((x7469
                                    (letrec*
                                     ((x7470
                                       (begin
                                         (write '(funapp 383 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 384 36))
                                       (display "\n")
                                       (f7341 x7470)))))
                                  (begin
                                    (write '(funapp 385 33))
                                    (display "\n")
                                    (integer?/c j7339 k7340 x7469)))))
                               g7468))))
                          g7467))
                       xj7336
                       xk7337
                       (lambda (v i)
                         (letrec*
                          ((g7466
                            (begin
                              (write '(funapp 391 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7466))))))
                  g7465)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 395 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 395 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7471
                    (begin
                      (write '(funapp 398 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7473
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7474
                                 (letrec*
                                  ((x7475
                                    (letrec*
                                     ((x7477
                                       (begin
                                         (write '(funapp 407 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7476
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 409 36))
                                       (display "\n")
                                       (f7348 x7477 x7476)))))
                                  (begin
                                    (write '(funapp 410 33))
                                    (display "\n")
                                    (any/c j7346 k7347 x7475)))))
                               g7474))))
                          g7473))
                       xj7342
                       xk7343
                       (lambda (vec i v)
                         (letrec*
                          ((g7472
                            (begin
                              (write '(funapp 416 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7472))))))
                  g7471)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7478
                     (if cnd
                       (begin (write '(funapp 421 35)) (display "\n") '())
                       (begin
                         (write '(funapp 421 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7478)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7479
                     (letrec*
                      ((x7480
                        (letrec*
                         ((x7481
                           (begin
                             (write '(funapp 428 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 428 58))
                           (display "\n")
                           (cdr x7481)))))
                      (begin
                        (write '(funapp 429 23))
                        (display "\n")
                        (cdr x7480)))))
                   g7479)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7482
                     (letrec*
                      ((x7485
                        (begin
                          (write '(funapp 435 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 435 62))
                        (display "\n")
                        (assert x7485))))
                    (g7483
                     (letrec*
                      ((x7486
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 436 57))
                        (display "\n")
                        (assert x7486))))
                    (g7484
                     (letrec*
                      ((x-cnd7487
                        (begin
                          (write '(funapp 439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7487
                        (begin (write '(funapp 441 24)) (display "\n") '())
                        (letrec*
                         ((x7490
                           (letrec*
                            ((x7491
                              (begin
                                (write '(funapp 443 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 443 61))
                              (display "\n")
                              (f x7491))))
                          (x7488
                           (letrec*
                            ((x7489
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (map f x7489)))))
                         (begin
                           (write '(funapp 445 26))
                           (display "\n")
                           (cons x7490 x7488)))))))
                   g7484)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7492
                     (letrec*
                      ((x7493
                        (begin
                          (write '(funapp 450 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 450 55))
                        (display "\n")
                        (cdr x7493)))))
                   g7492)))
               (cadadr
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
                                (write '(funapp 459 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 459 61))
                              (display "\n")
                              (car x7497)))))
                         (begin
                           (write '(funapp 460 26))
                           (display "\n")
                           (cdr x7496)))))
                      (begin
                        (write '(funapp 461 23))
                        (display "\n")
                        (car x7495)))))
                   g7494)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7498
                     (letrec*
                      ((x7499
                        (letrec*
                         ((x7500
                           (letrec*
                            ((x7501
                              (begin
                                (write '(funapp 470 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 470 61))
                              (display "\n")
                              (cdr x7501)))))
                         (begin
                           (write '(funapp 471 26))
                           (display "\n")
                           (car x7500)))))
                      (begin
                        (write '(funapp 472 23))
                        (display "\n")
                        (cdr x7499)))))
                   g7498)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7502
                     (letrec*
                      ((x7505
                        (begin
                          (write '(funapp 478 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 478 60))
                        (display "\n")
                        (assert x7505))))
                    (g7503
                     (letrec*
                      ((x7506
                        (begin
                          (write '(funapp 480 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 480 59))
                        (display "\n")
                        (assert x7506))))
                    (g7504
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
                       ((g7507
                         (begin
                           (write '(funapp 486 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7508 res))
                       g7508))))
                   g7504)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7509
                     (letrec*
                      ((x7510
                        (letrec*
                         ((x7511
                           (begin
                             (write '(funapp 494 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 494 58))
                           (display "\n")
                           (cdr x7511)))))
                      (begin
                        (write '(funapp 495 23))
                        (display "\n")
                        (car x7510)))))
                   g7509)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7512
                     (letrec*
                      ((x7513
                        (letrec*
                         ((x7514
                           (letrec*
                            ((x7515
                              (begin
                                (write '(funapp 504 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 504 61))
                              (display "\n")
                              (car x7515)))))
                         (begin
                           (write '(funapp 505 26))
                           (display "\n")
                           (car x7514)))))
                      (begin
                        (write '(funapp 506 23))
                        (display "\n")
                        (cdr x7513)))))
                   g7512)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7516
                     (letrec*
                      ((x7518
                        (begin
                          (write '(funapp 511 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 511 57))
                        (display "\n")
                        (assert x7518))))
                    (g7517
                     (letrec*
                      ((x-cnd7519
                        (begin
                          (write '(funapp 514 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7519
                        #f
                        (letrec*
                         ((x-cnd7520
                           (letrec*
                            ((x7521
                              (begin
                                (write '(funapp 519 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 519 56))
                              (display "\n")
                              (eq? x7521 k)))))
                         (if x-cnd7520
                           (begin
                             (write '(funapp 521 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7522
                              (begin
                                (write '(funapp 522 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 522 55))
                              (display "\n")
                              (assq k x7522)))))))))
                   g7517)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7523
                     (letrec*
                      ((x7524
                        (begin
                          (write '(funapp 527 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 527 60))
                        (display "\n")
                        (= 0 x7524)))))
                   g7523)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7525
                     (letrec*
                      ((x7527
                        (begin
                          (write '(funapp 532 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 532 57))
                        (display "\n")
                        (assert x7527))))
                    (g7526
                     (letrec*
                      ((x-cnd7528
                        (begin
                          (write '(funapp 535 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7528
                        ""
                        (letrec*
                         ((x7531
                           (letrec*
                            ((x7532
                              (begin
                                (write '(funapp 540 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 540 55))
                              (display "\n")
                              (char->string x7532))))
                          (x7529
                           (letrec*
                            ((x7530
                              (begin
                                (write '(funapp 542 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 542 55))
                              (display "\n")
                              (list->string x7530)))))
                         (begin
                           (write '(funapp 543 26))
                           (display "\n")
                           (string-append x7531 x7529)))))))
                   g7526)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7533
                     (letrec*
                      ((x7536
                        (begin
                          (write '(funapp 548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 548 58))
                        (display "\n")
                        (assert x7536))))
                    (g7534
                     (letrec*
                      ((x7537
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7537))))
                    (g7535
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 552 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7538
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 554 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7538))))
                   g7535)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7539
                     (letrec*
                      ((x7540
                        (letrec*
                         ((x7541
                           (letrec*
                            ((x7542
                              (begin
                                (write '(funapp 564 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 564 61))
                              (display "\n")
                              (cdr x7542)))))
                         (begin
                           (write '(funapp 565 26))
                           (display "\n")
                           (cdr x7541)))))
                      (begin
                        (write '(funapp 566 23))
                        (display "\n")
                        (cdr x7540)))))
                   g7539)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7543
                     (letrec*
                      ((x7546
                        (begin
                          (write '(funapp 571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 571 57))
                        (display "\n")
                        (assert x7546))))
                    (g7544
                     (letrec*
                      ((x7547
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7547))))
                    (g7545
                     (letrec*
                      ((x-cnd7548
                        (begin
                          (write '(funapp 575 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7548
                        x
                        (letrec*
                         ((x7550
                           (begin
                             (write '(funapp 579 34))
                             (display "\n")
                             (cdr x)))
                          (x7549
                           (begin
                             (write '(funapp 579 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 580 26))
                           (display "\n")
                           (list-tail x7550 x7549)))))))
                   g7545)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7551
                     (begin (write '(funapp 582 49)) (display "\n") '())))
                   g7551)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7552
                     (letrec*
                      ((x-cnd7553
                        (letrec*
                         ((x7554 #\a))
                         (begin
                           (write '(funapp 589 48))
                           (display "\n")
                           (char-ci>=? c x7554)))))
                      (if x-cnd7553
                        (letrec*
                         ((x7555 #\z))
                         (begin
                           (write '(funapp 591 48))
                           (display "\n")
                           (char-ci<=? c x7555)))
                        #f))))
                   g7552)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7556
                     (letrec*
                      ((x7558
                        (begin
                          (write '(funapp 597 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 597 59))
                        (display "\n")
                        (assert x7558))))
                    (g7557
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 600 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7559
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 606 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7560 (if val7243 val7243 #f)))
                             g7560)))))
                       g7559))))
                   g7557)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7561
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7562
                           (begin
                             (write '(funapp 618 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 618 62))
                           (display "\n")
                           (= x7562 9)))))
                      (letrec*
                       ((g7563
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7564
                                 (begin
                                   (write '(funapp 626 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 627 32))
                                 (display "\n")
                                 (= x7564 10)))))
                            (letrec*
                             ((g7565
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7566
                                    (begin
                                      (write '(funapp 633 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 634 35))
                                    (display "\n")
                                    (= x7566 32))))))
                             g7565)))))
                       g7563))))
                   g7561)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7567
                     (letrec*
                      ((x7568
                        (letrec*
                         ((x7569
                           (begin
                             (write '(funapp 643 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 643 58))
                           (display "\n")
                           (cdr x7569)))))
                      (begin
                        (write '(funapp 644 23))
                        (display "\n")
                        (cdr x7568)))))
                   g7567)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7570
                     (letrec*
                      ((x7572
                        (begin
                          (write '(funapp 649 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 649 59))
                        (display "\n")
                        (assert x7572))))
                    (g7571
                     (begin (write '(funapp 650 28)) (display "\n") (> x 0))))
                   g7571)))
               ($pc (begin (write '(funapp 652 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7573 #f)) g7573)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7574
                     (letrec*
                      ((x7575
                        (begin
                          (write '(funapp 658 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 658 55))
                        (display "\n")
                        (cdr x7575)))))
                   g7574)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7576
                     (letrec*
                      ((x7578
                        (begin
                          (write '(funapp 663 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 663 59))
                        (display "\n")
                        (assert x7578))))
                    (g7577
                     (letrec*
                      ((x-cnd7579
                        (begin
                          (write '(funapp 666 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7579
                        (begin
                          (write '(funapp 667 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 667 49))
                          (display "\n")
                          (floor x))))))
                   g7577)))
               ($cmp (begin (write '(funapp 669 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7580
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 675 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7581
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7582
                                 (begin
                                   (write '(funapp 683 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7582
                                 (begin
                                   (write '(funapp 684 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7583
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7584
                                       (begin
                                         (write '(funapp 692 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7584
                                       (letrec*
                                        ((x-cnd7585
                                          (begin
                                            (write '(funapp 695 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7585
                                          (begin
                                            (write '(funapp 696 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7586
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7587
                                             (begin
                                               (write '(funapp 705 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7587
                                             (letrec*
                                              ((x-cnd7588
                                                (begin
                                                  (write '(funapp 708 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7588
                                                (letrec*
                                                 ((x-cnd7589
                                                   (letrec*
                                                    ((x7591
                                                      (begin
                                                        (write
                                                         '(funapp 713 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7590
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 715 53))
                                                      (display "\n")
                                                      (equal? x7591 x7590)))))
                                                 (if x-cnd7589
                                                   (letrec*
                                                    ((x7593
                                                      (begin
                                                        (write
                                                         '(funapp 718 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7592
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 720 53))
                                                      (display "\n")
                                                      (equal? x7593 x7592)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7594
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7595
                                                (begin
                                                  (write '(funapp 729 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7595
                                                (letrec*
                                                 ((x-cnd7596
                                                   (begin
                                                     (write '(funapp 732 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7596
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 735 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7597
                                                       (letrec*
                                                        ((x-cnd7598
                                                          (letrec*
                                                           ((x7599
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
                                                             (= x7599 n)))))
                                                        (if x-cnd7598
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7600
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
                                                                    ((g7601
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7602
                                                                           (letrec*
                                                                            ((x7604
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
                                                                             (x7603
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
                                                                               x7604
                                                                               x7603)))))
                                                                         (if x-cnd7602
                                                                           (letrec*
                                                                            ((x7605
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
                                                                               x7605)))
                                                                           #f)))))
                                                                    g7601))))
                                                                g7600))))
                                                           (letrec*
                                                            ((g7606
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   784
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7606))
                                                          #f))))
                                                     g7597))
                                                   #f))
                                                #f)))))
                                         g7594)))))
                                   g7586)))))
                             g7583)))))
                       g7581))))
                   g7580)))
               (cdaaar
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
                                (write '(funapp 802 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 802 61))
                              (display "\n")
                              (car x7610)))))
                         (begin
                           (write '(funapp 803 26))
                           (display "\n")
                           (car x7609)))))
                      (begin
                        (write '(funapp 804 23))
                        (display "\n")
                        (cdr x7608)))))
                   g7607)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7612
                        (letrec*
                         ((x7613
                           (letrec*
                            ((x7614
                              (begin
                                (write '(funapp 813 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 813 61))
                              (display "\n")
                              (cdr x7614)))))
                         (begin
                           (write '(funapp 814 26))
                           (display "\n")
                           (car x7613)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (car x7612)))))
                   g7611)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7615
                     (begin
                       (write '(funapp 817 53))
                       (display "\n")
                       (eq? x y))))
                   g7615)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 821 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 821 59))
                        (display "\n")
                        (assert x7618))))
                    (g7617
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 824 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7619
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 830 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7620 (if val7252 val7252 #f)))
                             g7620)))))
                       g7619))))
                   g7617)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 840 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 840 60))
                        (display "\n")
                        (assert x7624))))
                    (g7622
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 842 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 842 59))
                        (display "\n")
                        (assert x7625))))
                    (g7623
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
                       ((g7626
                         (begin
                           (write '(funapp 848 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7627 res))
                       g7627))))
                   g7623)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7628
                     (begin
                       (write '(funapp 851 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 851 57)) (display "\n") '())))))
                   g7628)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 855 58))
                        (display "\n")
                        (assert x7632))))
                    (g7630
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7633))))
                    (g7631
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 859 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7634
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 861 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7634))))
                   g7631)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7636
                        (letrec*
                         ((x7637
                           (begin
                             (write '(funapp 869 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 869 58))
                           (display "\n")
                           (car x7637)))))
                      (begin
                        (write '(funapp 870 23))
                        (display "\n")
                        (cdr x7636)))))
                   g7635)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7639
                        (letrec*
                         ((x7640
                           (letrec*
                            ((x7641
                              (begin
                                (write '(funapp 879 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 879 61))
                              (display "\n")
                              (cdr x7641)))))
                         (begin
                           (write '(funapp 880 26))
                           (display "\n")
                           (car x7640)))))
                      (begin
                        (write '(funapp 881 23))
                        (display "\n")
                        (cdr x7639)))))
                   g7638)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7643
                        (letrec*
                         ((x7644
                           (begin
                             (write '(funapp 889 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 889 58))
                           (display "\n")
                           (cdr x7644)))))
                      (begin
                        (write '(funapp 890 23))
                        (display "\n")
                        (car x7643)))))
                   g7642)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7646
                        (letrec*
                         ((x7647
                           (begin
                             (write '(funapp 897 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 897 58))
                           (display "\n")
                           (car x7647)))))
                      (begin
                        (write '(funapp 898 23))
                        (display "\n")
                        (car x7646)))))
                   g7645)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 903 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 903 58))
                        (display "\n")
                        (assert x7651))))
                    (g7649
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7652))))
                    (g7650
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 905 66))
                        (display "\n")
                        (not x7653)))))
                   g7650)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7655
                        (letrec*
                         ((x7656
                           (letrec*
                            ((x7657
                              (begin
                                (write '(funapp 915 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 915 61))
                              (display "\n")
                              (car x7657)))))
                         (begin
                           (write '(funapp 916 26))
                           (display "\n")
                           (car x7656)))))
                      (begin
                        (write '(funapp 917 23))
                        (display "\n")
                        (car x7655)))))
                   g7654)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 922 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7660))))
                    (g7659
                     (begin (write '(funapp 923 28)) (display "\n") (< x 0))))
                   g7659)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7661
                     (begin
                       (write '(funapp 925 53))
                       (display "\n")
                       (memq e l))))
                   g7661)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7663
                        (letrec*
                         ((x7664
                           (begin
                             (write '(funapp 931 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 931 58))
                           (display "\n")
                           (car x7664)))))
                      (begin
                        (write '(funapp 932 23))
                        (display "\n")
                        (car x7663)))))
                   g7662)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7665
                     (begin (write '(funapp 934 51)) (display "\n") '())))
                   g7665)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((x7668
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 938 57))
                        (display "\n")
                        (assert x7668))))
                    (g7667
                     (letrec*
                      ((x-cnd7669
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7669
                        (begin (write '(funapp 943 24)) (display "\n") '())
                        (letrec*
                         ((x7672
                           (letrec*
                            ((x7673
                              (begin
                                (write '(funapp 945 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 945 61))
                              (display "\n")
                              (reverse x7673))))
                          (x7670
                           (letrec*
                            ((x7671
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (list x7671)))))
                         (begin
                           (write '(funapp 947 26))
                           (display "\n")
                           (append x7672 x7670)))))))
                   g7667)))
               (caaadr
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
                                (write '(funapp 956 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 956 61))
                              (display "\n")
                              (car x7677)))))
                         (begin
                           (write '(funapp 957 26))
                           (display "\n")
                           (car x7676)))))
                      (begin
                        (write '(funapp 958 23))
                        (display "\n")
                        (car x7675)))))
                   g7674)))
               (cddadr
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
                                (write '(funapp 967 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 967 61))
                              (display "\n")
                              (car x7681)))))
                         (begin
                           (write '(funapp 968 26))
                           (display "\n")
                           (cdr x7680)))))
                      (begin
                        (write '(funapp 969 23))
                        (display "\n")
                        (cdr x7679)))))
                   g7678)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7682
                     (letrec*
                      ((x7684
                        (begin
                          (write '(funapp 974 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 974 59))
                        (display "\n")
                        (assert x7684))))
                    (g7683
                     (letrec*
                      ((x7685
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 975 60))
                        (display "\n")
                        (= 1 x7685)))))
                   g7683)))
               (caadar
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
                                (write '(funapp 984 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 984 61))
                              (display "\n")
                              (cdr x7689)))))
                         (begin
                           (write '(funapp 985 26))
                           (display "\n")
                           (car x7688)))))
                      (begin
                        (write '(funapp 986 23))
                        (display "\n")
                        (car x7687)))))
                   g7686)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7690
                     (letrec*
                      ((x7693
                        (begin
                          (write '(funapp 992 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 992 59))
                        (display "\n")
                        (assert x7693))))
                    (g7691
                     (letrec*
                      ((x7694
                        (begin
                          (write '(funapp 993 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 993 60))
                        (display "\n")
                        (assert x7694))))
                    (g7692
                     (letrec*
                      ((x-cnd7695
                        (begin
                          (write '(funapp 996 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7695
                        (letrec*
                         ((g7696
                           (begin
                             (write '(funapp 998 42))
                             (display "\n")
                             (proc))))
                         g7696)
                        (letrec*
                         ((x-cnd7697
                           (letrec*
                            ((x7698
                              (begin
                                (write '(funapp 1001 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1001 58))
                              (display "\n")
                              (null? x7698)))))
                         (if x-cnd7697
                           (letrec*
                            ((g7699
                              (letrec*
                               ((x7700
                                 (begin
                                   (write '(funapp 1005 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1005 61))
                                 (display "\n")
                                 (proc x7700)))))
                            g7699)
                           (letrec*
                            ((x-cnd7701
                              (letrec*
                               ((x7702
                                 (begin
                                   (write '(funapp 1009 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1009 62))
                                 (display "\n")
                                 (null? x7702)))))
                            (if x-cnd7701
                              (letrec*
                               ((g7703
                                 (letrec*
                                  ((x7705
                                    (begin
                                      (write '(funapp 1014 43))
                                      (display "\n")
                                      (car args)))
                                   (x7704
                                    (begin
                                      (write '(funapp 1014 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1015 35))
                                    (display "\n")
                                    (proc x7705 x7704)))))
                               g7703)
                              (letrec*
                               ((x-cnd7706
                                 (letrec*
                                  ((x7707
                                    (begin
                                      (write '(funapp 1020 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1021 35))
                                    (display "\n")
                                    (null? x7707)))))
                               (if x-cnd7706
                                 (letrec*
                                  ((g7708
                                    (letrec*
                                     ((x7711
                                       (begin
                                         (write '(funapp 1026 46))
                                         (display "\n")
                                         (car args)))
                                      (x7710
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7709
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1029 38))
                                       (display "\n")
                                       (proc x7711 x7710 x7709)))))
                                  g7708)
                                 (letrec*
                                  ((x-cnd7712
                                    (letrec*
                                     ((x7713
                                       (begin
                                         (write '(funapp 1034 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1035 38))
                                       (display "\n")
                                       (null? x7713)))))
                                  (if x-cnd7712
                                    (letrec*
                                     ((g7714
                                       (letrec*
                                        ((x7718
                                          (begin
                                            (write '(funapp 1040 49))
                                            (display "\n")
                                            (car args)))
                                         (x7717
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7716
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7715
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1044 41))
                                          (display "\n")
                                          (proc x7718 x7717 x7716 x7715)))))
                                     g7714)
                                    (letrec*
                                     ((x-cnd7719
                                       (letrec*
                                        ((x7720
                                          (letrec*
                                           ((x7721
                                             (begin
                                               (write '(funapp 1051 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1052 44))
                                             (display "\n")
                                             (cdr x7721)))))
                                        (begin
                                          (write '(funapp 1053 41))
                                          (display "\n")
                                          (null? x7720)))))
                                     (if x-cnd7719
                                       (letrec*
                                        ((g7722
                                          (letrec*
                                           ((x7728
                                             (begin
                                               (write '(funapp 1058 52))
                                               (display "\n")
                                               (car args)))
                                            (x7727
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7726
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7725
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7723
                                             (letrec*
                                              ((x7724
                                                (begin
                                                  (write '(funapp 1064 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (car x7724)))))
                                           (begin
                                             (write '(funapp 1066 44))
                                             (display "\n")
                                             (proc
                                              x7728
                                              x7727
                                              x7726
                                              x7725
                                              x7723)))))
                                        g7722)
                                       (letrec*
                                        ((x-cnd7729
                                          (letrec*
                                           ((x7730
                                             (letrec*
                                              ((x7731
                                                (begin
                                                  (write '(funapp 1078 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1079 47))
                                                (display "\n")
                                                (cddr x7731)))))
                                           (begin
                                             (write '(funapp 1080 44))
                                             (display "\n")
                                             (null? x7730)))))
                                        (if x-cnd7729
                                          (letrec*
                                           ((g7732
                                             (letrec*
                                              ((x7740
                                                (begin
                                                  (write '(funapp 1085 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7739
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7738
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7737
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7735
                                                (letrec*
                                                 ((x7736
                                                   (begin
                                                     (write '(funapp 1091 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1092 50))
                                                   (display "\n")
                                                   (car x7736))))
                                               (x7733
                                                (letrec*
                                                 ((x7734
                                                   (begin
                                                     (write '(funapp 1095 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1096 50))
                                                   (display "\n")
                                                   (cadr x7734)))))
                                              (begin
                                                (write '(funapp 1097 47))
                                                (display "\n")
                                                (proc
                                                 x7740
                                                 x7739
                                                 x7738
                                                 x7737
                                                 x7735
                                                 x7733)))))
                                           g7732)
                                          (letrec*
                                           ((x-cnd7741
                                             (letrec*
                                              ((x7742
                                                (letrec*
                                                 ((x7743
                                                   (begin
                                                     (write '(funapp 1110 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1111 50))
                                                   (display "\n")
                                                   (cdddr x7743)))))
                                              (begin
                                                (write '(funapp 1112 47))
                                                (display "\n")
                                                (null? x7742)))))
                                           (if x-cnd7741
                                             (letrec*
                                              ((g7744
                                                (letrec*
                                                 ((x7754
                                                   (begin
                                                     (write '(funapp 1117 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7753
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7752
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7751
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7749
                                                   (letrec*
                                                    ((x7750
                                                      (begin
                                                        (write
                                                         '(funapp 1123 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1124 53))
                                                      (display "\n")
                                                      (car x7750))))
                                                  (x7747
                                                   (letrec*
                                                    ((x7748
                                                      (begin
                                                        (write
                                                         '(funapp 1127 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1128 53))
                                                      (display "\n")
                                                      (cadr x7748))))
                                                  (x7745
                                                   (letrec*
                                                    ((x7746
                                                      (begin
                                                        (write
                                                         '(funapp 1131 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1132 53))
                                                      (display "\n")
                                                      (caddr x7746)))))
                                                 (begin
                                                   (write '(funapp 1133 50))
                                                   (display "\n")
                                                   (proc
                                                    x7754
                                                    x7753
                                                    x7752
                                                    x7751
                                                    x7749
                                                    x7747
                                                    x7745)))))
                                              g7744)
                                             (letrec*
                                              ((g7755
                                                (begin
                                                  (write '(funapp 1144 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7755)))))))))))))))))))
                   g7692)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7758
                        (begin
                          (write '(funapp 1150 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1150 57))
                        (display "\n")
                        (assert x7758))))
                    (g7757
                     (letrec*
                      ((x-cnd7759
                        (begin
                          (write '(funapp 1153 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7759
                        #f
                        (letrec*
                         ((x-cnd7760
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 1158 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1158 55))
                              (display "\n")
                              (equal? x7761 e)))))
                         (if x-cnd7760
                           l
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 1161 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1161 55))
                              (display "\n")
                              (member e x7762)))))))))
                   g7757)))
               (cddddr
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7766)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (cdr x7765)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (cdr x7764)))))
                   g7763)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7768
                        (letrec*
                         ((x7769
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1181 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1181 61))
                              (display "\n")
                              (cdr x7770)))))
                         (begin
                           (write '(funapp 1182 26))
                           (display "\n")
                           (cdr x7769)))))
                      (begin
                        (write '(funapp 1183 23))
                        (display "\n")
                        (car x7768)))))
                   g7767)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7771
                     (begin
                       (write '(funapp 1185 53))
                       (display "\n")
                       (random 42))))
                   g7771)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1189 59))
                        (display "\n")
                        (assert x7774))))
                    (g7773
                     (begin (write '(funapp 1190 28)) (display "\n") (= x 0))))
                   g7773)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1197 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7776
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1199 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7776))))
                   g7775)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 1205 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1205 55))
                        (display "\n")
                        (car x7778)))))
                   g7777)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7780
                           (begin
                             (write '(funapp 1215 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7780
                           (letrec*
                            ((x7781
                              (begin
                                (write '(funapp 1217 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1217 55))
                              (display "\n")
                              (list? x7781)))
                           #f))))
                      (letrec*
                       ((g7782
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1220 52))
                             (display "\n")
                             (null? l)))))
                       g7782))))
                   g7779)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7784
                        (letrec*
                         ((x7785
                           (letrec*
                            ((x7786
                              (begin
                                (write '(funapp 1230 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1230 61))
                              (display "\n")
                              (car x7786)))))
                         (begin
                           (write '(funapp 1231 26))
                           (display "\n")
                           (cdr x7785)))))
                      (begin
                        (write '(funapp 1232 23))
                        (display "\n")
                        (cdr x7784)))))
                   g7783)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x-cnd7788
                        (letrec*
                         ((x7789 #\0))
                         (begin
                           (write '(funapp 1239 58))
                           (display "\n")
                           (char<=? x7789 c)))))
                      (if x-cnd7788
                        (letrec*
                         ((x7790 #\9))
                         (begin
                           (write '(funapp 1241 48))
                           (display "\n")
                           (char<=? c x7790)))
                        #f))))
                   g7787)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 1248 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1248 57))
                        (display "\n")
                        (assert x7793))))
                    (g7792
                     (letrec*
                      ((x-cnd7794
                        (begin
                          (write '(funapp 1251 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7794
                        #f
                        (letrec*
                         ((x-cnd7795
                           (letrec*
                            ((x7796
                              (begin
                                (write '(funapp 1256 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1256 56))
                              (display "\n")
                              (eqv? x7796 k)))))
                         (if x-cnd7795
                           (begin
                             (write '(funapp 1258 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7797
                              (begin
                                (write '(funapp 1259 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1259 55))
                              (display "\n")
                              (assq k x7797)))))))))
                   g7792)))
               (not (lambda (x) (letrec* ((g7798 (if x #f #t))) g7798)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7799
                     (begin
                       (write '(funapp 1263 50))
                       (display "\n")
                       (append l1 l2))))
                   g7799)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7802
                        (begin
                          (write '(funapp 1267 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1267 57))
                        (display "\n")
                        (assert x7802))))
                    (g7801
                     (letrec*
                      ((x-cnd7803
                        (begin
                          (write '(funapp 1270 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7803
                        #f
                        (letrec*
                         ((x-cnd7804
                           (letrec*
                            ((x7805
                              (begin
                                (write '(funapp 1275 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1275 55))
                              (display "\n")
                              (eq? x7805 e)))))
                         (if x-cnd7804
                           l
                           (letrec*
                            ((x7806
                              (begin
                                (write '(funapp 1278 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1278 55))
                              (display "\n")
                              (memq e x7806)))))))))
                   g7801)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7808
                        (letrec*
                         ((x7809
                           (letrec*
                            ((x7810
                              (begin
                                (write '(funapp 1287 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1287 61))
                              (display "\n")
                              (car x7810)))))
                         (begin
                           (write '(funapp 1288 26))
                           (display "\n")
                           (cdr x7809)))))
                      (begin
                        (write '(funapp 1289 23))
                        (display "\n")
                        (car x7808)))))
                   g7807)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1294 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1294 57))
                        (display "\n")
                        (assert x7813))))
                    (g7812
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7814
                             (letrec*
                              ((x-cnd7815
                                (begin
                                  (write '(funapp 1302 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7815
                                0
                                (letrec*
                                 ((x7816
                                   (letrec*
                                    ((x7817
                                      (begin
                                        (write '(funapp 1307 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1307 63))
                                      (display "\n")
                                      (rec x7817)))))
                                 (begin
                                   (write '(funapp 1308 34))
                                   (display "\n")
                                   (+ 1 x7816)))))))
                           g7814))))
                      (letrec*
                       ((g7818
                         (begin
                           (write '(funapp 1310 40))
                           (display "\n")
                           (rec l))))
                       g7818))))
                   g7812)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7822))))
                    (g7820
                     (letrec*
                      ((x7823
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7823))))
                    (g7821
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1319 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7824
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1321 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7824))))
                   g7821)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7825
                     (letrec*
                      ((x7826
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1327 65))
                        (display "\n")
                        (not x7826)))))
                   g7825)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7827
                     (letrec*
                      ((x7828
                        (letrec*
                         ((x7829
                           (begin
                             (write '(funapp 1334 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1334 58))
                           (display "\n")
                           (car x7829)))))
                      (begin
                        (write '(funapp 1335 23))
                        (display "\n")
                        (cdr x7828)))))
                   g7827)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7830
                     (letrec*
                      ((x7832
                        (begin
                          (write '(funapp 1340 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1340 57))
                        (display "\n")
                        (assert x7832))))
                    (g7831
                     (letrec*
                      ((x-cnd7833
                        (begin
                          (write '(funapp 1343 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7833
                        #f
                        (letrec*
                         ((x-cnd7834
                           (letrec*
                            ((x7835
                              (begin
                                (write '(funapp 1348 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1348 56))
                              (display "\n")
                              (equal? x7835 k)))))
                         (if x-cnd7834
                           (begin
                             (write '(funapp 1350 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7836
                              (begin
                                (write '(funapp 1351 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1351 55))
                              (display "\n")
                              (assoc k x7836)))))))))
                   g7831)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((x7838
                        (begin
                          (write '(funapp 1356 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1356 55))
                        (display "\n")
                        (car x7838)))))
                   g7837)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7839
                     (letrec*
                      ((x7842
                        (begin
                          (write '(funapp 1361 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1361 58))
                        (display "\n")
                        (assert x7842))))
                    (g7840
                     (letrec*
                      ((x7843
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7843))))
                    (g7841
                     (letrec*
                      ((x7844
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1363 63))
                        (display "\n")
                        (not x7844)))))
                   g7841)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7845
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1370 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7846
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1372 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7846))))
                   g7845)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((x7850
                        (begin
                          (write '(funapp 1378 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1378 62))
                        (display "\n")
                        (assert x7850))))
                    (g7848
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1379 57))
                        (display "\n")
                        (assert x7851))))
                    (g7849
                     (letrec*
                      ((x-cnd7852
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7852
                        #t
                        (letrec*
                         ((x-cnd7853
                           (begin
                             (write '(funapp 1386 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7853
                           (letrec*
                            ((g7854
                              (letrec*
                               ((x7856
                                 (begin
                                   (write '(funapp 1389 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1389 64))
                                 (display "\n")
                                 (f x7856))))
                             (g7855
                              (letrec*
                               ((x7857
                                 (begin
                                   (write '(funapp 1391 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1391 58))
                                 (display "\n")
                                 (for-each f x7857)))))
                            g7855)
                           (begin
                             (write '(funapp 1393 27))
                             (display "\n")
                             '())))))))
                   g7849)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7858
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1398 59))
                        (display "\n")
                        (assert x7860))))
                    (g7859
                     (letrec*
                      ((x-cnd7861
                        (begin
                          (write '(funapp 1400 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7861
                        (begin
                          (write '(funapp 1400 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7859)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7862
                     (letrec*
                      ((x7865
                        (begin
                          (write '(funapp 1405 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1405 58))
                        (display "\n")
                        (assert x7865))))
                    (g7863
                     (letrec*
                      ((x7866
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7866))))
                    (g7864
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1409 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7867
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1411 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7867))))
                   g7864)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x7869
                        (letrec*
                         ((x7870
                           (letrec*
                            ((x7871
                              (begin
                                (write '(funapp 1421 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1421 61))
                              (display "\n")
                              (cdr x7871)))))
                         (begin
                           (write '(funapp 1422 26))
                           (display "\n")
                           (cdr x7870)))))
                      (begin
                        (write '(funapp 1423 23))
                        (display "\n")
                        (car x7869)))))
                   g7868)))
               (newline (lambda () (letrec* ((g7872 #f)) g7872)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x7875
                        (letrec*
                         ((x7876
                           (begin
                             (write '(funapp 1431 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1431 58))
                           (display "\n")
                           (abs x7876))))
                       (x7874
                        (begin
                          (write '(funapp 1432 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1433 23))
                        (display "\n")
                        (/ x7875 x7874)))))
                   g7873)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 1439 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1439 59))
                        (display "\n")
                        (assert x7879))))
                    (g7878
                     (letrec*
                      ((x7880
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1440 56))
                        (display "\n")
                        (not x7880)))))
                   g7878)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((x7885
                        (begin
                          (write '(funapp 1445 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1445 57))
                        (display "\n")
                        (assert x7885))))
                    (g7882
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1446 63))
                        (display "\n")
                        (assert x7886))))
                    (g7883
                     (letrec*
                      ((x7887
                        (letrec*
                         ((x7888
                           (begin
                             (write '(funapp 1449 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1449 61))
                           (display "\n")
                           (< index x7888)))))
                      (begin
                        (write '(funapp 1450 23))
                        (display "\n")
                        (assert x7887))))
                    (g7884
                     (letrec*
                      ((x-cnd7889
                        (begin
                          (write '(funapp 1453 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7889
                        (begin
                          (write '(funapp 1455 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7891
                           (begin
                             (write '(funapp 1457 34))
                             (display "\n")
                             (cdr l)))
                          (x7890
                           (begin
                             (write '(funapp 1457 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1458 26))
                           (display "\n")
                           (list-ref x7891 x7890)))))))
                   g7884)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x-cnd7893
                        (begin
                          (write '(funapp 1465 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7893
                        a
                        (letrec*
                         ((x7894
                           (begin
                             (write '(funapp 1468 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1468 57))
                           (display "\n")
                           (gcd b x7894)))))))
                   g7892)))
               (STATE/C
                (lambda (g7352 g7353 g7354)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x-cnd7896
                        (begin
                          (write '(funapp 1476 25))
                          (display "\n")
                          ((lambda (v7351)
                             (letrec*
                              ((g7897
                                (letrec*
                                 ((x-cnd7898
                                   (begin
                                     (write '(funapp 1480 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1480 48))
                                        (display "\n")
                                        'init)
                                      v7351))))
                                 (if x-cnd7898
                                   #t
                                   (letrec*
                                    ((x-cnd7899
                                      (begin
                                        (write '(funapp 1484 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1484 51))
                                           (display "\n")
                                           'opened)
                                         v7351))))
                                    (if x-cnd7899
                                      #t
                                      (letrec*
                                       ((x-cnd7900
                                         (begin
                                           (write '(funapp 1488 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1488 54))
                                              (display "\n")
                                              'closed)
                                            v7351))))
                                       (if x-cnd7900
                                         #t
                                         (begin
                                           (write '(funapp 1491 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1491 44))
                                              (display "\n")
                                              'ignore)
                                            v7351))))))))))
                              g7897))
                           g7354))))
                      (if x-cnd7896
                        g7354
                        (begin
                          (write '(blame g7352 1496 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7352)))))))
                   g7895)))
               (loop
                (lambda ()
                  (letrec*
                   ((g7901
                     (begin (write '(funapp 1507 50)) (display "\n") (loop))))
                   g7901)))
               (readit
                (lambda (st)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x-cnd7903
                        (begin
                          (write '(funapp 1513 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1513 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd7903
                        (begin
                          (write '(funapp 1514 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1514 44))
                          (display "\n")
                          'ignore)))))
                   g7902)))
               (read_
                (lambda (x st)
                  (letrec*
                   ((g7904
                     (if x
                       (begin
                         (write '(funapp 1518 42))
                         (display "\n")
                         (readit st))
                       st)))
                   g7904)))
               (closeit
                (lambda (st)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x-cnd7906
                        (begin
                          (write '(funapp 1524 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1524 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd7906
                        (letrec*
                         ((g7907
                           (begin
                             (write '(funapp 1526 41))
                             (display "\n")
                             'closed)))
                         g7907)
                        (letrec*
                         ((x-cnd7908
                           (begin
                             (write '(funapp 1528 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 1528 45))
                                (display "\n")
                                'ignore)
                              st))))
                         (if x-cnd7908
                           (letrec*
                            ((g7909
                              (begin
                                (write '(funapp 1530 44))
                                (display "\n")
                                'ignore)))
                            g7909)
                           (letrec*
                            ((g7910
                              (begin
                                (write '(funapp 1531 45))
                                (display "\n")
                                (loop)))
                             (g7911 0))
                            g7911)))))))
                   g7905)))
               (close_
                (lambda (x st)
                  (letrec*
                   ((g7912
                     (if x
                       (begin
                         (write '(funapp 1535 42))
                         (display "\n")
                         (closeit st))
                       st)))
                   g7912)))
               (f
                (lambda (x y st)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 1539 45))
                          (display "\n")
                          (close_ x st))))
                      (begin
                        (write '(funapp 1539 61))
                        (display "\n")
                        (close_ y x7915))))
                    (g7914
                     (letrec*
                      ((x7916
                        (letrec*
                         ((x7917
                           (begin
                             (write '(funapp 1543 42))
                             (display "\n")
                             (read_ x st))))
                         (begin
                           (write '(funapp 1543 57))
                           (display "\n")
                           (read_ y x7917)))))
                      (begin
                        (write '(funapp 1544 23))
                        (display "\n")
                        (f x y x7916)))))
                   g7914)))
               (next
                (lambda (st)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x-cnd7919
                        (begin
                          (write '(funapp 1551 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1551 42))
                             (display "\n")
                             'init)
                           st))))
                      (if x-cnd7919
                        (begin
                          (write '(funapp 1552 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1552 44))
                          (display "\n")
                          'ignore)))))
                   g7918)))
               (g
                (lambda (b3 x st)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x-cnd7921
                        (begin
                          (write '(funapp 1559 35))
                          (display "\n")
                          (> b3 0))))
                      (if x-cnd7921
                        (letrec*
                         ((x7922
                           (begin
                             (write '(funapp 1561 42))
                             (display "\n")
                             (next st))))
                         (begin
                           (write '(funapp 1561 54))
                           (display "\n")
                           (f x #t x7922)))
                        (begin
                          (write '(funapp 1562 25))
                          (display "\n")
                          (f x #f st))))))
                   g7920)))
               (main
                (lambda (b2 b3)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x-cnd7925
                        (begin
                          (write '(funapp 1569 35))
                          (display "\n")
                          (> b2 0))))
                      (if x-cnd7925
                        (begin
                          (write '(funapp 1570 37))
                          (display "\n")
                          (g
                           b3
                           #t
                           (begin
                             (write '(funapp 1570 45))
                             (display "\n")
                             'opened)))
                        (begin
                          (write '(funapp 1570 55))
                          (display "\n")
                          (g
                           b3
                           #f
                           (begin
                             (write '(funapp 1570 63))
                             (display "\n")
                             'init))))))
                    (g7924
                     (begin (write '(funapp 1571 27)) (display "\n") 'unit)))
                   g7924))))
              (letrec*
               ((g7926
                 (letrec*
                  ((x7929
                    (letrec*
                     ((xj7355
                       (letrec*
                        ((x7930
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
                           x7930))))
                      (xk7356
                       (letrec*
                        ((x7931
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
                           x7931)))))
                     (letrec*
                      ((g7932
                        (begin
                          (write '(funapp 1583 25))
                          (display "\n")
                          ((lambda (j7359 k7360 f7361)
                             (letrec*
                              ((g7933
                                (lambda (g7357 g7358)
                                  (letrec*
                                   ((g7934
                                     (letrec*
                                      ((x7935
                                        (letrec*
                                         ((x7937
                                           (begin
                                             (write '(funapp 1592 48))
                                             (display "\n")
                                             (integer?/c j7359 k7360 g7357)))
                                          (x7936
                                           (begin
                                             (write '(funapp 1593 48))
                                             (display "\n")
                                             (integer?/c j7359 k7360 g7358))))
                                         (begin
                                           (write '(funapp 1594 40))
                                           (display "\n")
                                           (f7361 x7937 x7936)))))
                                      (begin
                                        (write '(funapp 1595 37))
                                        (display "\n")
                                        (any/c j7359 k7360 x7935)))))
                                   g7934))))
                              g7933))
                           xj7355
                           xk7356
                           main))))
                      g7932)))
                   (x7928 (input))
                   (x7927 (input)))
                  (begin
                    (write '(funapp 1604 19))
                    (display "\n")
                    (x7929 x7928 x7927)))))
               g7926))))
           g7375))))
       g7373)))
    g7372)))
