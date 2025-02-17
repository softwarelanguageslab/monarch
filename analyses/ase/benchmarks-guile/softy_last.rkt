(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
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
                   ((x-cnd7360
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7360
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
           ((x7364 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7364)))))
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
           ((g7367 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7368
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7369
                     (lambda (k j lst)
                       (letrec*
                        ((g7370
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7371
                                  (begin
                                    (write '(funapp 66 47))
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
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7373
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
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
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7375
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
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
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7377
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
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
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7380 #t)) g7380)) g7270))))
                      (if x-cnd7379
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
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
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7383 #t)) g7383)) g7273))))
                      (if x-cnd7382
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
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
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7385
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
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
                          (write '(funapp 126 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7387
                        g7279
                        (begin
                          (write '(blame g7277 127 42))
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
                          (write '(funapp 134 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7389
                        g7282
                        (begin
                          (write '(blame g7280 135 42))
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
                          (write '(funapp 142 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7391
                        g7285
                        (begin
                          (write '(blame g7283 143 42))
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
                               (write '(funapp 153 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7394
                             (begin
                               (write '(funapp 154 42))
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
                               (write '(funapp 165 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7397
                             (begin
                               (write '(funapp 167 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7401
                                (letrec*
                                 ((x7402
                                   (begin
                                     (write '(funapp 171 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 172 34))
                                   (display "\n")
                                   (contract k j x7402))))
                               (x7398
                                (letrec*
                                 ((x7400
                                   (begin
                                     (write '(funapp 175 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7399
                                   (begin
                                     (write '(funapp 175 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 176 34))
                                   (display "\n")
                                   (x7400 k j x7399)))))
                              (begin
                                (write '(funapp 177 31))
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
                          (write '(funapp 184 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 184 55))
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
                          (write '(funapp 192 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7408
                                (letrec*
                                 ((x7409
                                   (begin
                                     (write '(funapp 194 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 194 64))
                                   (display "\n")
                                   (not x7409)))))
                              g7408))
                           g7288))))
                      (if x-cnd7407
                        g7288
                        (begin
                          (write '(blame g7286 199 24))
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
                   (begin (write '(funapp 204 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 204 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7411
                    (begin
                      (write '(funapp 207 21))
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
                                         (write '(funapp 216 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7416
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 218 36))
                                       (display "\n")
                                       (f7295 x7417 x7416)))))
                                  (begin
                                    (write '(funapp 219 33))
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
                              (write '(funapp 224 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7412))))))
                  g7411)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 228 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 228 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7418
                    (begin
                      (write '(funapp 231 21))
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
                                         (write '(funapp 240 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7423
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 242 36))
                                       (display "\n")
                                       (f7302 x7424 x7423)))))
                                  (begin
                                    (write '(funapp 243 33))
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
                              (write '(funapp 248 53))
                              (display "\n")
                              (orig-- a b))))
                          g7419))))))
                  g7418)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 252 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 252 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7425
                    (begin
                      (write '(funapp 255 21))
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
                                         (write '(funapp 264 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7430
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 266 36))
                                       (display "\n")
                                       (f7309 x7431 x7430)))))
                                  (begin
                                    (write '(funapp 267 33))
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
                              (write '(funapp 272 53))
                              (display "\n")
                              (orig-* a b))))
                          g7426))))))
                  g7425)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 276 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 276 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7432
                    (begin
                      (write '(funapp 279 21))
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
                                         (write '(funapp 288 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7437
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 290 36))
                                       (display "\n")
                                       (f7316 x7438 x7437)))))
                                  (begin
                                    (write '(funapp 291 33))
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
                              (write '(funapp 296 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7433))))))
                  g7432)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 300 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 300 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7439
                    (begin
                      (write '(funapp 303 21))
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
                                         (write '(funapp 312 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 313 36))
                                       (display "\n")
                                       (f7322 x7444)))))
                                  (begin
                                    (write '(funapp 314 33))
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
                              (write '(funapp 319 51))
                              (display "\n")
                              (orig-car p))))
                          g7440))))))
                  g7439)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 323 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 323 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7445
                    (begin
                      (write '(funapp 326 21))
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
                                         (write '(funapp 335 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 336 36))
                                       (display "\n")
                                       (f7328 x7450)))))
                                  (begin
                                    (write '(funapp 337 33))
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
                              (write '(funapp 342 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7446))))))
                  g7445)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 346 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 346 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7451
                    (begin
                      (write '(funapp 349 21))
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
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7456
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 360 36))
                                       (display "\n")
                                       (f7335 x7457 x7456)))))
                                  (begin
                                    (write '(funapp 361 33))
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
                              (write '(funapp 367 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7452))))))
                  g7451)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 371 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 371 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7458
                    (begin
                      (write '(funapp 374 21))
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
                                         (write '(funapp 383 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 384 36))
                                       (display "\n")
                                       (f7341 x7463)))))
                                  (begin
                                    (write '(funapp 385 33))
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
                              (write '(funapp 391 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7459))))))
                  g7458)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 395 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 395 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7464
                    (begin
                      (write '(funapp 398 21))
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
                                         (write '(funapp 407 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7469
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 409 36))
                                       (display "\n")
                                       (f7348 x7470 x7469)))))
                                  (begin
                                    (write '(funapp 410 33))
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
                              (write '(funapp 416 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7465))))))
                  g7464)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7471
                     (if cnd
                       (begin (write '(funapp 421 35)) (display "\n") '())
                       (begin
                         (write '(funapp 421 40))
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
                             (write '(funapp 428 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 428 58))
                           (display "\n")
                           (cdr x7474)))))
                      (begin
                        (write '(funapp 429 23))
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
                          (write '(funapp 435 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 435 62))
                        (display "\n")
                        (assert x7478))))
                    (g7476
                     (letrec*
                      ((x7479
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 436 57))
                        (display "\n")
                        (assert x7479))))
                    (g7477
                     (letrec*
                      ((x-cnd7480
                        (begin
                          (write '(funapp 439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7480
                        (begin (write '(funapp 441 24)) (display "\n") '())
                        (letrec*
                         ((x7483
                           (letrec*
                            ((x7484
                              (begin
                                (write '(funapp 443 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 443 61))
                              (display "\n")
                              (f x7484))))
                          (x7481
                           (letrec*
                            ((x7482
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (map f x7482)))))
                         (begin
                           (write '(funapp 445 26))
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
                          (write '(funapp 450 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 450 55))
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
                                (write '(funapp 459 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 459 61))
                              (display "\n")
                              (car x7490)))))
                         (begin
                           (write '(funapp 460 26))
                           (display "\n")
                           (cdr x7489)))))
                      (begin
                        (write '(funapp 461 23))
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
                                (write '(funapp 470 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 470 61))
                              (display "\n")
                              (cdr x7494)))))
                         (begin
                           (write '(funapp 471 26))
                           (display "\n")
                           (car x7493)))))
                      (begin
                        (write '(funapp 472 23))
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
                          (write '(funapp 478 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 478 60))
                        (display "\n")
                        (assert x7498))))
                    (g7496
                     (letrec*
                      ((x7499
                        (begin
                          (write '(funapp 480 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 480 59))
                        (display "\n")
                        (assert x7499))))
                    (g7497
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
                       ((g7500
                         (begin
                           (write '(funapp 486 32))
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
                             (write '(funapp 494 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 494 58))
                           (display "\n")
                           (cdr x7504)))))
                      (begin
                        (write '(funapp 495 23))
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
                                (write '(funapp 504 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 504 61))
                              (display "\n")
                              (car x7508)))))
                         (begin
                           (write '(funapp 505 26))
                           (display "\n")
                           (car x7507)))))
                      (begin
                        (write '(funapp 506 23))
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
                          (write '(funapp 511 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 511 57))
                        (display "\n")
                        (assert x7511))))
                    (g7510
                     (letrec*
                      ((x-cnd7512
                        (begin
                          (write '(funapp 514 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7512
                        #f
                        (letrec*
                         ((x-cnd7513
                           (letrec*
                            ((x7514
                              (begin
                                (write '(funapp 519 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 519 56))
                              (display "\n")
                              (eq? x7514 k)))))
                         (if x-cnd7513
                           (begin
                             (write '(funapp 521 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7515
                              (begin
                                (write '(funapp 522 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 522 55))
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
                          (write '(funapp 527 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 527 60))
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
                          (write '(funapp 532 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 532 57))
                        (display "\n")
                        (assert x7520))))
                    (g7519
                     (letrec*
                      ((x-cnd7521
                        (begin
                          (write '(funapp 535 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7521
                        ""
                        (letrec*
                         ((x7524
                           (letrec*
                            ((x7525
                              (begin
                                (write '(funapp 540 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 540 55))
                              (display "\n")
                              (char->string x7525))))
                          (x7522
                           (letrec*
                            ((x7523
                              (begin
                                (write '(funapp 542 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 542 55))
                              (display "\n")
                              (list->string x7523)))))
                         (begin
                           (write '(funapp 543 26))
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
                          (write '(funapp 548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 548 58))
                        (display "\n")
                        (assert x7529))))
                    (g7527
                     (letrec*
                      ((x7530
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7530))))
                    (g7528
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 552 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7531
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 554 52))
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
                                (write '(funapp 564 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 564 61))
                              (display "\n")
                              (cdr x7535)))))
                         (begin
                           (write '(funapp 565 26))
                           (display "\n")
                           (cdr x7534)))))
                      (begin
                        (write '(funapp 566 23))
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
                          (write '(funapp 571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 571 57))
                        (display "\n")
                        (assert x7539))))
                    (g7537
                     (letrec*
                      ((x7540
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7540))))
                    (g7538
                     (letrec*
                      ((x-cnd7541
                        (begin
                          (write '(funapp 575 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7541
                        x
                        (letrec*
                         ((x7543
                           (begin
                             (write '(funapp 579 34))
                             (display "\n")
                             (cdr x)))
                          (x7542
                           (begin
                             (write '(funapp 579 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 580 26))
                           (display "\n")
                           (list-tail x7543 x7542)))))))
                   g7538)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7544
                     (begin (write '(funapp 582 49)) (display "\n") '())))
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
                           (write '(funapp 589 48))
                           (display "\n")
                           (char-ci>=? c x7547)))))
                      (if x-cnd7546
                        (letrec*
                         ((x7548 #\z))
                         (begin
                           (write '(funapp 591 48))
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
                          (write '(funapp 597 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 597 59))
                        (display "\n")
                        (assert x7551))))
                    (g7550
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 600 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7552
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 606 39))
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
                             (write '(funapp 618 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 618 62))
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
                                   (write '(funapp 626 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 627 32))
                                 (display "\n")
                                 (= x7557 10)))))
                            (letrec*
                             ((g7558
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7559
                                    (begin
                                      (write '(funapp 633 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 634 35))
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
                             (write '(funapp 643 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 643 58))
                           (display "\n")
                           (cdr x7562)))))
                      (begin
                        (write '(funapp 644 23))
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
                          (write '(funapp 649 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 649 59))
                        (display "\n")
                        (assert x7565))))
                    (g7564
                     (begin (write '(funapp 650 28)) (display "\n") (> x 0))))
                   g7564)))
               ($pc (begin (write '(funapp 652 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7566 #f)) g7566)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7567
                     (letrec*
                      ((x7568
                        (begin
                          (write '(funapp 658 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 658 55))
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
                          (write '(funapp 663 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 663 59))
                        (display "\n")
                        (assert x7571))))
                    (g7570
                     (letrec*
                      ((x-cnd7572
                        (begin
                          (write '(funapp 666 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7572
                        (begin
                          (write '(funapp 667 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 667 49))
                          (display "\n")
                          (floor x))))))
                   g7570)))
               ($cmp (begin (write '(funapp 669 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7573
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 675 33))
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
                                   (write '(funapp 683 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7575
                                 (begin
                                   (write '(funapp 684 46))
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
                                         (write '(funapp 692 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7577
                                       (letrec*
                                        ((x-cnd7578
                                          (begin
                                            (write '(funapp 695 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7578
                                          (begin
                                            (write '(funapp 696 55))
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
                                               (write '(funapp 705 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7580
                                             (letrec*
                                              ((x-cnd7581
                                                (begin
                                                  (write '(funapp 708 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7581
                                                (letrec*
                                                 ((x-cnd7582
                                                   (letrec*
                                                    ((x7584
                                                      (begin
                                                        (write
                                                         '(funapp 713 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7583
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 715 53))
                                                      (display "\n")
                                                      (equal? x7584 x7583)))))
                                                 (if x-cnd7582
                                                   (letrec*
                                                    ((x7586
                                                      (begin
                                                        (write
                                                         '(funapp 718 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7585
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 720 53))
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
                                                  (write '(funapp 729 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7588
                                                (letrec*
                                                 ((x-cnd7589
                                                   (begin
                                                     (write '(funapp 732 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7589
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 735 57))
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
                                                                  742
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 744 60))
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
                                                                          753
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
                                                                                   762
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
                                                                               x7597
                                                                               x7596)))))
                                                                         (if x-cnd7595
                                                                           (letrec*
                                                                            ((x7598
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
                                                                               x7598)))
                                                                           #f)))))
                                                                    g7594))))
                                                                g7593))))
                                                           (letrec*
                                                            ((g7599
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   784
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
                                (write '(funapp 802 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 802 61))
                              (display "\n")
                              (car x7603)))))
                         (begin
                           (write '(funapp 803 26))
                           (display "\n")
                           (car x7602)))))
                      (begin
                        (write '(funapp 804 23))
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
                                (write '(funapp 813 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 813 61))
                              (display "\n")
                              (cdr x7607)))))
                         (begin
                           (write '(funapp 814 26))
                           (display "\n")
                           (car x7606)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (car x7605)))))
                   g7604)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7608
                     (begin
                       (write '(funapp 817 53))
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
                          (write '(funapp 821 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 821 59))
                        (display "\n")
                        (assert x7611))))
                    (g7610
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 824 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7612
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 830 39))
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
                          (write '(funapp 840 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 840 60))
                        (display "\n")
                        (assert x7617))))
                    (g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 842 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 842 59))
                        (display "\n")
                        (assert x7618))))
                    (g7616
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
                       ((g7619
                         (begin
                           (write '(funapp 848 32))
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
                       (write '(funapp 851 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 851 57)) (display "\n") '())))))
                   g7621)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 855 58))
                        (display "\n")
                        (assert x7625))))
                    (g7623
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7626))))
                    (g7624
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 859 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7627
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 861 52))
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
                             (write '(funapp 869 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 869 58))
                           (display "\n")
                           (car x7630)))))
                      (begin
                        (write '(funapp 870 23))
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
                                (write '(funapp 879 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 879 61))
                              (display "\n")
                              (cdr x7634)))))
                         (begin
                           (write '(funapp 880 26))
                           (display "\n")
                           (car x7633)))))
                      (begin
                        (write '(funapp 881 23))
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
                             (write '(funapp 889 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 889 58))
                           (display "\n")
                           (cdr x7637)))))
                      (begin
                        (write '(funapp 890 23))
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
                             (write '(funapp 897 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 897 58))
                           (display "\n")
                           (car x7640)))))
                      (begin
                        (write '(funapp 898 23))
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
                          (write '(funapp 903 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 903 58))
                        (display "\n")
                        (assert x7644))))
                    (g7642
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c2))))
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
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 905 66))
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
                                (write '(funapp 915 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 915 61))
                              (display "\n")
                              (car x7650)))))
                         (begin
                           (write '(funapp 916 26))
                           (display "\n")
                           (car x7649)))))
                      (begin
                        (write '(funapp 917 23))
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
                          (write '(funapp 922 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7653))))
                    (g7652
                     (begin (write '(funapp 923 28)) (display "\n") (< x 0))))
                   g7652)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7654
                     (begin
                       (write '(funapp 925 53))
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
                             (write '(funapp 931 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 931 58))
                           (display "\n")
                           (car x7657)))))
                      (begin
                        (write '(funapp 932 23))
                        (display "\n")
                        (car x7656)))))
                   g7655)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7658
                     (begin (write '(funapp 934 51)) (display "\n") '())))
                   g7658)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 938 57))
                        (display "\n")
                        (assert x7661))))
                    (g7660
                     (letrec*
                      ((x-cnd7662
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7662
                        (begin (write '(funapp 943 24)) (display "\n") '())
                        (letrec*
                         ((x7665
                           (letrec*
                            ((x7666
                              (begin
                                (write '(funapp 945 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 945 61))
                              (display "\n")
                              (reverse x7666))))
                          (x7663
                           (letrec*
                            ((x7664
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (list x7664)))))
                         (begin
                           (write '(funapp 947 26))
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
                                (write '(funapp 956 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 956 61))
                              (display "\n")
                              (car x7670)))))
                         (begin
                           (write '(funapp 957 26))
                           (display "\n")
                           (car x7669)))))
                      (begin
                        (write '(funapp 958 23))
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
                                (write '(funapp 967 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 967 61))
                              (display "\n")
                              (car x7674)))))
                         (begin
                           (write '(funapp 968 26))
                           (display "\n")
                           (cdr x7673)))))
                      (begin
                        (write '(funapp 969 23))
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
                          (write '(funapp 974 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 974 59))
                        (display "\n")
                        (assert x7677))))
                    (g7676
                     (letrec*
                      ((x7678
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 975 60))
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
                                (write '(funapp 984 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 984 61))
                              (display "\n")
                              (cdr x7682)))))
                         (begin
                           (write '(funapp 985 26))
                           (display "\n")
                           (car x7681)))))
                      (begin
                        (write '(funapp 986 23))
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
                          (write '(funapp 992 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 992 59))
                        (display "\n")
                        (assert x7686))))
                    (g7684
                     (letrec*
                      ((x7687
                        (begin
                          (write '(funapp 993 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 993 60))
                        (display "\n")
                        (assert x7687))))
                    (g7685
                     (letrec*
                      ((x-cnd7688
                        (begin
                          (write '(funapp 996 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7688
                        (letrec*
                         ((g7689
                           (begin
                             (write '(funapp 998 42))
                             (display "\n")
                             (proc))))
                         g7689)
                        (letrec*
                         ((x-cnd7690
                           (letrec*
                            ((x7691
                              (begin
                                (write '(funapp 1001 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1001 58))
                              (display "\n")
                              (null? x7691)))))
                         (if x-cnd7690
                           (letrec*
                            ((g7692
                              (letrec*
                               ((x7693
                                 (begin
                                   (write '(funapp 1005 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1005 61))
                                 (display "\n")
                                 (proc x7693)))))
                            g7692)
                           (letrec*
                            ((x-cnd7694
                              (letrec*
                               ((x7695
                                 (begin
                                   (write '(funapp 1009 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1009 62))
                                 (display "\n")
                                 (null? x7695)))))
                            (if x-cnd7694
                              (letrec*
                               ((g7696
                                 (letrec*
                                  ((x7698
                                    (begin
                                      (write '(funapp 1014 43))
                                      (display "\n")
                                      (car args)))
                                   (x7697
                                    (begin
                                      (write '(funapp 1014 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1015 35))
                                    (display "\n")
                                    (proc x7698 x7697)))))
                               g7696)
                              (letrec*
                               ((x-cnd7699
                                 (letrec*
                                  ((x7700
                                    (begin
                                      (write '(funapp 1020 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1021 35))
                                    (display "\n")
                                    (null? x7700)))))
                               (if x-cnd7699
                                 (letrec*
                                  ((g7701
                                    (letrec*
                                     ((x7704
                                       (begin
                                         (write '(funapp 1026 46))
                                         (display "\n")
                                         (car args)))
                                      (x7703
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7702
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1029 38))
                                       (display "\n")
                                       (proc x7704 x7703 x7702)))))
                                  g7701)
                                 (letrec*
                                  ((x-cnd7705
                                    (letrec*
                                     ((x7706
                                       (begin
                                         (write '(funapp 1034 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1035 38))
                                       (display "\n")
                                       (null? x7706)))))
                                  (if x-cnd7705
                                    (letrec*
                                     ((g7707
                                       (letrec*
                                        ((x7711
                                          (begin
                                            (write '(funapp 1040 49))
                                            (display "\n")
                                            (car args)))
                                         (x7710
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7709
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7708
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1044 41))
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
                                               (write '(funapp 1051 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1052 44))
                                             (display "\n")
                                             (cdr x7714)))))
                                        (begin
                                          (write '(funapp 1053 41))
                                          (display "\n")
                                          (null? x7713)))))
                                     (if x-cnd7712
                                       (letrec*
                                        ((g7715
                                          (letrec*
                                           ((x7721
                                             (begin
                                               (write '(funapp 1058 52))
                                               (display "\n")
                                               (car args)))
                                            (x7720
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7719
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7718
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7716
                                             (letrec*
                                              ((x7717
                                                (begin
                                                  (write '(funapp 1064 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (car x7717)))))
                                           (begin
                                             (write '(funapp 1066 44))
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
                                                  (write '(funapp 1078 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1079 47))
                                                (display "\n")
                                                (cddr x7724)))))
                                           (begin
                                             (write '(funapp 1080 44))
                                             (display "\n")
                                             (null? x7723)))))
                                        (if x-cnd7722
                                          (letrec*
                                           ((g7725
                                             (letrec*
                                              ((x7733
                                                (begin
                                                  (write '(funapp 1085 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7732
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7731
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7730
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7728
                                                (letrec*
                                                 ((x7729
                                                   (begin
                                                     (write '(funapp 1091 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1092 50))
                                                   (display "\n")
                                                   (car x7729))))
                                               (x7726
                                                (letrec*
                                                 ((x7727
                                                   (begin
                                                     (write '(funapp 1095 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1096 50))
                                                   (display "\n")
                                                   (cadr x7727)))))
                                              (begin
                                                (write '(funapp 1097 47))
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
                                                     (write '(funapp 1110 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1111 50))
                                                   (display "\n")
                                                   (cdddr x7736)))))
                                              (begin
                                                (write '(funapp 1112 47))
                                                (display "\n")
                                                (null? x7735)))))
                                           (if x-cnd7734
                                             (letrec*
                                              ((g7737
                                                (letrec*
                                                 ((x7747
                                                   (begin
                                                     (write '(funapp 1117 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7746
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7745
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7744
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7742
                                                   (letrec*
                                                    ((x7743
                                                      (begin
                                                        (write
                                                         '(funapp 1123 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1124 53))
                                                      (display "\n")
                                                      (car x7743))))
                                                  (x7740
                                                   (letrec*
                                                    ((x7741
                                                      (begin
                                                        (write
                                                         '(funapp 1127 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1128 53))
                                                      (display "\n")
                                                      (cadr x7741))))
                                                  (x7738
                                                   (letrec*
                                                    ((x7739
                                                      (begin
                                                        (write
                                                         '(funapp 1131 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1132 53))
                                                      (display "\n")
                                                      (caddr x7739)))))
                                                 (begin
                                                   (write '(funapp 1133 50))
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
                                                  (write '(funapp 1144 49))
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
                          (write '(funapp 1150 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1150 57))
                        (display "\n")
                        (assert x7751))))
                    (g7750
                     (letrec*
                      ((x-cnd7752
                        (begin
                          (write '(funapp 1153 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7752
                        #f
                        (letrec*
                         ((x-cnd7753
                           (letrec*
                            ((x7754
                              (begin
                                (write '(funapp 1158 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1158 55))
                              (display "\n")
                              (equal? x7754 e)))))
                         (if x-cnd7753
                           l
                           (letrec*
                            ((x7755
                              (begin
                                (write '(funapp 1161 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1161 55))
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7759)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (cdr x7758)))))
                      (begin
                        (write '(funapp 1172 23))
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
                                (write '(funapp 1181 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1181 61))
                              (display "\n")
                              (cdr x7763)))))
                         (begin
                           (write '(funapp 1182 26))
                           (display "\n")
                           (cdr x7762)))))
                      (begin
                        (write '(funapp 1183 23))
                        (display "\n")
                        (car x7761)))))
                   g7760)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7764
                     (begin
                       (write '(funapp 1185 53))
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
                          (write '(funapp 1189 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1189 59))
                        (display "\n")
                        (assert x7767))))
                    (g7766
                     (begin (write '(funapp 1190 28)) (display "\n") (= x 0))))
                   g7766)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1197 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7769
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1199 52))
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
                          (write '(funapp 1205 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1205 55))
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
                             (write '(funapp 1215 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7773
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 1217 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1217 55))
                              (display "\n")
                              (list? x7774)))
                           #f))))
                      (letrec*
                       ((g7775
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1220 52))
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
                                (write '(funapp 1230 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1230 61))
                              (display "\n")
                              (car x7779)))))
                         (begin
                           (write '(funapp 1231 26))
                           (display "\n")
                           (cdr x7778)))))
                      (begin
                        (write '(funapp 1232 23))
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
                           (write '(funapp 1239 58))
                           (display "\n")
                           (char<=? x7782 c)))))
                      (if x-cnd7781
                        (letrec*
                         ((x7783 #\9))
                         (begin
                           (write '(funapp 1241 48))
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
                          (write '(funapp 1248 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1248 57))
                        (display "\n")
                        (assert x7786))))
                    (g7785
                     (letrec*
                      ((x-cnd7787
                        (begin
                          (write '(funapp 1251 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7787
                        #f
                        (letrec*
                         ((x-cnd7788
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 1256 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1256 56))
                              (display "\n")
                              (eqv? x7789 k)))))
                         (if x-cnd7788
                           (begin
                             (write '(funapp 1258 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 1259 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1259 55))
                              (display "\n")
                              (assq k x7790)))))))))
                   g7785)))
               (not (lambda (x) (letrec* ((g7791 (if x #f #t))) g7791)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7792
                     (begin
                       (write '(funapp 1263 50))
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
                          (write '(funapp 1267 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1267 57))
                        (display "\n")
                        (assert x7795))))
                    (g7794
                     (letrec*
                      ((x-cnd7796
                        (begin
                          (write '(funapp 1270 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7796
                        #f
                        (letrec*
                         ((x-cnd7797
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 1275 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1275 55))
                              (display "\n")
                              (eq? x7798 e)))))
                         (if x-cnd7797
                           l
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 1278 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1278 55))
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
                                (write '(funapp 1287 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1287 61))
                              (display "\n")
                              (car x7803)))))
                         (begin
                           (write '(funapp 1288 26))
                           (display "\n")
                           (cdr x7802)))))
                      (begin
                        (write '(funapp 1289 23))
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
                          (write '(funapp 1294 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1294 57))
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
                                  (write '(funapp 1302 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7808
                                0
                                (letrec*
                                 ((x7809
                                   (letrec*
                                    ((x7810
                                      (begin
                                        (write '(funapp 1307 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1307 63))
                                      (display "\n")
                                      (rec x7810)))))
                                 (begin
                                   (write '(funapp 1308 34))
                                   (display "\n")
                                   (+ 1 x7809)))))))
                           g7807))))
                      (letrec*
                       ((g7811
                         (begin
                           (write '(funapp 1310 40))
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
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1319 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7817
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1321 52))
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
                          (write '(funapp 1327 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1327 65))
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
                             (write '(funapp 1334 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1334 58))
                           (display "\n")
                           (car x7822)))))
                      (begin
                        (write '(funapp 1335 23))
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
                          (write '(funapp 1340 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1340 57))
                        (display "\n")
                        (assert x7825))))
                    (g7824
                     (letrec*
                      ((x-cnd7826
                        (begin
                          (write '(funapp 1343 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7826
                        #f
                        (letrec*
                         ((x-cnd7827
                           (letrec*
                            ((x7828
                              (begin
                                (write '(funapp 1348 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1348 56))
                              (display "\n")
                              (equal? x7828 k)))))
                         (if x-cnd7827
                           (begin
                             (write '(funapp 1350 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7829
                              (begin
                                (write '(funapp 1351 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1351 55))
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
                          (write '(funapp 1356 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1356 55))
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
                          (write '(funapp 1361 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1361 58))
                        (display "\n")
                        (assert x7835))))
                    (g7833
                     (letrec*
                      ((x7836
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c2))))
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
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1363 63))
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
                          (write '(funapp 1370 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7839
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1372 52))
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
                          (write '(funapp 1378 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1378 62))
                        (display "\n")
                        (assert x7843))))
                    (g7841
                     (letrec*
                      ((x7844
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1379 57))
                        (display "\n")
                        (assert x7844))))
                    (g7842
                     (letrec*
                      ((x-cnd7845
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7845
                        #t
                        (letrec*
                         ((x-cnd7846
                           (begin
                             (write '(funapp 1386 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7846
                           (letrec*
                            ((g7847
                              (letrec*
                               ((x7849
                                 (begin
                                   (write '(funapp 1389 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1389 64))
                                 (display "\n")
                                 (f x7849))))
                             (g7848
                              (letrec*
                               ((x7850
                                 (begin
                                   (write '(funapp 1391 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1391 58))
                                 (display "\n")
                                 (for-each f x7850)))))
                            g7848)
                           (begin
                             (write '(funapp 1393 27))
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
                          (write '(funapp 1398 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1398 59))
                        (display "\n")
                        (assert x7853))))
                    (g7852
                     (letrec*
                      ((x-cnd7854
                        (begin
                          (write '(funapp 1400 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7854
                        (begin
                          (write '(funapp 1400 67))
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
                          (write '(funapp 1405 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1405 58))
                        (display "\n")
                        (assert x7858))))
                    (g7856
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7859))))
                    (g7857
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1409 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7860
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1411 52))
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
                                (write '(funapp 1421 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1421 61))
                              (display "\n")
                              (cdr x7864)))))
                         (begin
                           (write '(funapp 1422 26))
                           (display "\n")
                           (cdr x7863)))))
                      (begin
                        (write '(funapp 1423 23))
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
                             (write '(funapp 1431 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1431 58))
                           (display "\n")
                           (abs x7869))))
                       (x7867
                        (begin
                          (write '(funapp 1432 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1433 23))
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
                          (write '(funapp 1439 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1439 59))
                        (display "\n")
                        (assert x7872))))
                    (g7871
                     (letrec*
                      ((x7873
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1440 56))
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
                          (write '(funapp 1445 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1445 57))
                        (display "\n")
                        (assert x7878))))
                    (g7875
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1446 63))
                        (display "\n")
                        (assert x7879))))
                    (g7876
                     (letrec*
                      ((x7880
                        (letrec*
                         ((x7881
                           (begin
                             (write '(funapp 1449 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1449 61))
                           (display "\n")
                           (< index x7881)))))
                      (begin
                        (write '(funapp 1450 23))
                        (display "\n")
                        (assert x7880))))
                    (g7877
                     (letrec*
                      ((x-cnd7882
                        (begin
                          (write '(funapp 1453 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7882
                        (begin
                          (write '(funapp 1455 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7884
                           (begin
                             (write '(funapp 1457 34))
                             (display "\n")
                             (cdr l)))
                          (x7883
                           (begin
                             (write '(funapp 1457 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1458 26))
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
                          (write '(funapp 1465 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7886
                        a
                        (letrec*
                         ((x7887
                           (begin
                             (write '(funapp 1468 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1468 57))
                           (display "\n")
                           (gcd b x7887)))))))
                   g7885)))
               (Y
                (lambda (f)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7905
                        (begin (write '(funapp 1475 31)) (display "\n") (y)))
                       (x7889
                        (letrec*
                         ((x7890
                           (letrec*
                            ((x7898
                              (letrec*
                               ((x7904
                                 (begin
                                   (write '(funapp 1482 40))
                                   (display "\n")
                                   (x)))
                                (x7899
                                 (letrec*
                                  ((x7900
                                    (letrec*
                                     ((x7903
                                       (begin
                                         (write '(funapp 1487 46))
                                         (display "\n")
                                         (z)))
                                      (x7901
                                       (letrec*
                                        ((x7902
                                          (begin
                                            (write '(funapp 1489 57))
                                            (display "\n")
                                            (x x))))
                                        (begin
                                          (write '(funapp 1489 65))
                                          (display "\n")
                                          (x7902 z)))))
                                     (begin
                                       (write '(funapp 1490 38))
                                       (display "\n")
                                       (λ x7903 x7901)))))
                                  (begin
                                    (write '(funapp 1491 35))
                                    (display "\n")
                                    (f x7900)))))
                               (begin
                                 (write '(funapp 1492 32))
                                 (display "\n")
                                 (λ x7904 x7899))))
                             (x7891
                              (letrec*
                               ((x7897
                                 (begin
                                   (write '(funapp 1495 40))
                                   (display "\n")
                                   (x)))
                                (x7892
                                 (letrec*
                                  ((x7893
                                    (letrec*
                                     ((x7896
                                       (begin
                                         (write '(funapp 1500 46))
                                         (display "\n")
                                         (z)))
                                      (x7894
                                       (letrec*
                                        ((x7895
                                          (begin
                                            (write '(funapp 1502 57))
                                            (display "\n")
                                            (x x))))
                                        (begin
                                          (write '(funapp 1502 65))
                                          (display "\n")
                                          (x7895 z)))))
                                     (begin
                                       (write '(funapp 1503 38))
                                       (display "\n")
                                       (λ x7896 x7894)))))
                                  (begin
                                    (write '(funapp 1504 35))
                                    (display "\n")
                                    (f x7893)))))
                               (begin
                                 (write '(funapp 1505 32))
                                 (display "\n")
                                 (λ x7897 x7892)))))
                            (begin
                              (write '(funapp 1506 29))
                              (display "\n")
                              (x7898 x7891)))))
                         (begin
                           (write '(funapp 1507 26))
                           (display "\n")
                           (x7890 y)))))
                      (begin
                        (write '(funapp 1508 23))
                        (display "\n")
                        (λ x7905 x7889)))))
                   g7888)))
               (last
                (lambda (l)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((x7907
                        (letrec*
                         ((x7908
                           (letrec*
                            ((x7915
                              (begin
                                (write '(funapp 1519 37))
                                (display "\n")
                                (f)))
                             (x7909
                              (letrec*
                               ((x7914
                                 (begin
                                   (write '(funapp 1522 40))
                                   (display "\n")
                                   (x)))
                                (x7910
                                 (letrec*
                                  ((x-cnd7911
                                    (letrec*
                                     ((x7912
                                       (begin
                                         (write '(funapp 1527 46))
                                         (display "\n")
                                         (cdr x))))
                                     (begin
                                       (write '(funapp 1528 38))
                                       (display "\n")
                                       (empty? x7912)))))
                                  (if x-cnd7911
                                    (begin
                                      (write '(funapp 1530 37))
                                      (display "\n")
                                      (car x))
                                    (letrec*
                                     ((x7913
                                       (begin
                                         (write '(funapp 1531 54))
                                         (display "\n")
                                         (cdr x))))
                                     (begin
                                       (write '(funapp 1531 64))
                                       (display "\n")
                                       (f x7913)))))))
                               (begin
                                 (write '(funapp 1532 32))
                                 (display "\n")
                                 (λ x7914 x7910)))))
                            (begin
                              (write '(funapp 1533 29))
                              (display "\n")
                              (λ x7915 x7909)))))
                         (begin
                           (write '(funapp 1534 26))
                           (display "\n")
                           (Y x7908)))))
                      (begin
                        (write '(funapp 1535 23))
                        (display "\n")
                        (x7907 l)))))
                   g7906))))
              (letrec*
               ((g7916
                 (letrec*
                  ((x7918
                    (letrec*
                     ((xj7349
                       (letrec*
                        ((x7919
                          (begin
                            (write '(funapp 1542 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 1542 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1542 61))
                             (display "\n")
                             'module)
                           x7919))))
                      (xk7350
                       (letrec*
                        ((x7920
                          (begin
                            (write '(funapp 1544 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 1544 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1544 54))
                             (display "\n")
                             'importer)
                           x7920)))))
                     (letrec*
                      ((g7921
                        (begin
                          (write '(funapp 1547 25))
                          (display "\n")
                          ((lambda (j7352 k7353 f7354)
                             (letrec*
                              ((g7922
                                (lambda (g7351)
                                  (letrec*
                                   ((g7923
                                     (letrec*
                                      ((x7924
                                        (letrec*
                                         ((x7925
                                           (letrec*
                                            ((x7926
                                              (letrec*
                                               ((x7927
                                                 (begin
                                                   (write '(funapp 1560 54))
                                                   (display "\n")
                                                   (listof any/c))))
                                               (begin
                                                 (write '(funapp 1561 46))
                                                 (display "\n")
                                                 (cons/c any/c x7927)))))
                                            (begin
                                              (write '(funapp 1562 43))
                                              (display "\n")
                                              (x7926 j7352 k7353 g7351)))))
                                         (begin
                                           (write '(funapp 1563 40))
                                           (display "\n")
                                           (f7354 x7925)))))
                                      (begin
                                        (write '(funapp 1564 37))
                                        (display "\n")
                                        (any/c j7352 k7353 x7924)))))
                                   g7923))))
                              g7922))
                           xj7349
                           xk7350
                           last))))
                      g7921)))
                   (x7917 (input)))
                  (begin
                    (write '(funapp 1572 19))
                    (display "\n")
                    (x7918 x7917)))))
               g7916))))
           g7368))))
       g7366)))
    g7365)))
